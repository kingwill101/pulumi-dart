import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact source's type.
enum SourceControlType implements pulumi.PulumiEnum<String> {
  vsoGit("VsoGit"),
  gitHub("GitHub"),
  storageAccount("StorageAccount");

  const SourceControlType(this.wireValue);
  @override
  final String wireValue;

  static SourceControlType fromValue(String value) {
    for (final item in SourceControlType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceControlType value: $value');
  }
}
