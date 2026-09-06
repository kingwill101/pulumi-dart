import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
enum EncryptionType implements pulumi.PulumiEnum<String> {
  valueSingle("Single"),
  valueDouble("Double");

  const EncryptionType(this.wireValue);
  @override
  final String wireValue;

  static EncryptionType fromValue(String value) {
    for (final item in EncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionType value: $value');
  }
}
