/// cert-manager private key rotationPolicy.
enum PrivateKeyRotationPolicy {
  always("Always"),
  never_("Never");

  const PrivateKeyRotationPolicy(this.wireValue);
  final String wireValue;

  static PrivateKeyRotationPolicy fromValue(String value) {
    for (final item in PrivateKeyRotationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateKeyRotationPolicy value: $value');
  }
}
