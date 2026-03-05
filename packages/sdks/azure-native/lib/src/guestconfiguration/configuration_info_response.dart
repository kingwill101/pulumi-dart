// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the configuration.
class ConfigurationInfoResponse {
  /// Name of the configuration.
  final pulumi.Input<String> name;
  /// Version of the configuration.
  final pulumi.Input<String> version;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

