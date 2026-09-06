import 'package:pulumi/pulumi.dart' as pulumi;

/// Source Kind to pull the configuration data from.
enum SourceKindType implements pulumi.PulumiEnum<String> {
  valueGitRepository("GitRepository"),
  valueBucket("Bucket"),
  valueAzureBlob("AzureBlob");

  const SourceKindType(this.wireValue);
  @override
  final String wireValue;

  static SourceKindType fromValue(String value) {
    for (final item in SourceKindType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceKindType value: $value');
  }
}
