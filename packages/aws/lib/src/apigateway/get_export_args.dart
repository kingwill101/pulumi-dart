// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_export_get_export_args_doc}
/// Arguments for getExport.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_export_get_export_args_doc}
class GetExportArgs {
  /// Content-type of the export. Valid values are `application/json` and `application/yaml` are supported for `export_type` `ofoas30` and `swagger`.
  final pulumi.Input<String>? accepts;

  /// Type of export. Acceptable values are `oas30` for OpenAPI 3.0.x and `swagger` for Swagger/OpenAPI 2.0.
  final pulumi.Input<String> exportType;

  /// Key-value map of query string parameters that specify properties of the export. the following parameters are supported: `extensions='integrations'` or `extensions='apigateway'` will export the API with x-amazon-apigateway-integration extensions. `extensions='authorizers'` will export the API with x-amazon-apigateway-authorizer extensions.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of the associated REST API.
  final pulumi.Input<String> restApiId;

  /// Name of the Stage that will be exported.
  final pulumi.Input<String> stageName;

  /// Creates a new [GetExportArgs].
  /// [accepts] Content-type of the export. Valid values are `application/json` and `application/yaml` are supported for `export_type` `ofoas30` and `swagger`.
  /// [exportType] Type of export. Acceptable values are `oas30` for OpenAPI 3.0.x and `swagger` for Swagger/OpenAPI 2.0.
  /// [parameters] Key-value map of query string parameters that specify properties of the export. the following parameters are supported: `extensions='integrations'` or `extensions='apigateway'` will export the API with x-amazon-apigateway-integration extensions. `extensions='authorizers'` will export the API with x-amazon-apigateway-authorizer extensions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] Identifier of the associated REST API.
  /// [stageName] Name of the Stage that will be exported.
  GetExportArgs({
    String? accepts,
    required String exportType,
    Map<String, String>? parameters,
    String? region,
    required String restApiId,
    required String stageName,
  }) : accepts = pulumi.Input.asOptionalInput<String>(accepts),
       exportType = pulumi.Input.asInput<String>(exportType),
       parameters = pulumi.Input.asOptionalInput<Map<String, String>>(
         parameters,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       restApiId = pulumi.Input.asInput<String>(restApiId),
       stageName = pulumi.Input.asInput<String>(stageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepts': ?accepts,
      'exportType': exportType,
      'parameters': ?parameters,
      'region': ?region,
      'restApiId': restApiId,
      'stageName': stageName,
    };
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      accepts: map['accepts'] == null ? null : map['accepts'] as String,
      exportType: map['exportType'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      restApiId: map['restApiId'] as String,
      stageName: map['stageName'] as String,
    );
  }
}
