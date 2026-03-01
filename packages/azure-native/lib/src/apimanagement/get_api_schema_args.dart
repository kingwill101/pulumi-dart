// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_schema_args_doc}
/// Arguments for getApiSchema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_schema_args_doc}
class GetApiSchemaArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema id identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> schemaId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiSchemaArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaId] Schema id identifier. Must be unique in the current API Management service instance.
  /// [serviceName] The name of the API Management service.
  GetApiSchemaArgs({
    required String apiId,
    required String resourceGroupName,
    required String schemaId,
    required String serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaId = pulumi.Input.asInput<String>(schemaId),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'resourceGroupName': resourceGroupName,
      'schemaId': schemaId,
      'serviceName': serviceName,
    };
  }

  factory GetApiSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetApiSchemaArgs(
      apiId: map['apiId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaId: map['schemaId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

