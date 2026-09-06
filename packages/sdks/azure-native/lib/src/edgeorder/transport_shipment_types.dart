import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates Shipment Logistics type that the customer preferred.
enum TransportShipmentTypes implements pulumi.PulumiEnum<String> {
  customerManaged("CustomerManaged"),
  microsoftManaged("MicrosoftManaged");

  const TransportShipmentTypes(this.wireValue);
  @override
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
