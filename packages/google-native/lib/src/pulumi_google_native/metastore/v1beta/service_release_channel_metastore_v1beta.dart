/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannelMetastoreV1beta {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannelMetastoreV1beta(this.value);
  final String value;

  static ServiceReleaseChannelMetastoreV1beta fromValue(String value) {
    for (final item in ServiceReleaseChannelMetastoreV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceReleaseChannelMetastoreV1beta value: $value');
  }
}
