/// The SKU for a container group.
enum ContainerGroupSku {
  valueStandard("Standard"),
  valueDedicated("Dedicated"),
  valueConfidential("Confidential");

  const ContainerGroupSku(this.value);
  final String value;

  static ContainerGroupSku fromValue(String value) {
    for (final item in ContainerGroupSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupSku value: $value');
  }
}

