/// The current state of the trusted identity provider feature for this Data Lake Store account.
enum TrustedIdProviderState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TrustedIdProviderState(this.value);
  final String value;

  static TrustedIdProviderState fromValue(String value) {
    for (final item in TrustedIdProviderState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrustedIdProviderState value: $value');
  }
}

