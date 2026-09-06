import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum FileSystemType implements pulumi.PulumiEnum<String> {
  eFS("EFS");

  const FileSystemType(this.wireValue);
  @override
  final String wireValue;

  static FileSystemType fromValue(String value) {
    for (final item in FileSystemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileSystemType value: $value');
  }
}
