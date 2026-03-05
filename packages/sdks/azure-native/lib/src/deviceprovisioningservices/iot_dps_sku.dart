/// Sku name.
enum IotDpsSku {
  valueS1("S1");

  const IotDpsSku(this.wireValue);
  final String wireValue;

  static IotDpsSku fromValue(String value) {
    for (final item in IotDpsSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IotDpsSku value: $value');
  }
}

