// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBandwidthSchedule.
class GetBandwidthScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The days of the week when this schedule is applicable.
  final List<String> days;

  /// The path ID that uniquely identifies the object.
  final String id;

  /// The object name.
  final String name;

  /// The bandwidth rate in Mbps.
  final int rateInMbps;

  /// The start time of the schedule in UTC.
  final String start;

  /// The stop time of the schedule in UTC.
  final String stop;

  /// Metadata pertaining to creation and last modification of BandwidthSchedule
  final SystemDataResponse systemData;

  /// The hierarchical type of the object.
  final String type;

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
  GetBandwidthScheduleResult({
    required this.azureApiVersion,
    required this.days,
    required this.id,
    required this.name,
    required this.rateInMbps,
    required this.start,
    required this.stop,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'days': days,
      'id': id,
      'name': name,
      'rateInMbps': rateInMbps,
      'start': start,
      'stop': stop,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBandwidthScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetBandwidthScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      days: (map['days'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      rateInMbps: map['rateInMbps'] as int,
      start: map['start'] as String,
      stop: map['stop'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
