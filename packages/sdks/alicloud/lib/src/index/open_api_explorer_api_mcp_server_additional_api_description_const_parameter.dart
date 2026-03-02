// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter {
  /// Parameter location. Currently, except for ROA-style body parameters (which support up to two levels), nested parameter configurations beyond two levels are not supported. If you need to configure a composite data structure, set the Value to a JSON object.
  ///
  /// For RPC-style APIs, examples include:
  /// - Name: sets the Name parameter to a fixed value.
  ///
  /// For ROA-style APIs, examples include:
  /// - Name: sets a query or path parameter named Name to a fixed value;
  /// - body.Name: sets the Name field within the request body to a fixed value.
  ///
  /// Configurations such as body.Name.Sub are not supported. If you need to set body.Name as a composite structure, specify the Value as a JSON object—for example, {"Sub": "xxx"}.
  ///
  /// > **NOTE:** x_mcp_region_id is a built-in MCP parameter used to control the region and can also be configured as a fixed value to invoke services in a specified region.>
  final pulumi.Input<String>? key;
  /// This property does not have a description in the spec, please add it before generating code.
  final pulumi.Input<String>? value;

  /// Creates a new [OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter].
  /// [key] Parameter location. Currently, except for ROA-style body parameters (which support up to two levels), nested parameter configurations beyond two levels are not supported. If you need to configure a composite data structure, set the Value to a JSON object.
  /// [value] This property does not have a description in the spec, please add it before generating code.
  OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter.fromMap(Map<String, dynamic> map) {
    return OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

