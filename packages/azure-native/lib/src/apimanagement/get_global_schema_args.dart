// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_global_schema_args_doc}
/// Arguments for getGlobalSchema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_global_schema_args_doc}
class GetGlobalSchemaArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema id identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> schemaId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGlobalSchemaArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaId] Schema id identifier. Must be unique in the current API Management service instance.
  /// [serviceName] The name of the API Management service.
  GetGlobalSchemaArgs({
    required String resourceGroupName,
    required String schemaId,
    required String serviceName,
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

  factory GetGlobalSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalSchemaArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      schemaId: map['schemaId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

