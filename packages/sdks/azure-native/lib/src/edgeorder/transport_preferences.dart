// ignore_for_file: unused_element, unnecessary_cast


/// Preferences related to the shipment logistics of the sku.
class TransportPreferences {
  /// Indicates Shipment Logistics type that the customer preferred.
  final String preferredShipmentType;

  /// Creates a new [TransportPreferences].
  /// [preferredShipmentType] Indicates Shipment Logistics type that the customer preferred.
  TransportPreferences({
    required this.preferredShipmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredShipmentType': preferredShipmentType,
    };
  }

  factory TransportPreferences.fromMap(Map<String, dynamic> map) {
    return TransportPreferences(
      preferredShipmentType: map['preferredShipmentType'] as String,
    );
  }
}

