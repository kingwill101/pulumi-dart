/// The allocation policy type.
enum AkriConnectorTemplateAllocationPolicy {
  bucketized("Bucketized");

  const AkriConnectorTemplateAllocationPolicy(this.value);
  final String value;

  static AkriConnectorTemplateAllocationPolicy fromValue(String value) {
    for (final item in AkriConnectorTemplateAllocationPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateAllocationPolicy value: $value');
  }
}

