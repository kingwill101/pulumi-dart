/// Whether or not to use a customer managed key when encrypting data at rest
enum CustomerManagedKeys {
  enabled("Enabled"),
  disabled("Disabled");

  const CustomerManagedKeys(this.wireValue);
  final String wireValue;

  static CustomerManagedKeys fromValue(String value) {
    for (final item in CustomerManagedKeys.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomerManagedKeys value: $value');
  }
}
