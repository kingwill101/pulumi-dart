/// SQL image sku.
enum SqlVmGroupImageSku {
  developer("Developer"),
  enterprise("Enterprise");

  const SqlVmGroupImageSku(this.value);
  final String value;

  static SqlVmGroupImageSku fromValue(String value) {
    for (final item in SqlVmGroupImageSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlVmGroupImageSku value: $value');
  }
}

