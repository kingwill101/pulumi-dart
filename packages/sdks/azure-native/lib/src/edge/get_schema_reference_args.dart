// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_schema_reference_args_doc}
/// Arguments for getSchemaReference.
/// {@endtemplate}
/// {@macro pulumi_edge_get_schema_reference_args_doc}
class GetSchemaReferenceArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the SchemaReference
  final pulumi.Input<String> schemaReferenceName;

  /// Creates a new [GetSchemaReferenceArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [schemaReferenceName] The name of the SchemaReference
  GetSchemaReferenceArgs({
    required this.resourceUri,
    required this.schemaReferenceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'schemaReferenceName': schemaReferenceName,
    };
  }

  factory GetSchemaReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaReferenceArgs(
      resourceUri: (map['resourceUri'] as String).input(),
      schemaReferenceName: (map['schemaReferenceName'] as String).input(),
    );
  }
}

