/// Name of the stage.
enum NotificationStageName {
  valueDevicePrepared("DevicePrepared"),
  valueDispatched("Dispatched"),
  valueDelivered("Delivered"),
  valuePickedUp("PickedUp"),
  valueAtAzureDC("AtAzureDC"),
  valueDataCopy("DataCopy"),
  valueCreated("Created"),
  valueShippedToCustomer("ShippedToCustomer");

  const NotificationStageName(this.wireValue);
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
