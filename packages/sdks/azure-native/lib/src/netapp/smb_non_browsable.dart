/// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
enum SmbNonBrowsable {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SmbNonBrowsable(this.wireValue);
  final String wireValue;

  static SmbNonBrowsable fromValue(String value) {
    for (final item in SmbNonBrowsable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbNonBrowsable value: $value');
  }
}
