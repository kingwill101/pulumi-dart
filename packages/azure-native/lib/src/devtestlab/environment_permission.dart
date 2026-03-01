/// The access rights to be granted to the user when provisioning an environment
enum EnvironmentPermission {
  reader("Reader"),
  contributor("Contributor");

  const EnvironmentPermission(this.value);
  final String value;

  static EnvironmentPermission fromValue(String value) {
    for (final item in EnvironmentPermission.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentPermission value: $value');
  }
}

