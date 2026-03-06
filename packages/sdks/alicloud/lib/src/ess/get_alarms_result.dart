// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alarms_alarm.dart';

/// Result data returned by getAlarms.
class GetAlarmsResult {
  /// A list of alarms. Each element contains the following attributes:
  final List<GetAlarmsAlarm> alarms;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of alarm ids.
  final List<String> ids;
  /// The type for the alarm's associated metric.
  final String? metricType;
  final String? nameRegex;
  /// A list of alarm names.
  final List<String> names;
  final String? outputFile;
  /// The scaling group associated with this alarm.
  final String? scalingGroupId;

  /// Creates a new [GetAlarmsResult].
  /// [alarms] A list of alarms. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of alarm ids.
  /// [metricType] The type for the alarm's associated metric.
  /// [nameRegex] Optional.
  /// [names] A list of alarm names.
  /// [outputFile] Optional.
  /// [scalingGroupId] The scaling group associated with this alarm.
  const GetAlarmsResult({
    required this.alarms,
    required this.id,
    required this.ids,
    this.metricType,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': pulumi.Input.encodeList<GetAlarmsAlarm, Map<String, dynamic>>(alarms, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'metricType': ?metricType,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory GetAlarmsResult.fromMap(Map<String, dynamic> map) {
    return GetAlarmsResult(
      alarms: pulumi.Input.decodeList<GetAlarmsAlarm>(map['alarms']!, (value) => GetAlarmsAlarm.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      metricType: (() { final guardedValue = map['metricType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalingGroupId: (() { final guardedValue = map['scalingGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

