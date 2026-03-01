/// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
enum SmbNonBrowsable {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SmbNonBrowsable(this.value);
  final String value;

  static SmbNonBrowsable fromValue(String value) {
    for (final item in SmbNonBrowsable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbNonBrowsable value: $value');
  }
}

