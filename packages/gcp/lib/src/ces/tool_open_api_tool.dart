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
    return <String, dynamic>{
      'apiAuthentications': ?apiAuthentications == null
          ? null
          : pulumi.Input.encodeList<
              ToolOpenApiToolApiAuthentication,
              Map<String, dynamic>
            >(apiAuthentications!, (value) => value.toMap()),
      'description': ?description,
      'ignoreUnknownFields': ?ignoreUnknownFields,
      'name': ?name,
      'openApiSchema': ?openApiSchema,
      'serviceDirectoryConfigs': ?serviceDirectoryConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ToolOpenApiToolServiceDirectoryConfig,
              Map<String, dynamic>
            >(serviceDirectoryConfigs!, (value) => value.toMap()),
      'tlsConfigs': ?tlsConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ToolOpenApiToolTlsConfig,
              Map<String, dynamic>
            >(tlsConfigs!, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory ToolOpenApiTool.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiTool(
      apiAuthentications: map['apiAuthentications'] == null
          ? null
          : pulumi.Input.decodeList<ToolOpenApiToolApiAuthentication>(
              map['apiAuthentications'],
              (value) => ToolOpenApiToolApiAuthentication.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ignoreUnknownFields: map['ignoreUnknownFields'] == null
          ? null
          : map['ignoreUnknownFields'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      openApiSchema: map['openApiSchema'] == null
          ? null
          : map['openApiSchema'] as String,
      serviceDirectoryConfigs: map['serviceDirectoryConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ToolOpenApiToolServiceDirectoryConfig>(
              map['serviceDirectoryConfigs'],
              (value) => ToolOpenApiToolServiceDirectoryConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tlsConfigs: map['tlsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ToolOpenApiToolTlsConfig>(
              map['tlsConfigs'],
              (value) => ToolOpenApiToolTlsConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
