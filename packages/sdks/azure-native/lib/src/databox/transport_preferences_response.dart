// ignore_for_file: unused_element, unnecessary_cast


/// Preferences related to the shipment logistics of the sku
class TransportPreferencesResponse {
  /// Read only property which indicates whether transport preferences has been updated or not after device is prepared.
  final bool isUpdated;
  /// Indicates Shipment Logistics type that the customer preferred.
  final String preferredShipmentType;

  /// Creates a new [TransportPreferencesResponse].
  /// [isUpdated] Read only property which indicates whether transport preferences has been updated or not after device is prepared.
  /// [preferredShipmentType] Indicates Shipment Logistics type that the customer preferred.
  TransportPreferencesResponse({
    required this.isUpdated,
    required this.preferredShipmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isUpdated': isUpdated,
      'preferredShipmentType': preferredShipmentType,
    };
  }

  factory TransportPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return TransportPreferencesResponse(
      isUpdated: map['isUpdated'] as bool,
      preferredShipmentType: map['preferredShipmentType'] as String,
    );
  }
}

