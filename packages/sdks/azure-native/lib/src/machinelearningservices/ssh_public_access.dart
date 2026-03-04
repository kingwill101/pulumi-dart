/// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on this instance. Enabled - Indicates that the public ssh port is open and accessible according to the VNet/subnet policy if applicable.
enum SshPublicAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SshPublicAccess(this.wireValue);
  final String wireValue;

  static SshPublicAccess fromValue(String value) {
    for (final item in SshPublicAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SshPublicAccess value: $value');
  }
}
