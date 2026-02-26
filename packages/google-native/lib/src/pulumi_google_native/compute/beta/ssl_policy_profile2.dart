/// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
enum SslPolicyProfile2 {
  compatible("COMPATIBLE"),
  custom("CUSTOM"),
  modern("MODERN"),
  restricted("RESTRICTED");

  const SslPolicyProfile2(this.value);
  final String value;

  static SslPolicyProfile2 fromValue(String value) {
    for (final item in SslPolicyProfile2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslPolicyProfile2 value: $value');
  }
}
