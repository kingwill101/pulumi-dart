/// Policy override setting for the community. Specifies whether to apply enclave-specific policies or disable policy enforcement.
enum PolicyOverride {
  valueEnclave("Enclave"),
  valueNone("None");

  const PolicyOverride(this.value);
  final String value;

  static PolicyOverride fromValue(String value) {
    for (final item in PolicyOverride.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyOverride value: $value');
  }
}

