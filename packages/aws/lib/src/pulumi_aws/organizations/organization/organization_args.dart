// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Organization.
class OrganizationArgs {
  /// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `feature_set` set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  final Input<List<String>>? awsServiceAccessPrincipals;

  /// List of Organizations policy types to enable in the Organization Root. Organization must have `feature_set` set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, `aws_service_access_principals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `aws_service_access_principals` must include `securityhub.amazonaws.com`.
  final Input<List<String>>? enabledPolicyTypes;

  /// Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  final Input<String>? featureSet;

  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty. Default: `false`.
  final Input<bool>? returnOrganizationOnly;

  OrganizationArgs({
    this.awsServiceAccessPrincipals,
    this.enabledPolicyTypes,
    this.featureSet,
    this.returnOrganizationOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsServiceAccessPrincipalsValue = awsServiceAccessPrincipals;
    if (awsServiceAccessPrincipalsValue != null) {
      map['awsServiceAccessPrincipals'] = awsServiceAccessPrincipalsValue;
    }
    final enabledPolicyTypesValue = enabledPolicyTypes;
    if (enabledPolicyTypesValue != null) {
      map['enabledPolicyTypes'] = enabledPolicyTypesValue;
    }
    final featureSetValue = featureSet;
    if (featureSetValue != null) {
      map['featureSet'] = featureSetValue;
    }
    final returnOrganizationOnlyValue = returnOrganizationOnly;
    if (returnOrganizationOnlyValue != null) {
      map['returnOrganizationOnly'] = returnOrganizationOnlyValue;
    }
    return map;
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      awsServiceAccessPrincipals: Input.asOptionalInput<List<String>>(
          map['awsServiceAccessPrincipals']),
      enabledPolicyTypes:
          Input.asOptionalInput<List<String>>(map['enabledPolicyTypes']),
      featureSet: Input.asOptionalInput<String>(map['featureSet']),
      returnOrganizationOnly:
          Input.asOptionalInput<bool>(map['returnOrganizationOnly']),
    );
  }
}
