/// Desired enablement state of the Defender For Servers service.
enum DefenderForServers {
  valueEnable("Enable"),
  valueDisable("Disable");

  const DefenderForServers(this.value);
  final String value;

  static DefenderForServers fromValue(String value) {
    for (final item in DefenderForServers.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefenderForServers value: $value');
  }
}

