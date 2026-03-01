/// The multi-factor authorization provider to be used for just-in-time access requests.
enum MultiFactorAuthProvider {
  valueAzure("Azure"),
  valueNone("None");

  const MultiFactorAuthProvider(this.value);
  final String value;

  static MultiFactorAuthProvider fromValue(String value) {
    for (final item in MultiFactorAuthProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiFactorAuthProvider value: $value');
  }
}

