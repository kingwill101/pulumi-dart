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
  ServiceQuotaState({
    pulumi.Output<bool>? adjustable,
    pulumi.Output<String>? arn,
    pulumi.Output<double>? defaultValue,
    pulumi.Output<String>? quotaCode,
    pulumi.Output<String>? quotaName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? requestStatus,
    pulumi.Output<String>? serviceCode,
    pulumi.Output<String>? serviceName,
    pulumi.Output<List<ServiceQuotaUsageMetric>>? usageMetrics,
    pulumi.Output<double>? value,
  }) :
      adjustable = pulumi.Input.asOptionalInput<bool>(adjustable),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultValue = pulumi.Input.asOptionalInput<double>(defaultValue),
      quotaCode = pulumi.Input.asOptionalInput<String>(quotaCode),
      quotaName = pulumi.Input.asOptionalInput<String>(quotaName),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      requestStatus = pulumi.Input.asOptionalInput<String>(requestStatus),
      serviceCode = pulumi.Input.asOptionalInput<String>(serviceCode),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      usageMetrics = pulumi.Input.asOptionalInput<List<ServiceQuotaUsageMetric>>(usageMetrics),
      value = pulumi.Input.asOptionalInput<double>(value);

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
      adjustable: map['adjustable'] == null ? null : pulumi.Output.create<bool>(map['adjustable'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultValue: map['defaultValue'] == null ? null : pulumi.Output.create<double>(map['defaultValue'] as double),
      quotaCode: map['quotaCode'] == null ? null : pulumi.Output.create<String>(map['quotaCode'] as String),
      quotaName: map['quotaName'] == null ? null : pulumi.Output.create<String>(map['quotaName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      requestStatus: map['requestStatus'] == null ? null : pulumi.Output.create<String>(map['requestStatus'] as String),
      serviceCode: map['serviceCode'] == null ? null : pulumi.Output.create<String>(map['serviceCode'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      usageMetrics: map['usageMetrics'] == null ? null : pulumi.Output.create<List<ServiceQuotaUsageMetric>>(pulumi.Input.decodeList<ServiceQuotaUsageMetric>(map['usageMetrics'], (value) => ServiceQuotaUsageMetric.fromMap((value as Map).cast<String, dynamic>()))),
      value: map['value'] == null ? null : pulumi.Output.create<double>(map['value'] as double),
    );
  }
}

