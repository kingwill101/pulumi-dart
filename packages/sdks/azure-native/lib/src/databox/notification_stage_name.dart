import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the stage.
enum NotificationStageName implements pulumi.PulumiEnum<String> {
  valueDevicePrepared("DevicePrepared"),
  valueDispatched("Dispatched"),
  valueDelivered("Delivered"),
  valuePickedUp("PickedUp"),
  valueAtAzureDC("AtAzureDC"),
  valueDataCopy("DataCopy"),
  valueCreated("Created"),
  valueShippedToCustomer("ShippedToCustomer");

  const NotificationStageName(this.wireValue);
  @override
  final String wireValue;

  static NotificationStageName fromValue(String value) {
    for (final item in NotificationStageName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationStageName value: $value');
  }
}
