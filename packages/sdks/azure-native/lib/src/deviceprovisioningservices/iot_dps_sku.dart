/// Sku name.
enum IotDpsSku {
  valueS1("S1");

  const IotDpsSku(this.value);
  final String value;

  static IotDpsSku fromValue(String value) {
    for (final item in IotDpsSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IotDpsSku value: $value');
  }
}

