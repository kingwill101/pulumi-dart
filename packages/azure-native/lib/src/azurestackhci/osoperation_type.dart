/// Operation sub type of OS Provisioning
enum OSOperationType {
  provision("Provision"),
  update("Update"),
  reImage("ReImage");

  const OSOperationType(this.value);
  final String value;

  static OSOperationType fromValue(String value) {
    for (final item in OSOperationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSOperationType value: $value');
  }
}

