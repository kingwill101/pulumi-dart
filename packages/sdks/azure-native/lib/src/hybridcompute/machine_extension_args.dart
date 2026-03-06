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
  const MachineExtensionArgs({
    this.extensionName,
    this.location,
    required this.machineName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      extensionName: (() { final guardedValue = map['extensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineExtensionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

