// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_systemcenter_virtual_machine_manager_virtual_machine_template_virtual_machine_manager_virtual_machine_template_args_doc}
/// The set of arguments for VirtualMachineManagerVirtualMachineTemplate.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_virtual_machine_manager_virtual_machine_template_virtual_machine_manager_virtual_machine_template_args_doc}
class VirtualMachineManagerVirtualMachineTemplateArgs {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Machine Template. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// The Azure Region where the System Center Virtual Machine Manager Virtual Machine Template should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the System Center Virtual Machine Manager Virtual Machine Template. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the System Center Virtual Machine Manager Virtual Machine Template should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  final pulumi.Input<String> systemCenterVirtualMachineManagerServerInventoryItemId;
  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Virtual Machine Template.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachineManagerVirtualMachineTemplateArgs].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Machine Template. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Virtual Machine Template should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Virtual Machine Template. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Manager Virtual Machine Template should exist. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerServerInventoryItemId] The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Virtual Machine Template.
  VirtualMachineManagerVirtualMachineTemplateArgs({
    required String customLocationId,
    String? location,
    String? name,
    required String resourceGroupName,
    required String systemCenterVirtualMachineManagerServerInventoryItemId,
    Map<String, String>? tags,
  }) :
      customLocationId = pulumi.Input.asInput<String>(customLocationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      systemCenterVirtualMachineManagerServerInventoryItemId = pulumi.Input.asInput<String>(systemCenterVirtualMachineManagerServerInventoryItemId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'systemCenterVirtualMachineManagerServerInventoryItemId': systemCenterVirtualMachineManagerServerInventoryItemId,
      'tags': ?tags,
    };
  }

  factory VirtualMachineManagerVirtualMachineTemplateArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineTemplateArgs(
      customLocationId: map['customLocationId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      systemCenterVirtualMachineManagerServerInventoryItemId: map['systemCenterVirtualMachineManagerServerInventoryItemId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

