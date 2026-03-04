/// Specify the write behavior when upserting documents into Azure Search Index.
enum AzureSearchIndexWriteBehaviorType {
  valueMerge("Merge"),
  valueUpload("Upload");

  const AzureSearchIndexWriteBehaviorType(this.wireValue);
  final String wireValue;

  static AzureSearchIndexWriteBehaviorType fromValue(String value) {
    for (final item in AzureSearchIndexWriteBehaviorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AzureSearchIndexWriteBehaviorType value: $value',
    );
  }
}
