/// The administrative status of the auto import job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto import job. By default it is set to 'Enable'.
enum AdminStatus {
  valueEnable("Enable"),
  valueDisable("Disable");

  const AdminStatus(this.value);
  final String value;

  static AdminStatus fromValue(String value) {
    for (final item in AdminStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdminStatus value: $value');
  }
}

