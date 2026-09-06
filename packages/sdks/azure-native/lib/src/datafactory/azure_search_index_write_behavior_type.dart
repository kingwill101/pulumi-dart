import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the write behavior when upserting documents into Azure Search Index.
enum AzureSearchIndexWriteBehaviorType implements pulumi.PulumiEnum<String> {
  merge("Merge"),
  upload("Upload");

  const AzureSearchIndexWriteBehaviorType(this.wireValue);
  @override
  final String wireValue;

  static AzureSearchIndexWriteBehaviorType fromValue(String value) {
    for (final item in AzureSearchIndexWriteBehaviorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSearchIndexWriteBehaviorType value: $value');
  }
}
