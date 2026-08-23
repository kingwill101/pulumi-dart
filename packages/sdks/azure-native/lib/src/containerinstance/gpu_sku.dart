/// The SKU of the GPU resource.
enum GpuSku {
  valueK80("K80"),
  valueP100("P100"),
  valueV100("V100");

  const GpuSku(this.wireValue);
  final String wireValue;

  static GpuSku fromValue(String value) {
    for (final item in GpuSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GpuSku value: $value');
  }
}
