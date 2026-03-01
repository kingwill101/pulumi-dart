/// Indicates Shipment Logistics type that the customer preferred.
enum TransportShipmentTypes {
  customerManaged("CustomerManaged"),
  microsoftManaged("MicrosoftManaged");

  const TransportShipmentTypes(this.value);
  final String value;

  static TransportShipmentTypes fromValue(String value) {
    for (final item in TransportShipmentTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransportShipmentTypes value: $value');
  }
}

