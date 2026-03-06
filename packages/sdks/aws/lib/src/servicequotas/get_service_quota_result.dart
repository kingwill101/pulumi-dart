// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_quota_usage_metric.dart';

/// Result data returned by getServiceQuota.
class GetServiceQuotaResult {
  /// Whether the service quota is adjustable.
  final bool adjustable;
  /// ARN of the service quota.
  final String arn;
  /// Default value of the service quota.
  final double defaultValue;
  /// Whether the service quota is global for the AWS account.
  final bool globalQuota;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String quotaCode;
  final String quotaName;
  final String region;
  final String serviceCode;
  /// Name of the service.
  final String serviceName;
  /// Information about the measurement.
  final List<GetServiceQuotaUsageMetric> usageMetrics;
  /// Current value of the service quota.
  final double value;

  /// Creates a new [GetServiceQuotaResult].
  /// [adjustable] Whether the service quota is adjustable.
  /// [arn] ARN of the service quota.
  /// [defaultValue] Default value of the service quota.
  /// [globalQuota] Whether the service quota is global for the AWS account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [quotaCode] Required.
  /// [quotaName] Required.
  /// [region] Required.
  /// [serviceCode] Required.
  /// [serviceName] Name of the service.
  /// [usageMetrics] Information about the measurement.
  /// [value] Current value of the service quota.
  const GetServiceQuotaResult({
    required this.adjustable,
    required this.arn,
    required this.defaultValue,
    required this.globalQuota,
    required this.id,
    required this.quotaCode,
    required this.quotaName,
    required this.region,
    required this.serviceCode,
    required this.serviceName,
    required this.usageMetrics,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustable': adjustable,
      'arn': arn,
      'defaultValue': defaultValue,
      'globalQuota': globalQuota,
      'id': id,
      'quotaCode': quotaCode,
      'quotaName': quotaName,
      'region': region,
      'serviceCode': serviceCode,
      'serviceName': serviceName,
      'usageMetrics': pulumi.Input.encodeList<GetServiceQuotaUsageMetric, Map<String, dynamic>>(usageMetrics, (value) => value.toMap()),
      'value': value,
    };
  }

  factory GetServiceQuotaResult.fromMap(Map<String, dynamic> map) {
    return GetServiceQuotaResult(
      adjustable: map['adjustable'] as bool,
      arn: map['arn'] as String,
      defaultValue: map['defaultValue'] as double,
      globalQuota: map['globalQuota'] as bool,
      id: map['id'] as String,
      quotaCode: map['quotaCode'] as String,
      quotaName: map['quotaName'] as String,
      region: map['region'] as String,
      serviceCode: map['serviceCode'] as String,
      serviceName: map['serviceName'] as String,
      usageMetrics: pulumi.Input.decodeList<GetServiceQuotaUsageMetric>(map['usageMetrics']!, (value) => GetServiceQuotaUsageMetric.fromMap((value as Map).cast<String, dynamic>())),
      value: map['value'] as double,
    );
  }
}

