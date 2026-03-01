// ignore_for_file: unused_element, unnecessary_cast


/// Tenant Configuration Properties with Provisioning state
class ConfigurationPropertiesResponse {
  /// When flag is set to true Markdown tile will require external storage configuration (URI). The inline content configuration will be prohibited.
  final bool? enforcePrivateMarkdownStorage;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [ConfigurationPropertiesResponse].
  /// [enforcePrivateMarkdownStorage] When flag is set to true Markdown tile will require external storage configuration (URI). The inline content configuration will be prohibited.
  /// [provisioningState] The status of the last operation.
  ConfigurationPropertiesResponse({
    this.enforcePrivateMarkdownStorage,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcePrivateMarkdownStorage': ?enforcePrivateMarkdownStorage,
      'provisioningState': provisioningState,
    };
  }

  factory ConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationPropertiesResponse(
      enforcePrivateMarkdownStorage: map['enforcePrivateMarkdownStorage'] == null ? null : map['enforcePrivateMarkdownStorage'] as bool,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

