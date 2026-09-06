import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of storage target
enum StorageTargetType implements pulumi.PulumiEnum<String> {
  valueIscsi("Iscsi"),
  valueNone("None");

  const StorageTargetType(this.wireValue);
  @override
  final String wireValue;

  static StorageTargetType fromValue(String value) {
    for (final item in StorageTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTargetType value: $value');
  }
}
