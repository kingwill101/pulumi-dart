// ignore_for_file: unused_element, unnecessary_cast

import '../toolset_open_api_toolset_api_authentication/toolset_open_api_toolset_api_authentication.dart';
import '../toolset_open_api_toolset_service_directory_config/toolset_open_api_toolset_service_directory_config.dart';
import '../toolset_open_api_toolset_tls_config/toolset_open_api_toolset_tls_config.dart';

class ToolsetOpenApiToolset {
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final ToolsetOpenApiToolsetApiAuthentication? apiAuthentication;

  /// If true, the agent will ignore unknown fields in the API response for all
  /// operations defined in the OpenAPI schema.
  final bool? ignoreUnknownFields;

  /// The OpenAPI schema of the toolset.
  final String openApiSchema;

  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final ToolsetOpenApiToolsetServiceDirectoryConfig? serviceDirectoryConfig;

  /// The TLS configuration.
  /// Structure is documented below.
  final ToolsetOpenApiToolsetTlsConfig? tlsConfig;

  /// (Output)
  /// The server URL of the Open API schema.
  /// This field is only set in toolsets in the environment dependencies
  /// during the export process if the schema contains a server url.
  /// During the import process, if this url is present in the environment dependencies
  /// and the schema has the $env_var placeholder,
  /// it will replace the placeholder in the schema.
  final String? url;

  ToolsetOpenApiToolset({
    this.apiAuthentication,
    this.ignoreUnknownFields,
    required this.openApiSchema,
    this.serviceDirectoryConfig,
    this.tlsConfig,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiAuthenticationValue = apiAuthentication;
    if (apiAuthenticationValue != null) {
      map['apiAuthentication'] = apiAuthenticationValue.toMap();
    }
    final ignoreUnknownFieldsValue = ignoreUnknownFields;
    if (ignoreUnknownFieldsValue != null) {
      map['ignoreUnknownFields'] = ignoreUnknownFieldsValue;
    }
    map['openApiSchema'] = openApiSchema;
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = serviceDirectoryConfigValue.toMap();
    }
    final tlsConfigValue = tlsConfig;
    if (tlsConfigValue != null) {
      map['tlsConfig'] = tlsConfigValue.toMap();
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory ToolsetOpenApiToolset.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolset(
      apiAuthentication: map['apiAuthentication'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthentication.fromMap(
              (map['apiAuthentication'] as Map).cast<String, dynamic>()),
      ignoreUnknownFields: map['ignoreUnknownFields'] == null
          ? null
          : map['ignoreUnknownFields'] as bool,
      openApiSchema: map['openApiSchema'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ToolsetOpenApiToolsetServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      tlsConfig: map['tlsConfig'] == null
          ? null
          : ToolsetOpenApiToolsetTlsConfig.fromMap(
              (map['tlsConfig'] as Map).cast<String, dynamic>()),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
