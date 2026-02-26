/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannel3 {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannel3(this.value);
  final String value;

  static ServiceReleaseChannel3 fromValue(String value) {
    for (final item in ServiceReleaseChannel3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceReleaseChannel3 value: $value');
  }
}
