// ignore_for_file: unused_element, unnecessary_cast

import '../cx_tool_version_tool_open_api_spec_authentication/cx_tool_version_tool_open_api_spec_authentication.dart';
import '../cx_tool_version_tool_open_api_spec_service_directory_config/cx_tool_version_tool_open_api_spec_service_directory_config.dart';
import '../cx_tool_version_tool_open_api_spec_tls_config/cx_tool_version_tool_open_api_spec_tls_config.dart';

class CxToolVersionToolOpenApiSpec {
  /// Optional. Authentication information required by the API.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpecAuthentication? authentication;

  /// Optional. Service Directory configuration.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpecServiceDirectoryConfig?
      serviceDirectoryConfig;

  /// The OpenAPI schema specified as a text.
  /// This field is part of a union field <span pulumi-lang-nodejs="`schema`" pulumi-lang-dotnet="`Schema`" pulumi-lang-go="`schema`" pulumi-lang-python="`schema`" pulumi-lang-yaml="`schema`" pulumi-lang-java="`schema`">`schema`</span>: only one of `textSchema` may be set.
  final String textSchema;

  /// Optional. TLS configuration for the HTTPS verification.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpecTlsConfig? tlsConfig;

  CxToolVersionToolOpenApiSpec({
    this.authentication,
    this.serviceDirectoryConfig,
    required this.textSchema,
    this.tlsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] = authenticationValue.toMap();
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = serviceDirectoryConfigValue.toMap();
    }
    map['textSchema'] = textSchema;
    final tlsConfigValue = tlsConfig;
    if (tlsConfigValue != null) {
      map['tlsConfig'] = tlsConfigValue.toMap();
    }
    return map;
  }

  factory CxToolVersionToolOpenApiSpec.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpec(
      authentication: map['authentication'] == null
          ? null
          : CxToolVersionToolOpenApiSpecAuthentication.fromMap(
              (map['authentication'] as Map).cast<String, dynamic>()),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : CxToolVersionToolOpenApiSpecServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      textSchema: map['textSchema'] as String,
      tlsConfig: map['tlsConfig'] == null
          ? null
          : CxToolVersionToolOpenApiSpecTlsConfig.fromMap(
              (map['tlsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
