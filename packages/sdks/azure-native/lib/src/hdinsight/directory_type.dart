import 'package:pulumi/pulumi.dart' as pulumi;

/// The directory type.
enum DirectoryType implements pulumi.PulumiEnum<String> {
  valueActiveDirectory("ActiveDirectory");

  const DirectoryType(this.wireValue);
  @override
  final String wireValue;

  static DirectoryType fromValue(String value) {
    for (final item in DirectoryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DirectoryType value: $value');
  }
}
