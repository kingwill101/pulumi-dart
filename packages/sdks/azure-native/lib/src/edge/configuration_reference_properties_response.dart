// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for ConfigurationReference Resource
class ConfigurationReferencePropertiesResponse {
  /// ArmId of Configuration resource
  final pulumi.Input<String>? configurationResourceId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ConfigurationReferencePropertiesResponse].
  /// [configurationResourceId] ArmId of Configuration resource
  /// [provisioningState] The status of the last operation.
  const ConfigurationReferencePropertiesResponse({
    this.configurationResourceId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationResourceId': ?configurationResourceId,
      'provisioningState': provisioningState,
    };
  }

  factory ConfigurationReferencePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationReferencePropertiesResponse(
      configurationResourceId: (() { final guardedValue = map['configurationResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

