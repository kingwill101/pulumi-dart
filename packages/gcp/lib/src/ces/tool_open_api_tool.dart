// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_tool_api_authentication.dart';
import 'tool_open_api_tool_service_directory_config.dart';
import 'tool_open_api_tool_tls_config.dart';

class ToolOpenApiTool {
  /// (Output)
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final List<ToolOpenApiToolApiAuthentication>? apiAuthentications;

  /// (Output)
  /// The description of the system tool.
  final String? description;

  /// (Output)
  /// If true, the agent will ignore unknown fields in the API response.
  final bool? ignoreUnknownFields;

  /// (Output)
  /// The name of the system tool.
  final String? name;

  /// (Output)
  /// The OpenAPI schema in JSON or YAML format.
  final String? openApiSchema;

  /// (Output)
  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final List<ToolOpenApiToolServiceDirectoryConfig>? serviceDirectoryConfigs;

  /// (Output)
  /// The TLS configuration.
  /// Structure is documented below.
  final List<ToolOpenApiToolTlsConfig>? tlsConfigs;

  /// (Output)
  /// The server URL of the Open API schema. This field is only set in tools in the
  /// environment dependencies during the export process if the schema contains a
  /// server url. During the import process, if this url is present in the environment
  /// dependencies and the schema has the $env_var placeholder, it will replace the
  /// placeholder in the schema.
  final String? url;

  /// Creates a new [ToolOpenApiTool].
  /// [apiAuthentications] (Output)
  /// [description] (Output)
  /// [ignoreUnknownFields] (Output)
  /// [name] (Output)
  /// [openApiSchema] (Output)
  /// [serviceDirectoryConfigs] (Output)
  /// [tlsConfigs] (Output)
  /// [url] (Output)
  ToolOpenApiTool({
    this.apiAuthentications,
    this.description,
    this.ignoreUnknownFields,
    this.name,
    this.openApiSchema,
    this.serviceDirectoryConfigs,
    this.tlsConfigs,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiAuthenticationsValue = apiAuthentications;
    if (apiAuthenticationsValue != null) {
      map['apiAuthentications'] = pulumi.Input.encodeList<
              ToolOpenApiToolApiAuthentication, Map<String, dynamic>>(
          apiAuthenticationsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ignoreUnknownFieldsValue = ignoreUnknownFields;
    if (ignoreUnknownFieldsValue != null) {
      map['ignoreUnknownFields'] = ignoreUnknownFieldsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final openApiSchemaValue = openApiSchema;
    if (openApiSchemaValue != null) {
      map['openApiSchema'] = openApiSchemaValue;
    }
    final serviceDirectoryConfigsValue = serviceDirectoryConfigs;
    if (serviceDirectoryConfigsValue != null) {
      map['serviceDirectoryConfigs'] = pulumi.Input.encodeList<
              ToolOpenApiToolServiceDirectoryConfig, Map<String, dynamic>>(
          serviceDirectoryConfigsValue, (value) => value.toMap());
    }
    final tlsConfigsValue = tlsConfigs;
    if (tlsConfigsValue != null) {
      map['tlsConfigs'] = pulumi.Input.encodeList<ToolOpenApiToolTlsConfig,
          Map<String, dynamic>>(tlsConfigsValue, (value) => value.toMap());
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory ToolOpenApiTool.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiTool(
      apiAuthentications: map['apiAuthentications'] == null
          ? null
          : pulumi.Input.decodeList<ToolOpenApiToolApiAuthentication>(
              map['apiAuthentications'],
              (value) => ToolOpenApiToolApiAuthentication.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      ignoreUnknownFields: map['ignoreUnknownFields'] == null
          ? null
          : map['ignoreUnknownFields'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      openApiSchema:
          map['openApiSchema'] == null ? null : map['openApiSchema'] as String,
      serviceDirectoryConfigs: map['serviceDirectoryConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ToolOpenApiToolServiceDirectoryConfig>(
              map['serviceDirectoryConfigs'],
              (value) => ToolOpenApiToolServiceDirectoryConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tlsConfigs: map['tlsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ToolOpenApiToolTlsConfig>(
              map['tlsConfigs'],
              (value) => ToolOpenApiToolTlsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
