// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'supercomputer_properties.dart';

/// {@template pulumi_discovery_supercomputer_args_doc}
/// The set of arguments for Supercomputer.
/// {@endtemplate}
/// {@macro pulumi_discovery_supercomputer_args_doc}
class SupercomputerArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SupercomputerProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Supercomputer
  final pulumi.Input<String?>? supercomputerName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SupercomputerArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supercomputerName] The name of the Supercomputer
  /// [tags] Resource tags.
  const SupercomputerArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.supercomputerName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<SupercomputerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'supercomputerName': ?supercomputerName,
      'tags': ?tags,
    };
  }

  factory SupercomputerArgs.fromMap(Map<String, dynamic> map) {
    return SupercomputerArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SupercomputerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      supercomputerName: (() { final guardedValue = map['supercomputerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
