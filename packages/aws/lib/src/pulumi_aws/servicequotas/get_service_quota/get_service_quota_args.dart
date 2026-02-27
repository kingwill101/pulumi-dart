// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceQuota.
class GetServiceQuotaArgs {
  /// Quota code within the service. When configured, the data source directly looks up the service quota. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html). One of `quota_code` or `quota_name` must be specified.
  final pulumi.Input<String>? quotaCode;

  /// Quota name within the service. When configured, the data source searches through all service quotas to find the matching quota name. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html). One of `quota_name` or `quota_code` must be specified.
  ///
  /// > *NOTE:* Either `quota_code` or `quota_name` must be configured.
  final pulumi.Input<String>? quotaName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Service code for the quota. Available values can be found with the `aws.servicequotas.getService` data source or [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  final pulumi.Input<String> serviceCode;

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
      quotaCode: pulumi.Input.asOptionalInput<String>(map['quotaCode']),
      quotaName: pulumi.Input.asOptionalInput<String>(map['quotaName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceCode: pulumi.Input.asInput<String>(map['serviceCode']),
    );
  }
}
