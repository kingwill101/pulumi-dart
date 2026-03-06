// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for ConfigurationReference Resource
class ConfigurationReferenceProperties {
  /// ArmId of Configuration resource
  final pulumi.Input<String>? configurationResourceId;

  /// Creates a new [ConfigurationReferenceProperties].
  /// [configurationResourceId] ArmId of Configuration resource
  const ConfigurationReferenceProperties({
    this.configurationResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationResourceId': ?configurationResourceId,
    };
  }

  factory ConfigurationReferenceProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationReferenceProperties(
      configurationResourceId: (() { final guardedValue = map['configurationResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

