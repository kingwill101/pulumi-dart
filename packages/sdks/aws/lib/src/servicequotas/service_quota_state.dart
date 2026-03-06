// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_quota_usage_metric.dart';

/// Input properties used for looking up and filtering ServiceQuota resources.
class ServiceQuotaState {
  /// Whether the service quota can be increased.
  final pulumi.Input<bool>? adjustable;
  /// Amazon Resource Name (ARN) of the service quota.
  final pulumi.Input<String>? arn;
  /// Default value of the service quota.
  final pulumi.Input<double>? defaultValue;
  /// Code of the service quota to track. For example: `L-F678F1CE`. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html).
  final pulumi.Input<String>? quotaCode;
  /// Name of the quota.
  final pulumi.Input<String>? quotaName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String>? requestStatus;
  /// Code of the service to track. For example: `vpc`. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  final pulumi.Input<String>? serviceCode;
  /// Name of the service.
  final pulumi.Input<String>? serviceName;
  /// Information about the measurement.
  final pulumi.Input<List<ServiceQuotaUsageMetric>>? usageMetrics;
  /// Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.
  final pulumi.Input<double>? value;

  /// Creates a new [ServiceQuotaState].
  /// [adjustable] Whether the service quota can be increased.
  /// [arn] Amazon Resource Name (ARN) of the service quota.
  /// [defaultValue] Default value of the service quota.
  /// [quotaCode] Code of the service quota to track. For example: `L-F678F1CE`. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html).
  /// [quotaName] Name of the quota.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestId] Optional.
  /// [requestStatus] Optional.
  /// [serviceCode] Code of the service to track. For example: `vpc`. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  /// [serviceName] Name of the service.
  /// [usageMetrics] Information about the measurement.
  /// [value] Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.
  const ServiceQuotaState({
    this.adjustable,
    this.arn,
    this.defaultValue,
    this.quotaCode,
    this.quotaName,
    this.region,
    this.requestId,
    this.requestStatus,
    this.serviceCode,
    this.serviceName,
    this.usageMetrics,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustable': ?adjustable,
      'arn': ?arn,
      'defaultValue': ?defaultValue,
      'quotaCode': ?quotaCode,
      'quotaName': ?quotaName,
      'region': ?region,
      'requestId': ?requestId,
      'requestStatus': ?requestStatus,
      'serviceCode': ?serviceCode,
      'serviceName': ?serviceName,
      'usageMetrics': ?pulumi.Input.mapOptionalInputValue<List<ServiceQuotaUsageMetric>, List<Map<String, dynamic>>>(usageMetrics, (value) => pulumi.Input.encodeList<ServiceQuotaUsageMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
    };
  }

  factory ServiceQuotaState.fromMap(Map<String, dynamic> map) {
    return ServiceQuotaState(
      adjustable: (() { final guardedValue = map['adjustable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      quotaCode: (() { final guardedValue = map['quotaCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaName: (() { final guardedValue = map['quotaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestStatus: (() { final guardedValue = map['requestStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceCode: (() { final guardedValue = map['serviceCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageMetrics: (() { final guardedValue = map['usageMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceQuotaUsageMetric>(guardedValue, (value) => ServiceQuotaUsageMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

