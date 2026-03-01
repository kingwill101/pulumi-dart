/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterTypeGkehubV1beta {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterTypeGkehubV1beta(this.value);
  final String value;

  static OnPremClusterClusterTypeGkehubV1beta fromValue(String value) {
    for (final item in OnPremClusterClusterTypeGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OnPremClusterClusterTypeGkehubV1beta value: $value',
    );
  }
}
