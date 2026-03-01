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
    String? fabricName,
    String? location,
    required FabricModelProperties properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      fabricName = pulumi.Input.asOptionalInput<String>(fabricName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<FabricModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': ?fabricName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<FabricModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FabricArgs.fromMap(Map<String, dynamic> map) {
    return FabricArgs(
      fabricName: map['fabricName'] == null ? null : map['fabricName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: FabricModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

