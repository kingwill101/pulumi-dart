// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_assignment.dart';

/// {@template pulumi_apicenter_metadata_schema_args_doc}
/// The set of arguments for MetadataSchema.
/// {@endtemplate}
/// {@macro pulumi_apicenter_metadata_schema_args_doc}
class MetadataSchemaArgs {
  /// The assignees
  final pulumi.Input<List<MetadataAssignment>>? assignedTo;
  /// The name of the metadata schema.
  final pulumi.Input<String>? metadataSchemaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The schema defining the type.
  final pulumi.Input<String> schema;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [MetadataSchemaArgs].
  /// [assignedTo] The assignees
  /// [metadataSchemaName] The name of the metadata schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schema] The schema defining the type.
  /// [serviceName] The name of Azure API Center service.
  MetadataSchemaArgs({
    List<MetadataAssignment>? assignedTo,
    String? metadataSchemaName,
    required String resourceGroupName,
    required String schema,
    required String serviceName,
  }) :
      assignedTo = pulumi.Input.asOptionalInput<List<MetadataAssignment>>(assignedTo),
      metadataSchemaName = pulumi.Input.asOptionalInput<String>(metadataSchemaName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schema = pulumi.Input.asInput<String>(schema),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedTo': ?pulumi.Input.mapOptionalInputValue<List<MetadataAssignment>, List<Map<String, dynamic>>>(assignedTo, (value) => pulumi.Input.encodeList<MetadataAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadataSchemaName': ?metadataSchemaName,
      'resourceGroupName': resourceGroupName,
      'schema': schema,
      'serviceName': serviceName,
    };
  }

  factory MetadataSchemaArgs.fromMap(Map<String, dynamic> map) {
    return MetadataSchemaArgs(
      assignedTo: map['assignedTo'] == null ? null : pulumi.Input.decodeList<MetadataAssignment>(map['assignedTo'], (value) => MetadataAssignment.fromMap((value as Map).cast<String, dynamic>())),
      metadataSchemaName: map['metadataSchemaName'] == null ? null : map['metadataSchemaName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schema: map['schema'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

