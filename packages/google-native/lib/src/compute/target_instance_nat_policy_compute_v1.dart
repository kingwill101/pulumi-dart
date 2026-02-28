/// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
enum TargetInstanceNatPolicyComputeV1 {
  noNat("NO_NAT");

  const TargetInstanceNatPolicyComputeV1(this.value);
  final String value;

  static TargetInstanceNatPolicyComputeV1 fromValue(String value) {
    for (final item in TargetInstanceNatPolicyComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TargetInstanceNatPolicyComputeV1 value: $value');
  }
}
