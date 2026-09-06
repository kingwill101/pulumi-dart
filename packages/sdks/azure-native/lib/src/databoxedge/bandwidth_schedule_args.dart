// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_bandwidth_schedule_args_doc}
/// The set of arguments for BandwidthSchedule.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_bandwidth_schedule_args_doc}
class BandwidthScheduleArgs {
  /// The days of the week when this schedule is applicable.
  final pulumi.Input<List<dynamic>> days;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The bandwidth schedule name which needs to be added/updated.
  final pulumi.Input<String?>? name;
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
  const BandwidthScheduleArgs({
    required this.days,
    required this.deviceName,
    this.name,
    required this.rateInMbps,
    required this.resourceGroupName,
    required this.start,
    required this.stop,
  });

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
      days: pulumi.Input.fromValue((map['days'] as List).cast<dynamic>()),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateInMbps: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rateInMbps'])),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
      stop: pulumi.Input.fromValue(map['stop'] as String),
    );
  }
}
