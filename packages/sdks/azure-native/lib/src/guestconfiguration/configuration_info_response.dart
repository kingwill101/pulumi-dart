// ignore_for_file: unused_element, unnecessary_cast


/// Information about the configuration.
class ConfigurationInfoResponse {
  /// Name of the configuration.
  final String name;
  /// Version of the configuration.
  final String version;

  /// Creates a new [ConfigurationInfoResponse].
  /// [name] Name of the configuration.
  /// [version] Version of the configuration.
  ConfigurationInfoResponse({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory ConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationInfoResponse(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

