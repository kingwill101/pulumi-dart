/// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
enum RouterNatNatIpAllocateOption {
  autoOnly("AUTO_ONLY"),
  manualOnly("MANUAL_ONLY");

  const RouterNatNatIpAllocateOption(this.value);
  final String value;

  static RouterNatNatIpAllocateOption fromValue(String value) {
    for (final item in RouterNatNatIpAllocateOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatNatIpAllocateOption value: $value');
  }
}
