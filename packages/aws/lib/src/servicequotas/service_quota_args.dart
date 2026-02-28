// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_service_quota_service_quota_args_doc}
/// The set of arguments for ServiceQuota.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_service_quota_service_quota_args_doc}
class ServiceQuotaArgs {
  /// Code of the service quota to track. For example: `L-F678F1CE`. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html).
  final pulumi.Input<String> quotaCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Code of the service to track. For example: `vpc`. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  final pulumi.Input<String> serviceCode;

  /// Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.
  final pulumi.Input<double> value;

  /// Creates a new [ServiceQuotaArgs].
  /// [quotaCode] Code of the service quota to track. For example: `L-F678F1CE`. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceCode] Code of the service to track. For example: `vpc`. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  /// [value] Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.
  ServiceQuotaArgs({
    required String quotaCode,
    String? region,
    required String serviceCode,
    required double value,
  })  : quotaCode = pulumi.Input.asInput<String>(quotaCode),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceCode = pulumi.Input.asInput<String>(serviceCode),
        value = pulumi.Input.asInput<double>(value);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['quotaCode'] = quotaCode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceCode'] = serviceCode;
    map['value'] = value;
    return map;
  }

  factory ServiceQuotaArgs.fromMap(Map<String, dynamic> map) {
    return ServiceQuotaArgs(
      quotaCode: map['quotaCode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceCode: map['serviceCode'] as String,
      value: map['value'] as double,
    );
  }
}
