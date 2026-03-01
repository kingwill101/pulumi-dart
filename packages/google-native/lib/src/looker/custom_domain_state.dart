/// Domain state.
enum CustomDomainState {
  customDomainStateUnspecified("CUSTOM_DOMAIN_STATE_UNSPECIFIED"),
  unverified("UNVERIFIED"),
  verified("VERIFIED"),
  modifying("MODIFYING"),
  available("AVAILABLE"),
  unavailable("UNAVAILABLE"),
  unknown("UNKNOWN");

  const CustomDomainState(this.value);
  final String value;

  static CustomDomainState fromValue(String value) {
    for (final item in CustomDomainState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomDomainState value: $value');
  }
}
