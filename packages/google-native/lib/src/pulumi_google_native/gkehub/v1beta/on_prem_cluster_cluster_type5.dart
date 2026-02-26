/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterType5 {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterType5(this.value);
  final String value;

  static OnPremClusterClusterType5 fromValue(String value) {
    for (final item in OnPremClusterClusterType5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterType5 value: $value');
  }
}
