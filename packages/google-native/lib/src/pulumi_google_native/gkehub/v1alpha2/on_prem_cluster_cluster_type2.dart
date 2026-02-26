/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterType2 {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterType2(this.value);
  final String value;

  static OnPremClusterClusterType2 fromValue(String value) {
    for (final item in OnPremClusterClusterType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterType2 value: $value');
  }
}
