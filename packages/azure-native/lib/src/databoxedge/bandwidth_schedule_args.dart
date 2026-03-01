// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_bandwidth_schedule_args_doc}
/// The set of arguments for BandwidthSchedule.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_bandwidth_schedule_args_doc}
class BandwidthScheduleArgs {
  /// The days of the week when this schedule is applicable.
  final pulumi.Input<List<String>> days;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The bandwidth schedule name which needs to be added/updated.
  final pulumi.Input<String>? name;
  /// The bandwidth rate in Mbps.
  final pulumi.Input<int> rateInMbps;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The start time of the schedule in UTC.
  final pulumi.Input<String> start;
  /// The stop time of the schedule in UTC.
  final pulumi.Input<String> stop;

  /// Creates a new [BandwidthScheduleArgs].
  /// [days] The days of the week when this schedule is applicable.
  /// [deviceName] The device name.
  /// [name] The bandwidth schedule name which needs to be added/updated.
  /// [rateInMbps] The bandwidth rate in Mbps.
  /// [resourceGroupName] The resource group name.
  /// [start] The start time of the schedule in UTC.
  /// [stop] The stop time of the schedule in UTC.
  BandwidthScheduleArgs({
    required List<String> days,
    required String deviceName,
    String? name,
    required int rateInMbps,
    required String resourceGroupName,
    required String start,
    required String stop,
  }) :
      days = pulumi.Input.asInput<List<String>>(days),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      rateInMbps = pulumi.Input.asInput<int>(rateInMbps),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      start = pulumi.Input.asInput<String>(start),
      stop = pulumi.Input.asInput<String>(stop);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'deviceName': deviceName,
      'name': ?name,
      'rateInMbps': rateInMbps,
      'resourceGroupName': resourceGroupName,
      'start': start,
      'stop': stop,
    };
  }

  factory BandwidthScheduleArgs.fromMap(Map<String, dynamic> map) {
    return BandwidthScheduleArgs(
      days: (map['days'] as List).cast<String>(),
      deviceName: map['deviceName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      rateInMbps: map['rateInMbps'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      start: map['start'] as String,
      stop: map['stop'] as String,
    );
  }
}

