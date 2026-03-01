// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_scvmm_virtual_machine_template_args_doc}
/// The set of arguments for VirtualMachineTemplate.
/// {@endtemplate}
/// {@macro pulumi_scvmm_virtual_machine_template_args_doc}
class VirtualMachineTemplateArgs {
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Gets or sets the inventory Item ID for the resource.
  final pulumi.Input<String>? inventoryItemId;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Unique ID of the virtual machine template.
  final pulumi.Input<String>? uuid;
  /// Name of the VirtualMachineTemplate.
  final pulumi.Input<String>? virtualMachineTemplateName;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final pulumi.Input<String>? vmmServerId;

  /// Creates a new [VirtualMachineTemplateArgs].
  /// [extendedLocation] The extended location.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [location] Gets or sets the location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags
  /// [uuid] Unique ID of the virtual machine template.
  /// [virtualMachineTemplateName] Name of the VirtualMachineTemplate.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  VirtualMachineTemplateArgs({
    required ExtendedLocation extendedLocation,
    String? inventoryItemId,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? uuid,
    String? virtualMachineTemplateName,
    String? vmmServerId,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      inventoryItemId = pulumi.Input.asOptionalInput<String>(inventoryItemId),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uuid = pulumi.Input.asOptionalInput<String>(uuid),
      virtualMachineTemplateName = pulumi.Input.asOptionalInput<String>(virtualMachineTemplateName),
      vmmServerId = pulumi.Input.asOptionalInput<String>(vmmServerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'inventoryItemId': ?inventoryItemId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'uuid': ?uuid,
      'virtualMachineTemplateName': ?virtualMachineTemplateName,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory VirtualMachineTemplateArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineTemplateArgs(
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      virtualMachineTemplateName: map['virtualMachineTemplateName'] == null ? null : map['virtualMachineTemplateName'] as String,
      vmmServerId: map['vmmServerId'] == null ? null : map['vmmServerId'] as String,
    );
  }
}

