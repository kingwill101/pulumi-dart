// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_alarm_quota_dimension.dart';

/// {@template pulumi_quotas_quota_alarm_quota_alarm_args_doc}
/// The set of arguments for QuotaAlarm.
/// {@endtemplate}
/// {@macro pulumi_quotas_quota_alarm_quota_alarm_args_doc}
class QuotaAlarmArgs {
  /// The Product Code.
  final pulumi.Input<String> productCode;
  /// The Quota Action Code.
  final pulumi.Input<String> quotaActionCode;
  /// The name of Quota Alarm.
  final pulumi.Input<String> quotaAlarmName;
  /// The Quota Dimensions. See `quota_dimensions` below.
  final pulumi.Input<List<QuotaAlarmQuotaDimension>>? quotaDimensions;
  /// The threshold of Quota Alarm.
  final pulumi.Input<double>? threshold;
  /// The threshold percent of Quota Alarm.
  final pulumi.Input<double>? thresholdPercent;
  /// Quota alarm type. Value:
  /// - used: Quota used alarm.
  /// - usable: alarm for the remaining available quota.
  final pulumi.Input<String>? thresholdType;
  /// The WebHook of Quota Alarm.
  final pulumi.Input<String>? webHook;

  /// Creates a new [QuotaAlarmArgs].
  /// [productCode] The Product Code.
  /// [quotaActionCode] The Quota Action Code.
  /// [quotaAlarmName] The name of Quota Alarm.
  /// [quotaDimensions] The Quota Dimensions. See `quota_dimensions` below.
  /// [threshold] The threshold of Quota Alarm.
  /// [thresholdPercent] The threshold percent of Quota Alarm.
  /// [thresholdType] Quota alarm type. Value:
  /// [webHook] The WebHook of Quota Alarm.
  QuotaAlarmArgs({
    required String productCode,
    required String quotaActionCode,
    required String quotaAlarmName,
    List<QuotaAlarmQuotaDimension>? quotaDimensions,
    double? threshold,
    double? thresholdPercent,
    String? thresholdType,
    String? webHook,
  }) :
      productCode = pulumi.Input.asInput<String>(productCode),
      quotaActionCode = pulumi.Input.asInput<String>(quotaActionCode),
      quotaAlarmName = pulumi.Input.asInput<String>(quotaAlarmName),
      quotaDimensions = pulumi.Input.asOptionalInput<List<QuotaAlarmQuotaDimension>>(quotaDimensions),
      threshold = pulumi.Input.asOptionalInput<double>(threshold),
      thresholdPercent = pulumi.Input.asOptionalInput<double>(thresholdPercent),
      thresholdType = pulumi.Input.asOptionalInput<String>(thresholdType),
      webHook = pulumi.Input.asOptionalInput<String>(webHook);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productCode': productCode,
      'quotaActionCode': quotaActionCode,
      'quotaAlarmName': quotaAlarmName,
      'quotaDimensions': ?pulumi.Input.mapOptionalInputValue<List<QuotaAlarmQuotaDimension>, List<Map<String, dynamic>>>(quotaDimensions, (value) => pulumi.Input.encodeList<QuotaAlarmQuotaDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threshold': ?threshold,
      'thresholdPercent': ?thresholdPercent,
      'thresholdType': ?thresholdType,
      'webHook': ?webHook,
    };
  }

  factory QuotaAlarmArgs.fromMap(Map<String, dynamic> map) {
    return QuotaAlarmArgs(
      productCode: map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] as String,
      quotaAlarmName: map['quotaAlarmName'] as String,
      quotaDimensions: map['quotaDimensions'] == null ? null : pulumi.Input.decodeList<QuotaAlarmQuotaDimension>(map['quotaDimensions'], (value) => QuotaAlarmQuotaDimension.fromMap((value as Map).cast<String, dynamic>())),
      threshold: map['threshold'] == null ? null : map['threshold'] as double,
      thresholdPercent: map['thresholdPercent'] == null ? null : map['thresholdPercent'] as double,
      thresholdType: map['thresholdType'] == null ? null : map['thresholdType'] as String,
      webHook: map['webHook'] == null ? null : map['webHook'] as String,
    );
  }
}

