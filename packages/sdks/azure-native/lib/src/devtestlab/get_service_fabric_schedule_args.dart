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
  GetServiceFabricScheduleArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> labName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceFabricName,
    required pulumi.Output<String> userName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceFabricName = pulumi.Input.asInput<String>(serviceFabricName),
      userName = pulumi.Input.asInput<String>(userName);

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
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceFabricName: pulumi.Output.create<String>(map['serviceFabricName'] as String),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

