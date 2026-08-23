// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Database Fleet properties.
class FleetPropertiesResponse {
  /// Fleet description.
  final pulumi.Input<String>? description;
  /// Provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [FleetPropertiesResponse].
  /// [description] Fleet description.
  /// [provisioningState] Provisioning state.
  const FleetPropertiesResponse({
    this.description,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
    };
  }

  factory FleetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
