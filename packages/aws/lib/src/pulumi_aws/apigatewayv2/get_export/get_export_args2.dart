// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExport.
class GetExportArgs2 {
  /// API identifier.
  final Input<String> apiId;

  /// Version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is `1.0`.
  final Input<String>? exportVersion;

  /// Whether to include API Gateway extensions in the exported API definition. API Gateway extensions are included by default.
  final Input<bool>? includeExtensions;

  /// Output type of the exported definition file. Valid values are `JSON` and `YAML`.
  final Input<String> outputType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Version of the API specification to use. `OAS30`, for OpenAPI 3.0, is the only supported value.
  final Input<String> specification;

  /// Name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.
  final Input<String>? stageName;

  GetExportArgs2({
    required this.apiId,
    this.exportVersion,
    this.includeExtensions,
    required this.outputType,
    this.region,
    required this.specification,
    this.stageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final exportVersionValue = exportVersion;
    if (exportVersionValue != null) {
      map['exportVersion'] = exportVersionValue;
    }
    final includeExtensionsValue = includeExtensions;
    if (includeExtensionsValue != null) {
      map['includeExtensions'] = includeExtensionsValue;
    }
    map['outputType'] = outputType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['specification'] = specification;
    final stageNameValue = stageName;
    if (stageNameValue != null) {
      map['stageName'] = stageNameValue;
    }
    return map;
  }

  factory GetExportArgs2.fromMap(Map<String, dynamic> map) {
    return GetExportArgs2(
      apiId: Input.asInput<String>(map['apiId']),
      exportVersion: Input.asOptionalInput<String>(map['exportVersion']),
      includeExtensions: Input.asOptionalInput<bool>(map['includeExtensions']),
      outputType: Input.asInput<String>(map['outputType']),
      region: Input.asOptionalInput<String>(map['region']),
      specification: Input.asInput<String>(map['specification']),
      stageName: Input.asOptionalInput<String>(map['stageName']),
    );
  }
}
