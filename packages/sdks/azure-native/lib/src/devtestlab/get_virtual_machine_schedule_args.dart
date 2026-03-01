// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_virtual_machine_schedule_args_doc}
/// Arguments for getVirtualMachineSchedule.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_virtual_machine_schedule_args_doc}
class GetVirtualMachineScheduleArgs {
  /// Specify the $expand query. Example: 'properties($select=status)'
  final pulumi.Input<String>? expand;
  /// labs
  final pulumi.Input<String> labName;
  /// The name of the Schedule
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// virtualmachines
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetVirtualMachineScheduleArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=status)'
  /// [labName] labs
  /// [name] The name of the Schedule
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualMachineName] virtualmachines
  GetVirtualMachineScheduleArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> labName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualMachineName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetVirtualMachineScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScheduleArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

