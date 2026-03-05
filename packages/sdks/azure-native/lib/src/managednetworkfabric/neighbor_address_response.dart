// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Neighbor Address properties.
class NeighborAddressResponse {
  /// IP Address.
  final pulumi.Input<String>? address;
  /// Configuration state of the resource.
  final pulumi.Input<String> configurationState;

  /// Creates a new [NeighborAddressResponse].
  /// [address] IP Address.
  /// [configurationState] Configuration state of the resource.
  NeighborAddressResponse({
    this.address,
    required this.configurationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'configurationState': configurationState,
    };
  }

  factory NeighborAddressResponse.fromMap(Map<String, dynamic> map) {
    return NeighborAddressResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationState: pulumi.Input.fromValue(map['configurationState'] as String),
    );
  }
}

