/// Specify the write behavior when upserting documents into Azure Search Index.
enum AzureSearchIndexWriteBehaviorType {
  valueMerge("Merge"),
  valueUpload("Upload");

  const AzureSearchIndexWriteBehaviorType(this.value);
  final String value;

  static AzureSearchIndexWriteBehaviorType fromValue(String value) {
    for (final item in AzureSearchIndexWriteBehaviorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSearchIndexWriteBehaviorType value: $value');
  }
}

