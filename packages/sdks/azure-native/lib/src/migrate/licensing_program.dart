/// Gets or sets the licensing program.
enum LicensingProgram {
  retail("Retail"),
  unknown("Unknown"),
  eA("EA"),
  mCA("MCA");

  const LicensingProgram(this.value);
  final String value;

  static LicensingProgram fromValue(String value) {
    for (final item in LicensingProgram.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicensingProgram value: $value');
  }
}

