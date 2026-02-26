// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Organization.
class OrganizationArgs {
  /// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span> set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  final Input<List<String>>? awsServiceAccessPrincipals;

  /// List of Organizations policy types to enable in the Organization Root. Organization must have <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span> set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, <span pulumi-lang-nodejs="`awsServiceAccessPrincipals`" pulumi-lang-dotnet="`AwsServiceAccessPrincipals`" pulumi-lang-go="`awsServiceAccessPrincipals`" pulumi-lang-python="`aws_service_access_principals`" pulumi-lang-yaml="`awsServiceAccessPrincipals`" pulumi-lang-java="`awsServiceAccessPrincipals`">`aws_service_access_principals`</span> must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, <span pulumi-lang-nodejs="`awsServiceAccessPrincipals`" pulumi-lang-dotnet="`AwsServiceAccessPrincipals`" pulumi-lang-go="`awsServiceAccessPrincipals`" pulumi-lang-python="`aws_service_access_principals`" pulumi-lang-yaml="`awsServiceAccessPrincipals`" pulumi-lang-java="`awsServiceAccessPrincipals`">`aws_service_access_principals`</span> must include `securityhub.amazonaws.com`.
  final Input<List<String>>? enabledPolicyTypes;

  /// Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  final Input<String>? featureSet;

  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> only the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>, <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span>, <span pulumi-lang-nodejs="`masterAccountArn`" pulumi-lang-dotnet="`MasterAccountArn`" pulumi-lang-go="`masterAccountArn`" pulumi-lang-python="`master_account_arn`" pulumi-lang-yaml="`masterAccountArn`" pulumi-lang-java="`masterAccountArn`">`master_account_arn`</span>, <span pulumi-lang-nodejs="`masterAccountEmail`" pulumi-lang-dotnet="`MasterAccountEmail`" pulumi-lang-go="`masterAccountEmail`" pulumi-lang-python="`master_account_email`" pulumi-lang-yaml="`masterAccountEmail`" pulumi-lang-java="`masterAccountEmail`">`master_account_email`</span> and <span pulumi-lang-nodejs="`masterAccountId`" pulumi-lang-dotnet="`MasterAccountId`" pulumi-lang-go="`masterAccountId`" pulumi-lang-python="`master_account_id`" pulumi-lang-yaml="`masterAccountId`" pulumi-lang-java="`masterAccountId`">`master_account_id`</span> attributes will be returned. All others will be empty. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
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
