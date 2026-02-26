/// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
enum RouterNatNatIpAllocateOption2 {
  autoOnly("AUTO_ONLY"),
  manualOnly("MANUAL_ONLY");

  const RouterNatNatIpAllocateOption2(this.value);
  final String value;

  static RouterNatNatIpAllocateOption2 fromValue(String value) {
    for (final item in RouterNatNatIpAllocateOption2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatNatIpAllocateOption2 value: $value');
  }
}
