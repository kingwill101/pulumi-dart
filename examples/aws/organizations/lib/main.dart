import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

const nonAutomationUserAssumeRoleName = 'DeveloperRole';
const automationUserAssumeRoleName = 'AutomationRole';

String buildMonthlyBackupPolicyJson({
  required String backupRegion,
  required List<String> primaryRegions,
  required String monthlyBackupPolicyIamRoleName,
}) {
  final backupVaultCopyAction = {
    'arn:aws:backup:$backupRegion:\$account:backup-vault:Default': {
      'target_backup_vault_arn': {
        '@@assign':
            'arn:aws:backup:$backupRegion:\$account:backup-vault:Default',
      },
      'lifecycle': {
        'move_to_cold_storage_after_days': {'@@assign': '30'},
        'delete_after_days': {'@@assign': '365'},
      },
    },
  };

  return jsonEncode({
    'plans': {
      'Monthly_Backup_Plan': {
        'regions': {'@@assign': primaryRegions},
        'rules': {
          'Monthly': {
            'schedule_expression': {'@@assign': 'cron(0 5 1 * ? *)'},
            'start_backup_window_minutes': {'@@assign': '480'},
            'target_backup_vault_name': {'@@assign': 'Default'},
            'lifecycle': {
              'move_to_cold_storage_after_days': {'@@assign': '30'},
              'delete_after_days': {'@@assign': '365'},
            },
            'copy_actions': backupVaultCopyAction,
          },
        },
        'selections': {
          'tags': {
            'Backup_Assignment': {
              'iam_role_arn': {
                '@@assign':
                    'arn:aws:iam::\$account:role/$monthlyBackupPolicyIamRoleName',
              },
              'tag_key': {'@@assign': 'BackupType'},
              'tag_value': {
                '@@assign': ['MONTHLY'],
              },
            },
          },
        },
      },
    },
  });
}

