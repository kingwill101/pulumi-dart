// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quota_alarms_alarm_quota_dimension.dart';

class GetQuotaAlarmsAlarm {
  /// The first ID of the resource.
  final pulumi.Input<String> alarmId;

  /// The ID of the Quota Alarm.
  final pulumi.Input<String> id;

  /// The Product Code.
  final pulumi.Input<String> productCode;

  /// The Quota Action Code.
  final pulumi.Input<String> quotaActionCode;

  /// The name of Quota Alarm.
  final pulumi.Input<String> quotaAlarmName;

  /// The Quota Dimensions.
  final pulumi.Input<List<GetQuotaAlarmsAlarmQuotaDimension>> quotaDimensions;

  /// The threshold of Quota Alarm.
  final pulumi.Input<double> threshold;

  /// The threshold percent of Quota Alarm.
  final pulumi.Input<double> thresholdPercent;

  /// The WebHook of Quota Alarm.
  final pulumi.Input<String> webHook;

  /// Creates a new [GetQuotaAlarmsAlarm].
  /// [alarmId] The first ID of the resource.
  /// [id] The ID of the Quota Alarm.
  /// [productCode] The Product Code.
  /// [quotaActionCode] The Quota Action Code.
  /// [quotaAlarmName] The name of Quota Alarm.
  /// [quotaDimensions] The Quota Dimensions.
  /// [threshold] The threshold of Quota Alarm.
  /// [thresholdPercent] The threshold percent of Quota Alarm.
  /// [webHook] The WebHook of Quota Alarm.
  GetQuotaAlarmsAlarm({
    required this.alarmId,
    required this.id,
    required this.productCode,
    required this.quotaActionCode,
    required this.quotaAlarmName,
    required this.quotaDimensions,
    required this.threshold,
    required this.thresholdPercent,
    required this.webHook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmId': alarmId,
      'id': id,
      'productCode': productCode,
      'quotaActionCode': quotaActionCode,
      'quotaAlarmName': quotaAlarmName,
      'quotaDimensions':
          pulumi.Input.mapInputValue<
            List<GetQuotaAlarmsAlarmQuotaDimension>,
            List<Map<String, dynamic>>
          >(
            quotaDimensions,
            (value) =>
                pulumi.Input.encodeList<
                  GetQuotaAlarmsAlarmQuotaDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threshold': threshold,
      'thresholdPercent': thresholdPercent,
      'webHook': webHook,
    };
  }

  factory GetQuotaAlarmsAlarm.fromMap(Map<String, dynamic> map) {
    return GetQuotaAlarmsAlarm(
      alarmId: pulumi.Input.fromValue(map['alarmId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      quotaActionCode: pulumi.Input.fromValue(map['quotaActionCode'] as String),
      quotaAlarmName: pulumi.Input.fromValue(map['quotaAlarmName'] as String),
      quotaDimensions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetQuotaAlarmsAlarmQuotaDimension>(
          map['quotaDimensions']!,
          (value) => GetQuotaAlarmsAlarmQuotaDimension.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      thresholdPercent: pulumi.Input.fromValue(
        map['thresholdPercent'] as double,
      ),
      webHook: pulumi.Input.fromValue(map['webHook'] as String),
    );
  }
}
