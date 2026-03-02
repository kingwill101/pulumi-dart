// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Configuration
class Configuration {
  /// <p>The classification within a configuration.</p>
  final pulumi.Input<String>? classification;
  /// <p>A list of additional configurations to apply within a configuration object.</p>
  final pulumi.Input<List<Configuration>>? configurations;
  /// <p>A set of properties specified within a configuration classification.</p>
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [Configuration].
  /// [classification] <p>The classification within a configuration.</p>
  /// [configurations] <p>A list of additional configurations to apply within a configuration object.</p>
  /// [properties] <p>A set of properties specified within a configuration classification.</p>
  Configuration({
    this.classification,
    this.configurations,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<Configuration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<Configuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
    };
  }

  factory Configuration.fromMap(Map<String, dynamic> map) {
    return Configuration(
      classification: map['classification'] == null ? null : (map['classification']! as String).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<Configuration>(map['configurations']!, (value) => Configuration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
    );
  }
}

