// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_quota_usage_metric.dart';

/// Result data returned by getServiceQuota.
class GetServiceQuotaResult {
  /// Whether the service quota is adjustable.
  final bool? adjustable;
  /// ARN of the service quota.
  final String? arn;
  /// Default value of the service quota.
  final double? defaultValue;
  /// Whether the service quota is global for the AWS account.
  final bool? globalQuota;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? quotaCode;
  final String? quotaName;
  final String? region;
  final String? serviceCode;
  /// Name of the service.
  final String? serviceName;
  /// Information about the measurement.
  final List<GetServiceQuotaUsageMetric>? usageMetrics;
  /// Current value of the service quota.
  final double? value;

  /// Creates a new [GetServiceQuotaResult].
  /// [adjustable] Whether the service quota is adjustable.
  /// [arn] ARN of the service quota.
  /// [defaultValue] Default value of the service quota.
  /// [globalQuota] Whether the service quota is global for the AWS account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [quotaCode] Optional.
  /// [quotaName] Optional.
  /// [region] Optional.
  /// [serviceCode] Optional.
  /// [serviceName] Name of the service.
  /// [usageMetrics] Information about the measurement.
  /// [value] Current value of the service quota.
  const GetServiceQuotaResult({
    this.adjustable,
    this.arn,
    this.defaultValue,
    this.globalQuota,
    this.id,
    this.quotaCode,
    this.quotaName,
    this.region,
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
      'globalQuota': ?globalQuota,
      'id': ?id,
      'quotaCode': ?quotaCode,
      'quotaName': ?quotaName,
      'region': ?region,
      'serviceCode': ?serviceCode,
      'serviceName': ?serviceName,
      'usageMetrics': ?(() { final guardedValue = usageMetrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceQuotaUsageMetric, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'value': ?value,
    };
  }

  factory GetServiceQuotaResult.fromMap(Map<String, dynamic> map) {
    return GetServiceQuotaResult(
      adjustable: (() { final guardedValue = map['adjustable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      globalQuota: (() { final guardedValue = map['globalQuota']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaCode: (() { final guardedValue = map['quotaCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaName: (() { final guardedValue = map['quotaName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceCode: (() { final guardedValue = map['serviceCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usageMetrics: (() { final guardedValue = map['usageMetrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceQuotaUsageMetric>(guardedValue, (value) => GetServiceQuotaUsageMetric.fromMap((value as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
