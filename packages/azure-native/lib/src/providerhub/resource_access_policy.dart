/// The resource access policy.
enum ResourceAccessPolicy {
  valueNotSpecified("NotSpecified"),
  valueAcisReadAllowed("AcisReadAllowed"),
  valueAcisActionAllowed("AcisActionAllowed");

  const ResourceAccessPolicy(this.value);
  final String value;

  static ResourceAccessPolicy fromValue(String value) {
    for (final item in ResourceAccessPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceAccessPolicy value: $value');
  }
}

