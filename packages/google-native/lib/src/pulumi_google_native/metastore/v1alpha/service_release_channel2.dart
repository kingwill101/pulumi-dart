/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannel2 {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannel2(this.value);
  final String value;

  static ServiceReleaseChannel2 fromValue(String value) {
    for (final item in ServiceReleaseChannel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceReleaseChannel2 value: $value');
  }
}
