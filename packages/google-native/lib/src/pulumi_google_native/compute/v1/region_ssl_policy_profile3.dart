/// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
enum RegionSslPolicyProfile3 {
  compatible("COMPATIBLE"),
  custom("CUSTOM"),
  modern("MODERN"),
  restricted("RESTRICTED");

  const RegionSslPolicyProfile3(this.value);
  final String value;

  static RegionSslPolicyProfile3 fromValue(String value) {
    for (final item in RegionSslPolicyProfile3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslPolicyProfile3 value: $value');
  }
}