Future<void> run() async {
  final config = pulumi.Config();
  final devAccountEmailContact = config.require('devAccountEmailContact');

  final organization = await aws.organizations.getOrganization(
    aws.organizations.GetOrganizationArgs(),
  );
  final orgRootId = organization.roots[0].id;

  const initialRoleName = 'OrganizationalAccountAccessRole';

  final devOrgUnit = aws.organizations.OrganizationalUnit(
    'orgUnit',
    args: aws.organizations.OrganizationalUnitArgs(
      parentId: orgRootId.input(),
      name: 'Development'.input(),
    ),
  );

  final devAccount = aws.organizations.Account(
    'devAccount',
    args: aws.organizations.AccountArgs(
      name: 'DeveloperAccount'.input(),
      parentId: devOrgUnit.id,
      email: devAccountEmailContact.input(),
      roleName: initialRoleName.input(),
      closeOnDeletion: true.input(),
    ),
    options: pulumi.CustomResourceOptions(protect: true),
  );

  final devGroup = aws.iam.Group(
    'developers',
    args: aws.iam.GroupArgs(name: 'developers'.input()),
  );

  aws.iam.GroupPolicy(
    'developersGroupPolicy',
    args: aws.iam.GroupPolicyArgs(
      group: devGroup.name,
      policy: jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Action': 'sts:AssumeRole',
            'Resource':
                'arn:aws:iam::*:role/$nonAutomationUserAssumeRoleName',
          },
        ],
      }).input(),
    ),
  );

  final automationUser = aws.iam.User(
    'automationUser',
    args: aws.iam.UserArgs(name: 'cicd-automation'.input()),
  );

  aws.iam.UserPolicy(
    'automationUserPolicy',
    args: aws.iam.UserPolicyArgs(
      user: automationUser.name,
      policy: jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Action': 'sts:AssumeRole',
            'Resource': 'arn:aws:iam::*:role/$automationUserAssumeRoleName',
          },
        ],
      }).input(),
    ),
  );

  final devAccountProvider = aws.ProviderProvider(
    'devAccountProvider',
    args: aws.providers.ProviderArgs(
      allowedAccountIds: [devAccount.id].input(),
      assumeRoles: [
        aws.index.ProviderAssumeRole(
          roleArn: devAccount.id.apply(
            (id) => 'arn:aws:iam::$id:role/$initialRoleName',
          ),
        ),
      ].input(),
    ),
  );

  final callerIdentity = await aws.index.getCallerIdentity(
    aws.index.GetCallerIdentityArgs(),
  );
  final managementAccountId = callerIdentity.accountId;

  final devBoundaryPolicy = aws.iam.Policy(
    'devDevBoundary',
    args: aws.iam.PolicyArgs(
      policy: jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Action': ['s3:*', 'cloudwatch:*', 'dynamodb:*', 'ec2:*'],
            'Resource': '*',
          },
        ],
      }).input(),
    ),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  final devRole = aws.iam.Role(
    'devDevRole',
    args: aws.iam.RoleArgs(
      name: nonAutomationUserAssumeRoleName.input(),
      assumeRolePolicy: jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Principal': {'AWS': 'arn:aws:iam::$managementAccountId:root'},
            'Action': 'sts:AssumeRole',
          },
        ],
      }).input(),
      permissionsBoundary: devBoundaryPolicy.arn,
    ),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  aws.iam.RolePolicyAttachment(
    'devRPAttach',
    args: aws.iam.RolePolicyAttachmentArgs(
      role: devRole.name,
      policyArn: devBoundaryPolicy.arn,
    ),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  final automationBoundaryPolicy = aws.iam.Policy(
    'devAutomationUserBoundary',
    args: aws.iam.PolicyArgs(
      policy: jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Action': ['s3:*', 'cloudwatch:*', 'ec2:*', 'dynamodb:*', 'iam:*'],
            'Resource': '*',
          },
        ],
      }).input(),
    ),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  final automationRole = aws.iam.Role(
    'devAutomationUserRole',
    args: aws.iam.RoleArgs(
      name: automationUserAssumeRoleName.input(),
      assumeRolePolicy: automationUser.arn.apply(
        (userArn) => jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'AWS': userArn},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
      permissionsBoundary: automationBoundaryPolicy.arn,
    ),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  aws.iam.RolePolicyAttachment(
    'devUserPolicyAttach',
    args: aws.iam.RolePolicyAttachmentArgs(
      role: automationRole.name,
      policyArn: automationBoundaryPolicy.arn,
    ),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  final orgTagPolicy = aws.organizations.Policy(
    'orgTagPolicy',
    args: aws.organizations.PolicyArgs(
      type: 'TAG_POLICY'.input(),
      content: jsonEncode({
        'tags': {
          'CostCenter': {
            'tag_key': {
              '@@assign': 'CostCenter',
              '@@operators_allowed_for_child_policies': ['@@none'],
            },
          },
        },
      }).input(),
    ),
  );

  aws.organizations.PolicyAttachment(
    'orgTagPolicyAttachment',
    args: aws.organizations.PolicyAttachmentArgs(
      policyId: orgTagPolicy.id,
      targetId: organization.roots[0].id.input(),
    ),
  );

  final developmentOuTagPolicy = aws.organizations.Policy(
    'DevelopmentTagPolicy',
    args: aws.organizations.PolicyArgs(
      type: 'TAG_POLICY'.input(),
      content: jsonEncode({
        'tags': {
          'CostCenter': {
            'tag_value': {
              '@@assign': ['Development', 'Testing'],
            },
          },
          'Owner': {
            'tag_key': {
              '@@assign': 'Owner',
              '@@operators_allowed_for_child_policies': ['@@none'],
            },
          },
        },
      }).input(),
    ),
  );

  aws.organizations.PolicyAttachment(
    'DevelopmentTagPolicyAttachment',
    args: aws.organizations.PolicyAttachmentArgs(
      policyId: developmentOuTagPolicy.id,
      targetId: devOrgUnit.id,
    ),
  );

  final backupRoleName = 'MyMonthlyBackupIamRole';

  aws.backup.Vault(
    'backupVault-devAccount',
    args: aws.backup.VaultArgs(name: 'Default'.input()),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  aws.iam.Role(
    'devAccountBackupPolicyRole',
    args: aws.iam.RoleArgs(
      name: backupRoleName.input(),
      assumeRolePolicy: jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Action': 'sts:AssumeRole',
            'Principal': {'Service': 'backup.amazonaws.com'},
          },
        ],
      }).input(),
      managedPolicyArns: [
        'arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup',
      ].input(),
    ),
    options: pulumi.CustomResourceOptions(provider: devAccountProvider),
  );

  final orgBackupPolicy = aws.organizations.Policy(
    'orgBackupPolicy',
    args: aws.organizations.PolicyArgs(
      type: 'BACKUP_POLICY'.input(),
      content: buildMonthlyBackupPolicyJson(
        backupRegion: 'us-east-1',
        primaryRegions: ['us-west-2'],
        monthlyBackupPolicyIamRoleName: backupRoleName,
      ).input(),
    ),
  );

  aws.organizations.PolicyAttachment(
    'orgBackupPolicyAttachment',
    args: aws.organizations.PolicyAttachmentArgs(
      policyId: orgBackupPolicy.id,
      targetId: devOrgUnit.id,
    ),
  );

  pulumi.export('organizationId', organization.id);
  pulumi.export('developmentOuId', devOrgUnit.id);
  pulumi.export('devAccountId', devAccount.id);
}
