// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_model_properties.dart';

/// {@template pulumi_datareplication_fabric_args_doc}
/// The set of arguments for Fabric.
/// {@endtemplate}
/// {@macro pulumi_datareplication_fabric_args_doc}
class FabricArgs {
  /// The fabric name.
  final pulumi.Input<String>? fabricName;

  /// Gets or sets the location of the fabric.
  final pulumi.Input<String>? location;

  /// Fabric model properties.
  final pulumi.Input<FabricModelProperties> properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Gets or sets the resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FabricArgs].
  /// [fabricName] The fabric name.
  /// [location] Gets or sets the location of the fabric.
  /// [properties] Fabric model properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Gets or sets the resource tags.
  FabricArgs({
    this.fabricName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': ?fabricName,
      'location': ?location,
      'properties':
          pulumi.Input.mapInputValue<
            FabricModelProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FabricArgs.fromMap(Map<String, dynamic> map) {
    return FabricArgs(
      fabricName: (() {
        final guardedValue = map['fabricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        FabricModelProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
