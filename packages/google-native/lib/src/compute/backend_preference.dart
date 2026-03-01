/// This field indicates whether this backend should be fully utilized before sending traffic to backends with default preference. The possible values are: - PREFERRED: Backends with this preference level will be filled up to their capacity limits first, based on RTT. - DEFAULT: If preferred backends don't have enough capacity, backends in this layer would be used and traffic would be assigned based on the load balancing algorithm you use. This is the default
enum BackendPreference {
  default_("DEFAULT"),
  preferenceUnspecified("PREFERENCE_UNSPECIFIED"),
  preferred("PREFERRED");

  const BackendPreference(this.value);
  final String value;

  static BackendPreference fromValue(String value) {
    for (final item in BackendPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendPreference value: $value');
  }
}
