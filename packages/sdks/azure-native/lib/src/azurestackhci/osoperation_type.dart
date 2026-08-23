/// Operation sub type of OS Provisioning
enum OSOperationType {
  provision("Provision"),
  update("Update"),
  reImage("ReImage");

  const OSOperationType(this.wireValue);
  final String wireValue;

  static OSOperationType fromValue(String value) {
    for (final item in OSOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSOperationType value: $value');
  }
}
