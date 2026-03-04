// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Automanage configuration profile properties.
class ConfigurationProfileProperties {
  /// configuration dictionary of the configuration profile.
  final pulumi.Input<dynamic>? configuration;

  /// Creates a new [ConfigurationProfileProperties].
  /// [configuration] configuration dictionary of the configuration profile.
  ConfigurationProfileProperties({this.configuration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configuration': ?configuration};
  }

  factory ConfigurationProfileProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileProperties(
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
