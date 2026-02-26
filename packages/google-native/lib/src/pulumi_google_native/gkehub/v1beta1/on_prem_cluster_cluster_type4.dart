/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterType4 {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterType4(this.value);
  final String value;

  static OnPremClusterClusterType4 fromValue(String value) {
    for (final item in OnPremClusterClusterType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterType4 value: $value');
  }
}
