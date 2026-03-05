// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quota_alarms_alarm.dart';
import 'get_quota_alarms_quota_dimension.dart';

/// Result data returned by getQuotaAlarms.
class GetQuotaAlarmsResult {
  final List<GetQuotaAlarmsAlarm> alarms;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? productCode;
  final String? quotaActionCode;
  final String? quotaAlarmName;
  final List<GetQuotaAlarmsQuotaDimension>? quotaDimensions;

  /// Creates a new [GetQuotaAlarmsResult].
  /// [alarms] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [productCode] Optional.
  /// [quotaActionCode] Optional.
  /// [quotaAlarmName] Optional.
  /// [quotaDimensions] Optional.
  GetQuotaAlarmsResult({
    required this.alarms,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.productCode,
    this.quotaActionCode,
    this.quotaAlarmName,
    this.quotaDimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': pulumi.Input.encodeList<GetQuotaAlarmsAlarm, Map<String, dynamic>>(alarms, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaAlarmName': ?quotaAlarmName,
      'quotaDimensions': ?(() { final guardedValue = quotaDimensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQuotaAlarmsQuotaDimension, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetQuotaAlarmsResult.fromMap(Map<String, dynamic> map) {
    return GetQuotaAlarmsResult(
      alarms: pulumi.Input.decodeList<GetQuotaAlarmsAlarm>(map['alarms']!, (value) => GetQuotaAlarmsAlarm.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaActionCode: (() { final guardedValue = map['quotaActionCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaAlarmName: (() { final guardedValue = map['quotaAlarmName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaDimensions: (() { final guardedValue = map['quotaDimensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQuotaAlarmsQuotaDimension>(guardedValue, (value) => GetQuotaAlarmsQuotaDimension.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

