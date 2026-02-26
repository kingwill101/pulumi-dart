// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExport.
class GetExportArgs {
  /// Content-type of the export. Valid values are `application/json` and `application/yaml` are supported for <span pulumi-lang-nodejs="`exportType`" pulumi-lang-dotnet="`ExportType`" pulumi-lang-go="`exportType`" pulumi-lang-python="`export_type`" pulumi-lang-yaml="`exportType`" pulumi-lang-java="`exportType`">`export_type`</span> <span pulumi-lang-nodejs="`ofoas30`" pulumi-lang-dotnet="`Ofoas30`" pulumi-lang-go="`ofoas30`" pulumi-lang-python="`ofoas30`" pulumi-lang-yaml="`ofoas30`" pulumi-lang-java="`ofoas30`">`ofoas30`</span> and <span pulumi-lang-nodejs="`swagger`" pulumi-lang-dotnet="`Swagger`" pulumi-lang-go="`swagger`" pulumi-lang-python="`swagger`" pulumi-lang-yaml="`swagger`" pulumi-lang-java="`swagger`">`swagger`</span>.
  final Input<String>? accepts;

  /// Type of export. Acceptable values are <span pulumi-lang-nodejs="`oas30`" pulumi-lang-dotnet="`Oas30`" pulumi-lang-go="`oas30`" pulumi-lang-python="`oas30`" pulumi-lang-yaml="`oas30`" pulumi-lang-java="`oas30`">`oas30`</span> for OpenAPI 3.0.x and <span pulumi-lang-nodejs="`swagger`" pulumi-lang-dotnet="`Swagger`" pulumi-lang-go="`swagger`" pulumi-lang-python="`swagger`" pulumi-lang-yaml="`swagger`" pulumi-lang-java="`swagger`">`swagger`</span> for Swagger/OpenAPI 2.0.
  final Input<String> exportType;

  /// Key-value map of query string parameters that specify properties of the export. the following parameters are supported: `extensions='integrations'` or `extensions='apigateway'` will export the API with x-amazon-apigateway-integration extensions. `extensions='authorizers'` will export the API with x-amazon-apigateway-authorizer extensions.
  final Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the associated REST API.
  final Input<String> restApiId;

  /// Name of the Stage that will be exported.
  final Input<String> stageName;

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
      accepts: Input.asOptionalInput<String>(map['accepts']),
      exportType: Input.asInput<String>(map['exportType']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
      stageName: Input.asInput<String>(map['stageName']),
    );
  }
}
