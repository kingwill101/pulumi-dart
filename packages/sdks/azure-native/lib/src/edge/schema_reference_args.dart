// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_reference_properties.dart';

/// {@template pulumi_edge_schema_reference_args_doc}
/// The set of arguments for SchemaReference.
/// {@endtemplate}
/// {@macro pulumi_edge_schema_reference_args_doc}
class SchemaReferenceArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<SchemaReferenceProperties>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the SchemaReference
  final pulumi.Input<String>? schemaReferenceName;

  /// Creates a new [SchemaReferenceArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [schemaReferenceName] The name of the SchemaReference
  SchemaReferenceArgs({
    this.properties,
    required this.resourceUri,
    this.schemaReferenceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SchemaReferenceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
      'schemaReferenceName': ?schemaReferenceName,
    };
  }

  factory SchemaReferenceArgs.fromMap(Map<String, dynamic> map) {
    return SchemaReferenceArgs(
      properties: map['properties'] == null ? null : (SchemaReferenceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      schemaReferenceName: map['schemaReferenceName'] == null ? null : (map['schemaReferenceName'] as String).input(),
    );
  }
}

