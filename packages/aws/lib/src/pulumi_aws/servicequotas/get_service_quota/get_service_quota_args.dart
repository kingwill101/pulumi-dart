// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceQuota.
class GetServiceQuotaArgs {
  /// Quota code within the service. When configured, the data source directly looks up the service quota. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html). One of <span pulumi-lang-nodejs="`quotaCode`" pulumi-lang-dotnet="`QuotaCode`" pulumi-lang-go="`quotaCode`" pulumi-lang-python="`quota_code`" pulumi-lang-yaml="`quotaCode`" pulumi-lang-java="`quotaCode`">`quota_code`</span> or <span pulumi-lang-nodejs="`quotaName`" pulumi-lang-dotnet="`QuotaName`" pulumi-lang-go="`quotaName`" pulumi-lang-python="`quota_name`" pulumi-lang-yaml="`quotaName`" pulumi-lang-java="`quotaName`">`quota_name`</span> must be specified.
  final Input<String>? quotaCode;

  /// Quota name within the service. When configured, the data source searches through all service quotas to find the matching quota name. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html). One of <span pulumi-lang-nodejs="`quotaName`" pulumi-lang-dotnet="`QuotaName`" pulumi-lang-go="`quotaName`" pulumi-lang-python="`quota_name`" pulumi-lang-yaml="`quotaName`" pulumi-lang-java="`quotaName`">`quota_name`</span> or <span pulumi-lang-nodejs="`quotaCode`" pulumi-lang-dotnet="`QuotaCode`" pulumi-lang-go="`quotaCode`" pulumi-lang-python="`quota_code`" pulumi-lang-yaml="`quotaCode`" pulumi-lang-java="`quotaCode`">`quota_code`</span> must be specified.
  ///
  /// > *NOTE:* Either <span pulumi-lang-nodejs="`quotaCode`" pulumi-lang-dotnet="`QuotaCode`" pulumi-lang-go="`quotaCode`" pulumi-lang-python="`quota_code`" pulumi-lang-yaml="`quotaCode`" pulumi-lang-java="`quotaCode`">`quota_code`</span> or <span pulumi-lang-nodejs="`quotaName`" pulumi-lang-dotnet="`QuotaName`" pulumi-lang-go="`quotaName`" pulumi-lang-python="`quota_name`" pulumi-lang-yaml="`quotaName`" pulumi-lang-java="`quotaName`">`quota_name`</span> must be configured.
  final Input<String>? quotaName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Service code for the quota. Available values can be found with the <span pulumi-lang-nodejs="`aws.servicequotas.getService`" pulumi-lang-dotnet="`aws.servicequotas.getService`" pulumi-lang-go="`servicequotas.getService`" pulumi-lang-python="`servicequotas_get_service`" pulumi-lang-yaml="`aws.servicequotas.getService`" pulumi-lang-java="`aws.servicequotas.getService`">`aws.servicequotas.getService`</span> data source or [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  final Input<String> serviceCode;

  GetServiceQuotaArgs({
    this.quotaCode,
    this.quotaName,
    this.region,
    required this.serviceCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final quotaCodeValue = quotaCode;
    if (quotaCodeValue != null) {
      map['quotaCode'] = quotaCodeValue;
    }
    final quotaNameValue = quotaName;
    if (quotaNameValue != null) {
      map['quotaName'] = quotaNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceCode'] = serviceCode;
    return map;
  }

  factory GetServiceQuotaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceQuotaArgs(
      quotaCode: Input.asOptionalInput<String>(map['quotaCode']),
      quotaName: Input.asOptionalInput<String>(map['quotaName']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceCode: Input.asInput<String>(map['serviceCode']),
    );
  }
}
