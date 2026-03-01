/// Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
enum AzureFileShareAccessType {
  valueShared("Shared"),
  valueExclusive("Exclusive");

  const AzureFileShareAccessType(this.value);
  final String value;

  static AzureFileShareAccessType fromValue(String value) {
    for (final item in AzureFileShareAccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFileShareAccessType value: $value');
  }
}

