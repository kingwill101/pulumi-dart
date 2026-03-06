// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Configuration
class ConfigurationResponse {
  /// &lt;p&gt;The classification within a configuration.&lt;/p&gt;
  final pulumi.Input<String>? classification;
  /// &lt;p&gt;A list of additional configurations to apply within a configuration object.&lt;/p&gt;
  final pulumi.Input<List<ConfigurationResponse>>? configurations;
  /// &lt;p&gt;A set of properties specified within a configuration classification.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [ConfigurationResponse].
  /// [classification] &lt;p&gt;The classification within a configuration.&lt;/p&gt;
  /// [configurations] &lt;p&gt;A list of additional configurations to apply within a configuration object.&lt;/p&gt;
  /// [properties] &lt;p&gt;A set of properties specified within a configuration classification.&lt;/p&gt;
  const ConfigurationResponse({
    this.classification,
    this.configurations,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationResponse>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<ConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
    };
  }

  factory ConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationResponse(
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationResponse>(guardedValue, (value) => ConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

