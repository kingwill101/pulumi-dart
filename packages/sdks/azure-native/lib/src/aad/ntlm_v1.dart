/// A flag to determine whether or not NtlmV1 is enabled or disabled.
enum NtlmV1 {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NtlmV1(this.wireValue);
  final String wireValue;

  static NtlmV1 fromValue(String value) {
    for (final item in NtlmV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NtlmV1 value: $value');
  }
}

