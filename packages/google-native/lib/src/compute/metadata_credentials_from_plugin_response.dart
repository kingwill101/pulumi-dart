// ignore_for_file: unused_element, unnecessary_cast

/// [Deprecated] Custom authenticator credentials. Custom authenticator credentials.
class MetadataCredentialsFromPluginResponse {
  /// Plugin name.
  final String name;

  /// A text proto that conforms to a Struct type definition interpreted by the plugin.
  final String structConfig;

  /// Creates a new [MetadataCredentialsFromPluginResponse].
  /// [name] Plugin name.
  /// [structConfig] A text proto that conforms to a Struct type definition interpreted by the plugin.
  MetadataCredentialsFromPluginResponse({
    required this.name,
    required this.structConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'structConfig': structConfig};
  }

  factory MetadataCredentialsFromPluginResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetadataCredentialsFromPluginResponse(
      name: map['name'] as String,
      structConfig: map['structConfig'] as String,
    );
  }
}
