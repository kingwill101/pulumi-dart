/// Azure AVS Node type
enum AzureAvsNodeType {
  unknown("Unknown"),
  aV36("AV36"),
  aV36P("AV36P"),
  aV52("AV52"),
  aV64("AV64");

  const AzureAvsNodeType(this.value);
  final String value;

  static AzureAvsNodeType fromValue(String value) {
    for (final item in AzureAvsNodeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureAvsNodeType value: $value');
  }
}

