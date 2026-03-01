enum EnterpriseCrmEventbusStatsDimensionsRetryAttempt {
  unspecified("UNSPECIFIED"),
  final_("FINAL"),
  retryable("RETRYABLE"),
  canceled("CANCELED");

  const EnterpriseCrmEventbusStatsDimensionsRetryAttempt(this.value);
  final String value;

  static EnterpriseCrmEventbusStatsDimensionsRetryAttempt fromValue(
    String value,
  ) {
    for (final item
        in EnterpriseCrmEventbusStatsDimensionsRetryAttempt.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusStatsDimensionsRetryAttempt value: $value',
    );
  }
}
