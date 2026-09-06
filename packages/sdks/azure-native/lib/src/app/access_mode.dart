import 'package:pulumi/pulumi.dart' as pulumi;

/// Access mode for storage
enum AccessMode implements pulumi.PulumiEnum<String> {
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

  const AccessMode(this.wireValue);
  @override
  final String wireValue;

  static AccessMode fromValue(String value) {
    for (final item in AccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessMode value: $value');
  }
}
