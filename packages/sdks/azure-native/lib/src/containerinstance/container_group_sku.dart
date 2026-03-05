/// The SKU for a container group.
enum ContainerGroupSku {
  valueStandard("Standard"),
  valueDedicated("Dedicated"),
  valueConfidential("Confidential");

  const ContainerGroupSku(this.wireValue);
  final String wireValue;

  static ContainerGroupSku fromValue(String value) {
    for (final item in ContainerGroupSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupSku value: $value');
  }
}

