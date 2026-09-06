import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether or not to use a customer managed key when encrypting data at rest
enum CustomerManagedKeys implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const CustomerManagedKeys(this.wireValue);
  @override
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
