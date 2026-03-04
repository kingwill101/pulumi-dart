/// The allocation policy type.
enum AkriConnectorTemplateAllocationPolicy {
  bucketized("Bucketized");

  const AkriConnectorTemplateAllocationPolicy(this.wireValue);
  final String wireValue;

  static AkriConnectorTemplateAllocationPolicy fromValue(String value) {
    for (final item in AkriConnectorTemplateAllocationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AkriConnectorTemplateAllocationPolicy value: $value',
    );
  }
}
