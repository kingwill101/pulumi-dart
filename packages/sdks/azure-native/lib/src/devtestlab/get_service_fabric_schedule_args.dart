// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_service_fabric_schedule_args_doc}
/// Arguments for getServiceFabricSchedule.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_service_fabric_schedule_args_doc}
class GetServiceFabricScheduleArgs {
  /// Specify the $expand query. Example: 'properties($select=status)'
  final pulumi.Input<String>? expand;
  /// labs
  final pulumi.Input<String> labName;
  /// The name of the Schedule
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// servicefabrics
  final pulumi.Input<String> serviceFabricName;
  /// users
  final pulumi.Input<String> userName;

  /// Creates a new [GetServiceFabricScheduleArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=status)'
  /// [labName] labs
  /// [name] The name of the Schedule
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceFabricName] servicefabrics
  /// [userName] users
  const GetServiceFabricScheduleArgs({
    this.expand,
    required this.labName,
    required this.name,
    required this.resourceGroupName,
    required this.serviceFabricName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serviceFabricName': serviceFabricName,
      'userName': userName,
    };
  }

  factory GetServiceFabricScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceFabricScheduleArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceFabricName: pulumi.Input.fromValue(map['serviceFabricName'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

