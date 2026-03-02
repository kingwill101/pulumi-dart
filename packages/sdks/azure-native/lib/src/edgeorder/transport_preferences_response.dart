// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preferences related to the shipment logistics of the sku.
class TransportPreferencesResponse {
  /// Indicates Shipment Logistics type that the customer preferred.
  final pulumi.Input<String> preferredShipmentType;

  /// Creates a new [TransportPreferencesResponse].
  /// [preferredShipmentType] Indicates Shipment Logistics type that the customer preferred.
  TransportPreferencesResponse({
    required this.preferredShipmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredShipmentType': preferredShipmentType,
    };
  }

  factory TransportPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return TransportPreferencesResponse(
      preferredShipmentType: (map['preferredShipmentType'] as String).input(),
    );
  }
}

