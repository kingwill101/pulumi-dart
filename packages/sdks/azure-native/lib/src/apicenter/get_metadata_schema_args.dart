// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apicenter_get_metadata_schema_args_doc}
/// Arguments for getMetadataSchema.
/// {@endtemplate}
/// {@macro pulumi_apicenter_get_metadata_schema_args_doc}
class GetMetadataSchemaArgs {
  /// The name of the metadata schema.
  final pulumi.Input<String> metadataSchemaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetMetadataSchemaArgs].
  /// [metadataSchemaName] The name of the metadata schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  GetMetadataSchemaArgs({
    required pulumi.Output<String> metadataSchemaName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      metadataSchemaName = pulumi.Input.asInput<String>(metadataSchemaName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataSchemaName': metadataSchemaName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetMetadataSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaArgs(
      metadataSchemaName: pulumi.Output.create<String>(map['metadataSchemaName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

