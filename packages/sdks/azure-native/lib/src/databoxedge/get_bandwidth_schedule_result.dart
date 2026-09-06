// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBandwidthSchedule.
class GetBandwidthScheduleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The days of the week when this schedule is applicable.
  final List<String>? days;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// The object name.
  final String? name;
  /// The bandwidth rate in Mbps.
  final int? rateInMbps;
  /// The start time of the schedule in UTC.
  final String? start;
  /// The stop time of the schedule in UTC.
  final String? stop;
  /// Metadata pertaining to creation and last modification of BandwidthSchedule
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

  /// Creates a new [GetBandwidthScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [days] The days of the week when this schedule is applicable.
  /// [id] The path ID that uniquely identifies the object.
  /// [name] The object name.
  /// [rateInMbps] The bandwidth rate in Mbps.
  /// [start] The start time of the schedule in UTC.
  /// [stop] The stop time of the schedule in UTC.
  /// [systemData] Metadata pertaining to creation and last modification of BandwidthSchedule
  /// [type] The hierarchical type of the object.
  const GetBandwidthScheduleResult({
    this.azureApiVersion,
    this.days,
    this.id,
    this.name,
    this.rateInMbps,
    this.start,
    this.stop,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'days': ?days,
      'id': ?id,
      'name': ?name,
      'rateInMbps': ?rateInMbps,
      'start': ?start,
      'stop': ?stop,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetBandwidthScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetBandwidthScheduleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rateInMbps: (() { final guardedValue = map['rateInMbps']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stop: (() { final guardedValue = map['stop']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
