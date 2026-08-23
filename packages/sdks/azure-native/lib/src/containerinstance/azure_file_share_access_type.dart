/// Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
enum AzureFileShareAccessType {
  shared("Shared"),
  exclusive("Exclusive");

  const AzureFileShareAccessType(this.wireValue);
  final String wireValue;

  static AzureFileShareAccessType fromValue(String value) {
    for (final item in AzureFileShareAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFileShareAccessType value: $value');
  }
}
