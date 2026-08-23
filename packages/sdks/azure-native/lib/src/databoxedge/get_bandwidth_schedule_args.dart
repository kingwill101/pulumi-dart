// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_bandwidth_schedule_args_doc}
/// Arguments for getBandwidthSchedule.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_bandwidth_schedule_args_doc}
class GetBandwidthScheduleArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The bandwidth schedule name.
  final pulumi.Input<String> name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBandwidthScheduleArgs].
  /// [deviceName] The device name.
  /// [name] The bandwidth schedule name.
  /// [resourceGroupName] The resource group name.
  const GetBandwidthScheduleArgs({
    required this.deviceName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBandwidthScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetBandwidthScheduleArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
