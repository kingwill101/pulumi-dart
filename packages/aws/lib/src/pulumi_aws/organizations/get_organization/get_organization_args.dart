// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganization.
class GetOrganizationArgs {
  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> only the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>, <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span>, <span pulumi-lang-nodejs="`masterAccountArn`" pulumi-lang-dotnet="`MasterAccountArn`" pulumi-lang-go="`masterAccountArn`" pulumi-lang-python="`master_account_arn`" pulumi-lang-yaml="`masterAccountArn`" pulumi-lang-java="`masterAccountArn`">`master_account_arn`</span>, <span pulumi-lang-nodejs="`masterAccountEmail`" pulumi-lang-dotnet="`MasterAccountEmail`" pulumi-lang-go="`masterAccountEmail`" pulumi-lang-python="`master_account_email`" pulumi-lang-yaml="`masterAccountEmail`" pulumi-lang-java="`masterAccountEmail`">`master_account_email`</span> and <span pulumi-lang-nodejs="`masterAccountId`" pulumi-lang-dotnet="`MasterAccountId`" pulumi-lang-go="`masterAccountId`" pulumi-lang-python="`master_account_id`" pulumi-lang-yaml="`masterAccountId`" pulumi-lang-java="`masterAccountId`">`master_account_id`</span> attributes will be returned. All others will be empty. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? returnOrganizationOnly;

  GetOrganizationArgs({
    this.returnOrganizationOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final returnOrganizationOnlyValue = returnOrganizationOnly;
    if (returnOrganizationOnlyValue != null) {
      map['returnOrganizationOnly'] = returnOrganizationOnlyValue;
    }
    return map;
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      returnOrganizationOnly:
          Input.asOptionalInput<bool>(map['returnOrganizationOnly']),
    );
  }
}
