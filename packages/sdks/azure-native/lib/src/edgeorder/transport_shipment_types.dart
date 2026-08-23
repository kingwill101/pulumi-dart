/// Indicates Shipment Logistics type that the customer preferred.
enum TransportShipmentTypes {
  customerManaged("CustomerManaged"),
  microsoftManaged("MicrosoftManaged");

  const TransportShipmentTypes(this.wireValue);
  final String wireValue;

  static TransportShipmentTypes fromValue(String value) {
    for (final item in TransportShipmentTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransportShipmentTypes value: $value');
  }
}
