// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_edge_schema_args_doc}
class SchemaArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Schema
  final pulumi.Input<String>? schemaName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SchemaArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the Schema
  /// [tags] Resource tags.
  SchemaArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? schemaName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asOptionalInput<String>(schemaName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'schemaName': ?schemaName,
      'tags': ?tags,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: map['schemaName'] == null ? null : pulumi.Output.create<String>(map['schemaName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

