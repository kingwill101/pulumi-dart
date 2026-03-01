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
    pulumi.Output<String>? quotaCode,
    pulumi.Output<String>? quotaName,
    pulumi.Output<String>? region,
    required pulumi.Output<String> serviceCode,
  }) :
      quotaCode = pulumi.Input.asOptionalInput<String>(quotaCode),
      quotaName = pulumi.Input.asOptionalInput<String>(quotaName),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceCode = pulumi.Input.asInput<String>(serviceCode);

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
      quotaCode: map['quotaCode'] == null ? null : pulumi.Output.create<String>(map['quotaCode'] as String),
      quotaName: map['quotaName'] == null ? null : pulumi.Output.create<String>(map['quotaName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceCode: pulumi.Output.create<String>(map['serviceCode'] as String),
    );
  }
}

