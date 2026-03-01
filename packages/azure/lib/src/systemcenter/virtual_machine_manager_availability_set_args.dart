// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_systemcenter_virtual_machine_manager_availability_set_virtual_machine_manager_availability_set_args_doc}
/// The set of arguments for VirtualMachineManagerAvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_virtual_machine_manager_availability_set_virtual_machine_manager_availability_set_args_doc}
class VirtualMachineManagerAvailabilitySetArgs {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// The Azure Region where the System Center Virtual Machine Manager Availability Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the System Center Virtual Machine Availability Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> systemCenterVirtualMachineManagerServerId;
  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Availability Set.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachineManagerAvailabilitySetArgs].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Availability Set should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Availability Set should exist. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerServerId] The ID of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Availability Set.
  VirtualMachineManagerAvailabilitySetArgs({
    required String customLocationId,
    String? location,
    String? name,
    required String resourceGroupName,
    required String systemCenterVirtualMachineManagerServerId,
    Map<String, String>? tags,
  }) :
      customLocationId = pulumi.Input.asInput<String>(customLocationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      systemCenterVirtualMachineManagerServerId = pulumi.Input.asInput<String>(systemCenterVirtualMachineManagerServerId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'systemCenterVirtualMachineManagerServerId': systemCenterVirtualMachineManagerServerId,
      'tags': ?tags,
    };
  }

  factory VirtualMachineManagerAvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerAvailabilitySetArgs(
      customLocationId: map['customLocationId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      systemCenterVirtualMachineManagerServerId: map['systemCenterVirtualMachineManagerServerId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

