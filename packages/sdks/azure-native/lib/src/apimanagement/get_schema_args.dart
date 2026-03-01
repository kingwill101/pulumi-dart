// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_schema_args_doc}
/// Arguments for getSchema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_schema_args_doc}
class GetSchemaArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Schema id identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> schemaId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetSchemaArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [schemaId] Schema id identifier. Must be unique in the current API Management service instance.
  /// [serviceName] The name of the API Management service.
  GetSchemaArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaId,
    required pulumi.Output<String> serviceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaId = pulumi.Input.asInput<String>(schemaId),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schemaId': schemaId,
      'serviceName': serviceName,
    };
  }

  factory GetSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaId: pulumi.Output.create<String>(map['schemaId'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

