import 'package:pulumi/pulumi.dart' as pulumi;

/// Action to be taken after a logoff during the ramp up period.
enum SessionHandlingOperation implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueDeallocate("Deallocate");

  const SessionHandlingOperation(this.wireValue);
  @override
  final String wireValue;

  static SessionHandlingOperation fromValue(String value) {
    for (final item in SessionHandlingOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionHandlingOperation value: $value');
  }
}
