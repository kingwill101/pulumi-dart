// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_version_snapshot_tool_open_api_tool_api_authentication/app_version_snapshot_tool_open_api_tool_api_authentication.dart';
import '../app_version_snapshot_tool_open_api_tool_service_directory_config/app_version_snapshot_tool_open_api_tool_service_directory_config.dart';
import '../app_version_snapshot_tool_open_api_tool_tls_config/app_version_snapshot_tool_open_api_tool_tls_config.dart';

class AppVersionSnapshotToolOpenApiTool {
  /// (Output)
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolApiAuthentication>?
      apiAuthentications;

  /// The description of the app version.
  final String? description;

  /// (Output)
  /// If true, the agent will ignore unknown fields in the API response for all
  /// operations defined in the OpenAPI schema.
  final bool? ignoreUnknownFields;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// The OpenAPI schema of the toolset.
  final String? openApiSchema;

  /// (Output)
  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig>?
      serviceDirectoryConfigs;

  /// (Output)
  /// The TLS configuration.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolTlsConfig>? tlsConfigs;

  /// (Output)
  /// The server URL of the Open API schema.
  /// This field is only set in toolsets in the environment dependencies
  /// during the export process if the schema contains a server url.
  /// During the import process, if this url is present in the environment dependencies
  /// and the schema has the $env_var placeholder,
  /// it will replace the placeholder in the schema.
  final String? url;

  AppVersionSnapshotToolOpenApiTool({
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
              AppVersionSnapshotToolOpenApiToolApiAuthentication,
              Map<String, dynamic>>(
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
              AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig,
              Map<String, dynamic>>(
          serviceDirectoryConfigsValue, (value) => value.toMap());
    }
    final tlsConfigsValue = tlsConfigs;
    if (tlsConfigsValue != null) {
      map['tlsConfigs'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolOpenApiToolTlsConfig,
          Map<String, dynamic>>(tlsConfigsValue, (value) => value.toMap());
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolOpenApiTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolOpenApiTool(
      apiAuthentications: map['apiAuthentications'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolOpenApiToolApiAuthentication>(
              map['apiAuthentications'],
              (value) =>
                  AppVersionSnapshotToolOpenApiToolApiAuthentication.fromMap(
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
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig>(
              map['serviceDirectoryConfigs'],
              (value) => AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      tlsConfigs: map['tlsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolTlsConfig>(
              map['tlsConfigs'],
              (value) => AppVersionSnapshotToolOpenApiToolTlsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
