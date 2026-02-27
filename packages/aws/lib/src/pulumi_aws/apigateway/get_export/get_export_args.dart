// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExport.
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

  GetExportArgs({
    this.accepts,
    required this.exportType,
    this.parameters,
    this.region,
    required this.restApiId,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptsValue = accepts;
    if (acceptsValue != null) {
      map['accepts'] = acceptsValue;
    }
    map['exportType'] = exportType;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    map['stageName'] = stageName;
    return map;
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      accepts: pulumi.Input.asOptionalInput<String>(map['accepts']),
      exportType: pulumi.Input.asInput<String>(map['exportType']),
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApiId: pulumi.Input.asInput<String>(map['restApiId']),
      stageName: pulumi.Input.asInput<String>(map['stageName']),
    );
  }
}
