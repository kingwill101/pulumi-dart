/// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
enum TargetInstanceNatPolicy2 {
  noNat("NO_NAT");

  const TargetInstanceNatPolicy2(this.value);
  final String value;

  static TargetInstanceNatPolicy2 fromValue(String value) {
    for (final item in TargetInstanceNatPolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetInstanceNatPolicy2 value: $value');
  }
}
