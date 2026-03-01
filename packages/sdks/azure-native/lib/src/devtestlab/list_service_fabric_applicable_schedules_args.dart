// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_list_service_fabric_applicable_schedules_args_doc}
/// Arguments for listServiceFabricApplicableSchedules.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_list_service_fabric_applicable_schedules_args_doc}
class ListServiceFabricApplicableSchedulesArgs {
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the ServiceFabric
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [ListServiceFabricApplicableSchedulesArgs].
  /// [labName] The name of the lab.
  /// [name] The name of the ServiceFabric
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userName] The name of the user profile.
  ListServiceFabricApplicableSchedulesArgs({
    required pulumi.Output<String> labName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> userName,
  }) :
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'userName': userName,
    };
  }

  factory ListServiceFabricApplicableSchedulesArgs.fromMap(Map<String, dynamic> map) {
    return ListServiceFabricApplicableSchedulesArgs(
      labName: pulumi.Output.create<String>(map['labName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

