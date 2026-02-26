// ignore_for_file: unused_element, unnecessary_cast

/// [Deprecated] Custom authenticator credentials. Custom authenticator credentials.
class MetadataCredentialsFromPluginResponse {
  /// Plugin name.
  final String name;

  /// A text proto that conforms to a Struct type definition interpreted by the plugin.
  final String structConfig;

  MetadataCredentialsFromPluginResponse({
    required this.name,
    required this.structConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['structConfig'] = structConfig;
    return map;
  }

  factory MetadataCredentialsFromPluginResponse.fromMap(
      Map<String, dynamic> map) {
    return MetadataCredentialsFromPluginResponse(
      name: map['name'] as String,
      structConfig: map['structConfig'] as String,
    );
  }
}
