/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterTypeGkehubV1alpha {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterTypeGkehubV1alpha(this.value);
  final String value;

  static OnPremClusterClusterTypeGkehubV1alpha fromValue(String value) {
    for (final item in OnPremClusterClusterTypeGkehubV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OnPremClusterClusterTypeGkehubV1alpha value: $value',
    );
  }
}
