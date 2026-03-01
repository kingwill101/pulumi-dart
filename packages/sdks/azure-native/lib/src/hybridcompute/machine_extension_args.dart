// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_properties.dart';

/// {@template pulumi_hybridcompute_machine_extension_args_doc}
/// The set of arguments for MachineExtension.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_machine_extension_args_doc}
class MachineExtensionArgs {
  /// The name of the machine extension.
  final pulumi.Input<String>? extensionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the machine where the extension should be created or updated.
  final pulumi.Input<String> machineName;
  /// Describes Machine Extension Properties.
  final pulumi.Input<MachineExtensionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MachineExtensionArgs].
  /// [extensionName] The name of the machine extension.
  /// [location] The geo-location where the resource lives
  /// [machineName] The name of the machine where the extension should be created or updated.
  /// [properties] Describes Machine Extension Properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  MachineExtensionArgs({
    pulumi.Output<String>? extensionName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> machineName,
    pulumi.Output<MachineExtensionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extensionName = pulumi.Input.asOptionalInput<String>(extensionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineName = pulumi.Input.asInput<String>(machineName),
      properties = pulumi.Input.asOptionalInput<MachineExtensionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionName': ?extensionName,
      'location': ?location,
      'machineName': machineName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MachineExtensionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MachineExtensionArgs.fromMap(Map<String, dynamic> map) {
    return MachineExtensionArgs(
      extensionName: map['extensionName'] == null ? null : pulumi.Output.create<String>(map['extensionName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineName: pulumi.Output.create<String>(map['machineName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<MachineExtensionProperties>(MachineExtensionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

