/// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
enum TargetInstanceNatPolicy3 {
  noNat("NO_NAT");

  const TargetInstanceNatPolicy3(this.value);
  final String value;

  static TargetInstanceNatPolicy3 fromValue(String value) {
    for (final item in TargetInstanceNatPolicy3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetInstanceNatPolicy3 value: $value');
  }
}
