// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_organization_organization_args_doc}
/// The set of arguments for Organization.
/// {@endtemplate}
/// {@macro pulumi_organizations_organization_organization_args_doc}
class OrganizationArgs {
  /// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `featureSet` set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  final pulumi.Input<List<String>?>? awsServiceAccessPrincipals;
  /// List of Organizations policy types to enable in the Organization Root. Organization must have `featureSet` set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, `awsServiceAccessPrincipals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `awsServiceAccessPrincipals` must include `securityhub.amazonaws.com`.
  final pulumi.Input<List<String>?>? enabledPolicyTypes;
  /// Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  final pulumi.Input<String?>? featureSet;
  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `featureSet`, `masterAccountArn`, `masterAccountEmail` and `masterAccountId` attributes will be returned. All others will be empty. Default: `false`.
  final pulumi.Input<bool?>? returnOrganizationOnly;

  /// Creates a new [OrganizationArgs].
  /// [awsServiceAccessPrincipals] List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `featureSet` set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  /// [enabledPolicyTypes] List of Organizations policy types to enable in the Organization Root. Organization must have `featureSet` set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, `awsServiceAccessPrincipals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `awsServiceAccessPrincipals` must include `securityhub.amazonaws.com`.
  /// [featureSet] Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  /// [returnOrganizationOnly] Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `featureSet`, `masterAccountArn`, `masterAccountEmail` and `masterAccountId` attributes will be returned. All others will be empty. Default: `false`.
  const OrganizationArgs({
    this.awsServiceAccessPrincipals,
    this.enabledPolicyTypes,
    this.featureSet,
    this.returnOrganizationOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsServiceAccessPrincipals': ?awsServiceAccessPrincipals,
      'enabledPolicyTypes': ?enabledPolicyTypes,
      'featureSet': ?featureSet,
      'returnOrganizationOnly': ?returnOrganizationOnly,
    };
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      awsServiceAccessPrincipals: (() { final guardedValue = map['awsServiceAccessPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabledPolicyTypes: (() { final guardedValue = map['enabledPolicyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      featureSet: (() { final guardedValue = map['featureSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      returnOrganizationOnly: (() { final guardedValue = map['returnOrganizationOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
