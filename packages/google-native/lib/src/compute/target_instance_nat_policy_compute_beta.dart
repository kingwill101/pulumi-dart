/// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
enum TargetInstanceNatPolicyComputeBeta {
  noNat("NO_NAT");

  const TargetInstanceNatPolicyComputeBeta(this.value);
  final String value;

  static TargetInstanceNatPolicyComputeBeta fromValue(String value) {
    for (final item in TargetInstanceNatPolicyComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TargetInstanceNatPolicyComputeBeta value: $value',
    );
  }
}
