// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_alarm_quota_dimension.dart';

/// Input properties used for looking up and filtering QuotaAlarm resources.
class QuotaAlarmState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The Product Code.
  final pulumi.Input<String>? productCode;
  /// The Quota Action Code.
  final pulumi.Input<String>? quotaActionCode;
  /// The name of Quota Alarm.
  final pulumi.Input<String>? quotaAlarmName;
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

  /// Creates a new [QuotaAlarmState].
  /// [createTime] The creation time of the resource.
  /// [productCode] The Product Code.
  /// [quotaActionCode] The Quota Action Code.
  /// [quotaAlarmName] The name of Quota Alarm.
  /// [quotaDimensions] The Quota Dimensions. See `quota_dimensions` below.
  /// [threshold] The threshold of Quota Alarm.
  /// [thresholdPercent] The threshold percent of Quota Alarm.
  /// [thresholdType] Quota alarm type. Value:
  /// [webHook] The WebHook of Quota Alarm.
  QuotaAlarmState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? productCode,
    pulumi.Output<String>? quotaActionCode,
    pulumi.Output<String>? quotaAlarmName,
    pulumi.Output<List<QuotaAlarmQuotaDimension>>? quotaDimensions,
    pulumi.Output<double>? threshold,
    pulumi.Output<double>? thresholdPercent,
    pulumi.Output<String>? thresholdType,
    pulumi.Output<String>? webHook,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      quotaActionCode = pulumi.Input.asOptionalInput<String>(quotaActionCode),
      quotaAlarmName = pulumi.Input.asOptionalInput<String>(quotaAlarmName),
      quotaDimensions = pulumi.Input.asOptionalInput<List<QuotaAlarmQuotaDimension>>(quotaDimensions),
      threshold = pulumi.Input.asOptionalInput<double>(threshold),
      thresholdPercent = pulumi.Input.asOptionalInput<double>(thresholdPercent),
      thresholdType = pulumi.Input.asOptionalInput<String>(thresholdType),
      webHook = pulumi.Input.asOptionalInput<String>(webHook);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaAlarmName': ?quotaAlarmName,
      'quotaDimensions': ?pulumi.Input.mapOptionalInputValue<List<QuotaAlarmQuotaDimension>, List<Map<String, dynamic>>>(quotaDimensions, (value) => pulumi.Input.encodeList<QuotaAlarmQuotaDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threshold': ?threshold,
      'thresholdPercent': ?thresholdPercent,
      'thresholdType': ?thresholdType,
      'webHook': ?webHook,
    };
  }

  factory QuotaAlarmState.fromMap(Map<String, dynamic> map) {
    return QuotaAlarmState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      quotaActionCode: map['quotaActionCode'] == null ? null : pulumi.Output.create<String>(map['quotaActionCode'] as String),
      quotaAlarmName: map['quotaAlarmName'] == null ? null : pulumi.Output.create<String>(map['quotaAlarmName'] as String),
      quotaDimensions: map['quotaDimensions'] == null ? null : pulumi.Output.create<List<QuotaAlarmQuotaDimension>>(pulumi.Input.decodeList<QuotaAlarmQuotaDimension>(map['quotaDimensions'], (value) => QuotaAlarmQuotaDimension.fromMap((value as Map).cast<String, dynamic>()))),
      threshold: map['threshold'] == null ? null : pulumi.Output.create<double>(map['threshold'] as double),
      thresholdPercent: map['thresholdPercent'] == null ? null : pulumi.Output.create<double>(map['thresholdPercent'] as double),
      thresholdType: map['thresholdType'] == null ? null : pulumi.Output.create<String>(map['thresholdType'] as String),
      webHook: map['webHook'] == null ? null : pulumi.Output.create<String>(map['webHook'] as String),
    );
  }
}

