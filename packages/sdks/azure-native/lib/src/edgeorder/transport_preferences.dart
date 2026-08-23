// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preferences related to the shipment logistics of the sku.
class TransportPreferences {
  /// Indicates Shipment Logistics type that the customer preferred.
  final pulumi.Input<String> preferredShipmentType;

  /// Creates a new [TransportPreferences].
  /// [preferredShipmentType] Indicates Shipment Logistics type that the customer preferred.
  const TransportPreferences({
    required this.preferredShipmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredShipmentType': preferredShipmentType,
    };
  }

  factory TransportPreferences.fromMap(Map<String, dynamic> map) {
    return TransportPreferences(
      preferredShipmentType: pulumi.Input.fromValue(map['preferredShipmentType'] as String),
    );
  }
}
