// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_get_export_get_export_args_doc}
/// Arguments for getExport.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_get_export_get_export_args_doc}
class GetExportArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;

  /// Version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is `1.0`.
  final pulumi.Input<String>? exportVersion;

  /// Whether to include API Gateway extensions in the exported API definition. API Gateway extensions are included by default.
  final pulumi.Input<bool>? includeExtensions;

  /// Output type of the exported definition file. Valid values are `JSON` and `YAML`.
  final pulumi.Input<String> outputType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Version of the API specification to use. `OAS30`, for OpenAPI 3.0, is the only supported value.
  final pulumi.Input<String> specification;

  /// Name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.
  final pulumi.Input<String>? stageName;

  /// Creates a new [GetExportArgs].
  /// [apiId] API identifier.
  /// [exportVersion] Version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is `1.0`.
  /// [includeExtensions] Whether to include API Gateway extensions in the exported API definition. API Gateway extensions are included by default.
  /// [outputType] Output type of the exported definition file. Valid values are `JSON` and `YAML`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [specification] Version of the API specification to use. `OAS30`, for OpenAPI 3.0, is the only supported value.
  /// [stageName] Name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.
  GetExportArgs({
    required String apiId,
    String? exportVersion,
    bool? includeExtensions,
    required String outputType,
    String? region,
    required String specification,
    String? stageName,
  }) : apiId = pulumi.Input.asInput<String>(apiId),
       exportVersion = pulumi.Input.asOptionalInput<String>(exportVersion),
       includeExtensions = pulumi.Input.asOptionalInput<bool>(
         includeExtensions,
       ),
       outputType = pulumi.Input.asInput<String>(outputType),
       region = pulumi.Input.asOptionalInput<String>(region),
       specification = pulumi.Input.asInput<String>(specification),
       stageName = pulumi.Input.asOptionalInput<String>(stageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'exportVersion': ?exportVersion,
      'includeExtensions': ?includeExtensions,
      'outputType': outputType,
      'region': ?region,
      'specification': specification,
      'stageName': ?stageName,
    };
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      apiId: map['apiId'] as String,
      exportVersion: map['exportVersion'] == null
          ? null
          : map['exportVersion'] as String,
      includeExtensions: map['includeExtensions'] == null
          ? null
          : map['includeExtensions'] as bool,
      outputType: map['outputType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      specification: map['specification'] as String,
      stageName: map['stageName'] == null ? null : map['stageName'] as String,
    );
  }
}
