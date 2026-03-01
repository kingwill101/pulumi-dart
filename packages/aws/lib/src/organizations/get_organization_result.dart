// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_account.dart';
import 'get_organization_non_master_account.dart';
import 'get_organization_root.dart';

/// Result data returned by getOrganization.
class GetOrganizationResult {
  /// List of organization accounts including the master account. For a list excluding the master account, see the `non_master_accounts` attribute. All elements have these attributes:
  final List<GetOrganizationAccount> accounts;

  /// ARN of the root.
  final String arn;

  /// A list of AWS service principal names that have integration enabled with your organization. Organization must have `feature_set` set to `ALL`. For additional information, see the [AWS Organizations User Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html).
  final List<String> awsServiceAccessPrincipals;

  /// A list of Organizations policy types that are enabled in the Organization Root. Organization must have `feature_set` set to `ALL`. For additional information about valid policy types (e.g., `SERVICE_CONTROL_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html).
  final List<String> enabledPolicyTypes;

  /// FeatureSet of the organization.
  final String featureSet;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN of the account that is designated as the master account for the organization.
  final String masterAccountArn;

  /// The email address that is associated with the AWS account that is designated as the master account for the organization.
  final String masterAccountEmail;

  /// Unique identifier (ID) of the master account of an organization.
  final String masterAccountId;

  /// Name of the master account of an organization.
  final String masterAccountName;

  /// List of organization accounts excluding the master account. For a list including the master account, see the `accounts` attribute. All elements have these attributes:
  final List<GetOrganizationNonMasterAccount> nonMasterAccounts;
  final bool? returnOrganizationOnly;

  /// List of organization roots. All elements have these attributes:
  final List<GetOrganizationRoot> roots;

  /// Creates a new [GetOrganizationResult].
  /// [accounts] List of organization accounts including the master account. For a list excluding the master account, see the `non_master_accounts` attribute. All elements have these attributes:
  /// [arn] ARN of the root.
  /// [awsServiceAccessPrincipals] A list of AWS service principal names that have integration enabled with your organization. Organization must have `feature_set` set to `ALL`. For additional information, see the [AWS Organizations User Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html).
  /// [enabledPolicyTypes] A list of Organizations policy types that are enabled in the Organization Root. Organization must have `feature_set` set to `ALL`. For additional information about valid policy types (e.g., `SERVICE_CONTROL_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html).
  /// [featureSet] FeatureSet of the organization.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [masterAccountArn] ARN of the account that is designated as the master account for the organization.
  /// [masterAccountEmail] The email address that is associated with the AWS account that is designated as the master account for the organization.
  /// [masterAccountId] Unique identifier (ID) of the master account of an organization.
  /// [masterAccountName] Name of the master account of an organization.
  /// [nonMasterAccounts] List of organization accounts excluding the master account. For a list including the master account, see the `accounts` attribute. All elements have these attributes:
  /// [returnOrganizationOnly] Optional.
  /// [roots] List of organization roots. All elements have these attributes:
  GetOrganizationResult({
    required this.accounts,
    required this.arn,
    required this.awsServiceAccessPrincipals,
    required this.enabledPolicyTypes,
    required this.featureSet,
    required this.id,
    required this.masterAccountArn,
    required this.masterAccountEmail,
    required this.masterAccountId,
    required this.masterAccountName,
    required this.nonMasterAccounts,
    this.returnOrganizationOnly,
    required this.roots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts':
          pulumi.Input.encodeList<GetOrganizationAccount, Map<String, dynamic>>(
            accounts,
            (value) => value.toMap(),
          ),
      'arn': arn,
      'awsServiceAccessPrincipals': awsServiceAccessPrincipals,
      'enabledPolicyTypes': enabledPolicyTypes,
      'featureSet': featureSet,
      'id': id,
      'masterAccountArn': masterAccountArn,
      'masterAccountEmail': masterAccountEmail,
      'masterAccountId': masterAccountId,
      'masterAccountName': masterAccountName,
      'nonMasterAccounts':
          pulumi.Input.encodeList<
            GetOrganizationNonMasterAccount,
            Map<String, dynamic>
          >(nonMasterAccounts, (value) => value.toMap()),
      'returnOrganizationOnly': ?returnOrganizationOnly,
      'roots':
          pulumi.Input.encodeList<GetOrganizationRoot, Map<String, dynamic>>(
            roots,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      accounts: pulumi.Input.decodeList<GetOrganizationAccount>(
        map['accounts'],
        (value) => GetOrganizationAccount.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      arn: map['arn'] as String,
      awsServiceAccessPrincipals: (map['awsServiceAccessPrincipals'] as List)
          .cast<String>(),
      enabledPolicyTypes: (map['enabledPolicyTypes'] as List).cast<String>(),
      featureSet: map['featureSet'] as String,
      id: map['id'] as String,
      masterAccountArn: map['masterAccountArn'] as String,
      masterAccountEmail: map['masterAccountEmail'] as String,
      masterAccountId: map['masterAccountId'] as String,
      masterAccountName: map['masterAccountName'] as String,
      nonMasterAccounts:
          pulumi.Input.decodeList<GetOrganizationNonMasterAccount>(
            map['nonMasterAccounts'],
            (value) => GetOrganizationNonMasterAccount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      returnOrganizationOnly: map['returnOrganizationOnly'] == null
          ? null
          : map['returnOrganizationOnly'] as bool,
      roots: pulumi.Input.decodeList<GetOrganizationRoot>(
        map['roots'],
        (value) =>
            GetOrganizationRoot.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
