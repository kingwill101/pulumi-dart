// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Configuration
class ConfigurationResponse {
  /// <p>The classification within a configuration.</p>
  final String? classification;
  /// <p>A list of additional configurations to apply within a configuration object.</p>
  final List<ConfigurationResponse>? configurations;
  /// <p>A set of properties specified within a configuration classification.</p>
  final Map<String, String>? properties;

  /// Creates a new [ConfigurationResponse].
  /// [classification] <p>The classification within a configuration.</p>
  /// [configurations] <p>A list of additional configurations to apply within a configuration object.</p>
  /// [properties] <p>A set of properties specified within a configuration classification.</p>
  ConfigurationResponse({
    this.classification,
    this.configurations,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<ConfigurationResponse, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'properties': ?properties,
    };
  }

  factory ConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationResponse(
      classification: map['classification'] == null ? null : map['classification'] as String,
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<ConfigurationResponse>(map['configurations'], (value) => ConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
    );
  }
}

