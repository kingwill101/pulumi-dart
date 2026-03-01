/// The value that indicates whether the alert should be automatically resolved or not. The default is Disable.
enum AlertAutoMitigate {
  enable("Enable"),
  disable("Disable");

  const AlertAutoMitigate(this.value);
  final String value;

  static AlertAutoMitigate fromValue(String value) {
    for (final item in AlertAutoMitigate.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertAutoMitigate value: $value');
  }
}

