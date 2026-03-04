// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Automanage configuration profile properties.
class ConfigurationProfilePropertiesResponse {
  /// configuration dictionary of the configuration profile.
  final pulumi.Input<dynamic>? configuration;

  /// Creates a new [ConfigurationProfilePropertiesResponse].
  /// [configuration] configuration dictionary of the configuration profile.
  ConfigurationProfilePropertiesResponse({this.configuration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configuration': ?configuration};
  }

  factory ConfigurationProfilePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigurationProfilePropertiesResponse(
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
