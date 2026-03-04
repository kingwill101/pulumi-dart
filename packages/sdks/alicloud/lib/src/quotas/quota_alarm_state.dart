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
    this.createTime,
    this.productCode,
    this.quotaActionCode,
    this.quotaAlarmName,
    this.quotaDimensions,
    this.threshold,
    this.thresholdPercent,
    this.thresholdType,
    this.webHook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaAlarmName': ?quotaAlarmName,
      'quotaDimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<QuotaAlarmQuotaDimension>,
            List<Map<String, dynamic>>
          >(
            quotaDimensions,
            (value) =>
                pulumi.Input.encodeList<
                  QuotaAlarmQuotaDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threshold': ?threshold,
      'thresholdPercent': ?thresholdPercent,
      'thresholdType': ?thresholdType,
      'webHook': ?webHook,
    };
  }

  factory QuotaAlarmState.fromMap(Map<String, dynamic> map) {
    return QuotaAlarmState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productCode: (() {
        final guardedValue = map['productCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaActionCode: (() {
        final guardedValue = map['quotaActionCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaAlarmName: (() {
        final guardedValue = map['quotaAlarmName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaDimensions: (() {
        final guardedValue = map['quotaDimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<QuotaAlarmQuotaDimension>(
            guardedValue,
            (value) => QuotaAlarmQuotaDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      thresholdPercent: (() {
        final guardedValue = map['thresholdPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      thresholdType: (() {
        final guardedValue = map['thresholdType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webHook: (() {
        final guardedValue = map['webHook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
