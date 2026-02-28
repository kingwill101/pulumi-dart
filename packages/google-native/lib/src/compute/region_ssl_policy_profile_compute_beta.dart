/// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
enum RegionSslPolicyProfileComputeBeta {
  compatible("COMPATIBLE"),
  custom("CUSTOM"),
  modern("MODERN"),
  restricted("RESTRICTED");

  const RegionSslPolicyProfileComputeBeta(this.value);
  final String value;

  static RegionSslPolicyProfileComputeBeta fromValue(String value) {
    for (final item in RegionSslPolicyProfileComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionSslPolicyProfileComputeBeta value: $value');
  }
}
