/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterType3 {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterType3(this.value);
  final String value;

  static OnPremClusterClusterType3 fromValue(String value) {
    for (final item in OnPremClusterClusterType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterType3 value: $value');
  }
}
