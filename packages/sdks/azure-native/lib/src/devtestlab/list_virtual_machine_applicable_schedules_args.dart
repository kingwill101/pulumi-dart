// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_list_virtual_machine_applicable_schedules_args_doc}
/// Arguments for listVirtualMachineApplicableSchedules.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_list_virtual_machine_applicable_schedules_args_doc}
class ListVirtualMachineApplicableSchedulesArgs {
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the LabVirtualMachine
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListVirtualMachineApplicableSchedulesArgs].
  /// [labName] The name of the lab.
  /// [name] The name of the LabVirtualMachine
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListVirtualMachineApplicableSchedulesArgs({
    required pulumi.Output<String> labName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListVirtualMachineApplicableSchedulesArgs.fromMap(Map<String, dynamic> map) {
    return ListVirtualMachineApplicableSchedulesArgs(
      labName: pulumi.Output.create<String>(map['labName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

