// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_account.dart';
import 'organization_non_master_account.dart';
import 'organization_root.dart';

/// Input properties used for looking up and filtering Organization resources.
class OrganizationState {
  /// List of organization accounts including the master account. For a list excluding the master account, see the `non_master_accounts` attribute. All elements have these attributes:
  final pulumi.Input<List<OrganizationAccount>>? accounts;
  /// ARN of the root.
  final pulumi.Input<String>? arn;
  /// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `feature_set` set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  final pulumi.Input<List<String>>? awsServiceAccessPrincipals;
  /// List of Organizations policy types to enable in the Organization Root. Organization must have `feature_set` set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, `aws_service_access_principals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `aws_service_access_principals` must include `securityhub.amazonaws.com`.
  final pulumi.Input<List<String>>? enabledPolicyTypes;
  /// Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  final pulumi.Input<String>? featureSet;
  /// ARN of the master account.
  final pulumi.Input<String>? masterAccountArn;
  /// Email address of the master account.
  final pulumi.Input<String>? masterAccountEmail;
  /// Identifier of the master account.
  final pulumi.Input<String>? masterAccountId;
  /// Name of the master account.
  final pulumi.Input<String>? masterAccountName;
  /// List of organization accounts excluding the master account. For a list including the master account, see the `accounts` attribute. All elements have these attributes:
  final pulumi.Input<List<OrganizationNonMasterAccount>>? nonMasterAccounts;
  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty. Default: `false`.
  final pulumi.Input<bool>? returnOrganizationOnly;
  /// List of organization roots. All elements have these attributes:
  final pulumi.Input<List<OrganizationRoot>>? roots;

  /// Creates a new [OrganizationState].
  /// [accounts] List of organization accounts including the master account. For a list excluding the master account, see the `non_master_accounts` attribute. All elements have these attributes:
  /// [arn] ARN of the root.
  /// [awsServiceAccessPrincipals] List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `feature_set` set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  /// [enabledPolicyTypes] List of Organizations policy types to enable in the Organization Root. Organization must have `feature_set` set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, `aws_service_access_principals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `aws_service_access_principals` must include `securityhub.amazonaws.com`.
  /// [featureSet] Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  /// [masterAccountArn] ARN of the master account.
  /// [masterAccountEmail] Email address of the master account.
  /// [masterAccountId] Identifier of the master account.
  /// [masterAccountName] Name of the master account.
  /// [nonMasterAccounts] List of organization accounts excluding the master account. For a list including the master account, see the `accounts` attribute. All elements have these attributes:
  /// [returnOrganizationOnly] Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty. Default: `false`.
  /// [roots] List of organization roots. All elements have these attributes:
  const OrganizationState({
    this.accounts,
    this.arn,
    this.awsServiceAccessPrincipals,
    this.enabledPolicyTypes,
    this.featureSet,
    this.masterAccountArn,
    this.masterAccountEmail,
    this.masterAccountId,
    this.masterAccountName,
    this.nonMasterAccounts,
    this.returnOrganizationOnly,
    this.roots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?pulumi.Input.mapOptionalInputValue<List<OrganizationAccount>, List<Map<String, dynamic>>>(accounts, (value) => pulumi.Input.encodeList<OrganizationAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'awsServiceAccessPrincipals': ?awsServiceAccessPrincipals,
      'enabledPolicyTypes': ?enabledPolicyTypes,
      'featureSet': ?featureSet,
      'masterAccountArn': ?masterAccountArn,
      'masterAccountEmail': ?masterAccountEmail,
      'masterAccountId': ?masterAccountId,
      'masterAccountName': ?masterAccountName,
      'nonMasterAccounts': ?pulumi.Input.mapOptionalInputValue<List<OrganizationNonMasterAccount>, List<Map<String, dynamic>>>(nonMasterAccounts, (value) => pulumi.Input.encodeList<OrganizationNonMasterAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'returnOrganizationOnly': ?returnOrganizationOnly,
      'roots': ?pulumi.Input.mapOptionalInputValue<List<OrganizationRoot>, List<Map<String, dynamic>>>(roots, (value) => pulumi.Input.encodeList<OrganizationRoot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationState.fromMap(Map<String, dynamic> map) {
    return OrganizationState(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationAccount>(guardedValue, (value) => OrganizationAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsServiceAccessPrincipals: (() { final guardedValue = map['awsServiceAccessPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabledPolicyTypes: (() { final guardedValue = map['enabledPolicyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      featureSet: (() { final guardedValue = map['featureSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountArn: (() { final guardedValue = map['masterAccountArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountEmail: (() { final guardedValue = map['masterAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountId: (() { final guardedValue = map['masterAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountName: (() { final guardedValue = map['masterAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonMasterAccounts: (() { final guardedValue = map['nonMasterAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationNonMasterAccount>(guardedValue, (value) => OrganizationNonMasterAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      returnOrganizationOnly: (() { final guardedValue = map['returnOrganizationOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roots: (() { final guardedValue = map['roots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationRoot>(guardedValue, (value) => OrganizationRoot.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

