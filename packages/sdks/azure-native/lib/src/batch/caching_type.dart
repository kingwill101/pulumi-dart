import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of caching to enable for the disk.
enum CachingType implements pulumi.PulumiEnum<String> {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const CachingType(this.wireValue);
  @override
  final String wireValue;

  static CachingType fromValue(String value) {
    for (final item in CachingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CachingType value: $value');
  }
}
