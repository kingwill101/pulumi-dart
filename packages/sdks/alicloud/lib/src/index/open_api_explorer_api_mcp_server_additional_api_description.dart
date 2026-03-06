// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_explorer_api_mcp_server_additional_api_description_const_parameter.dart';

class OpenApiExplorerApiMcpServerAdditionalApiDescription {
  /// The API name, such as ListApiMcpServers.
  final pulumi.Input<String>? apiName;
  /// API structure definition information. You can use this parameter to directly modify the API description and parameter list. You can obtain the API definition information from an API endpoint such as https://api.aliyun.com/meta/v1/products/Ecs/versions/2014-05-26/apis/DescribeInstances/api.json.
  ///
  /// &gt; **NOTE:** Note that required parameters must not be removed; otherwise, calls by the large model will continuously fail due to missing required parameters.&gt;
  final pulumi.Input<String>? apiOverrideJson;
  /// API version information, typically in date format, such as 2014-05-26.
  final pulumi.Input<String>? apiVersion;
  /// Constant configuration information. When the MCP Server needs to fix certain tool parameters to specific values, you can configure this parameter to enforce those fixed values.
  /// Parameters configured as constants will not be returned as tool parameters through the MCP protocol. Large models cannot define these parameters. During execution, the MCP Server merges these constant values into the API call parameters.   See `const_parameters` below.
  final pulumi.Input<List<OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter>>? constParameters;
  /// By default, this feature is disabled, and the MCP Server returns only the structure definition of input parameters. When enabled, the MCP Server returns the output parameter structure definition via the MCP protocol.
  ///
  /// &gt; **NOTE:** The output parameter structure may be complex. Enabling this feature significantly increases the MCP context size. Use this feature with caution.&gt;
  final pulumi.Input<bool>? enableOutputSchema;
  /// Call interception. When this parameter is enabled, the MCP Server returns the complete CLI command name instead of directly executing the API call. Use this option when the API call is long-running or requires interaction with local files. The MCP Server enforces theoretical time limits for single-tool invocations:
  /// - SSE protocol: up to 30 minutes
  /// - Streamable HTTP protocol: up to 1 minute
  ///
  /// For tools whose single API execution exceeds 30 minutes, we recommend enabling this parameter. Install the CLI and complete account authentication on the machine initiating the call, then combine it with this tool for optimal results.
  ///
  /// &gt; **NOTE:** The identity used to execute the CLI differs from the identity used by the MCP Server. Pay attention to the associated security risks.&gt;
  final pulumi.Input<bool>? executeCliCommand;
  /// The name of the cloud product, such as Ecs.
  final pulumi.Input<String>? product;

  /// Creates a new [OpenApiExplorerApiMcpServerAdditionalApiDescription].
  /// [apiName] The API name, such as ListApiMcpServers.
  /// [apiOverrideJson] API structure definition information. You can use this parameter to directly modify the API description and parameter list. You can obtain the API definition information from an API endpoint such as https://api.aliyun.com/meta/v1/products/Ecs/versions/2014-05-26/apis/DescribeInstances/api.json.
  /// [apiVersion] API version information, typically in date format, such as 2014-05-26.
  /// [constParameters] Constant configuration information. When the MCP Server needs to fix certain tool parameters to specific values, you can configure this parameter to enforce those fixed values.
  /// [enableOutputSchema] By default, this feature is disabled, and the MCP Server returns only the structure definition of input parameters. When enabled, the MCP Server returns the output parameter structure definition via the MCP protocol.
  /// [executeCliCommand] Call interception. When this parameter is enabled, the MCP Server returns the complete CLI command name instead of directly executing the API call. Use this option when the API call is long-running or requires interaction with local files. The MCP Server enforces theoretical time limits for single-tool invocations:
  /// [product] The name of the cloud product, such as Ecs.
  const OpenApiExplorerApiMcpServerAdditionalApiDescription({
    this.apiName,
    this.apiOverrideJson,
    this.apiVersion,
    this.constParameters,
    this.enableOutputSchema,
    this.executeCliCommand,
    this.product,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': ?apiName,
      'apiOverrideJson': ?apiOverrideJson,
      'apiVersion': ?apiVersion,
      'constParameters': ?pulumi.Input.mapOptionalInputValue<List<OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter>, List<Map<String, dynamic>>>(constParameters, (value) => pulumi.Input.encodeList<OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableOutputSchema': ?enableOutputSchema,
      'executeCliCommand': ?executeCliCommand,
      'product': ?product,
    };
  }

  factory OpenApiExplorerApiMcpServerAdditionalApiDescription.fromMap(Map<String, dynamic> map) {
    return OpenApiExplorerApiMcpServerAdditionalApiDescription(
      apiName: (() { final guardedValue = map['apiName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiOverrideJson: (() { final guardedValue = map['apiOverrideJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      constParameters: (() { final guardedValue = map['constParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter>(guardedValue, (value) => OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableOutputSchema: (() { final guardedValue = map['enableOutputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      executeCliCommand: (() { final guardedValue = map['executeCliCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

