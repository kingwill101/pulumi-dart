import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Class Access Mode
enum AccessMode implements pulumi.PulumiEnum<String> {
  readWriteOnce("ReadWriteOnce"),
  readWriteMany("ReadWriteMany");

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
