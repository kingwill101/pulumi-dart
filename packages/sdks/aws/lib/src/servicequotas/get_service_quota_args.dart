// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_get_service_quota_get_service_quota_args_doc}
/// Arguments for getServiceQuota.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_get_service_quota_get_service_quota_args_doc}
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

  /// Creates a new [GetServiceQuotaArgs].
  /// [quotaCode] Quota code within the service. When configured, the data source directly looks up the service quota. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html). One of `quota_code` or `quota_name` must be specified.
  /// [quotaName] Quota name within the service. When configured, the data source searches through all service quotas to find the matching quota name. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html). One of `quota_name` or `quota_code` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceCode] Service code for the quota. Available values can be found with the `aws.servicequotas.getService` data source or [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  GetServiceQuotaArgs({
    this.quotaCode,
    this.quotaName,
    this.region,
    required this.serviceCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quotaCode': ?quotaCode,
      'quotaName': ?quotaName,
      'region': ?region,
      'serviceCode': serviceCode,
    };
  }

  factory GetServiceQuotaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceQuotaArgs(
      quotaCode: map['quotaCode'] == null ? null : (map['quotaCode'] as String).input(),
      quotaName: map['quotaName'] == null ? null : (map['quotaName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceCode: (map['serviceCode'] as String).input(),
    );
  }
}

