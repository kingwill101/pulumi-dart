/// NIC type
enum NICType {
  valueVmxnet3("vmxnet3"),
  valueVmxnet2("vmxnet2"),
  valueVmxnet("vmxnet"),
  valueE1000("e1000"),
  valueE1000e("e1000e"),
  valuePcnet32("pcnet32");

  const NICType(this.wireValue);
  final String wireValue;

  static NICType fromValue(String value) {
    for (final item in NICType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NICType value: $value');
  }
}
