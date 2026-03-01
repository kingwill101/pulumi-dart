/// cert-manager private key rotationPolicy.
enum PrivateKeyRotationPolicy {
  always("Always"),
  never("Never");

  const PrivateKeyRotationPolicy(this.value);
  final String value;

  static PrivateKeyRotationPolicy fromValue(String value) {
    for (final item in PrivateKeyRotationPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateKeyRotationPolicy value: $value');
  }
}

