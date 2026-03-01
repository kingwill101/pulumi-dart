/// This parameter specifies who is authorized to change the ownership of a file. restricted - Only root user can change the ownership of the file. unrestricted - Non-root users can change ownership of files that they own.
enum ChownMode {
  valueRestricted("Restricted"),
  valueUnrestricted("Unrestricted");

  const ChownMode(this.value);
  final String value;

  static ChownMode fromValue(String value) {
    for (final item in ChownMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChownMode value: $value');
  }
}

