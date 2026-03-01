/// Describes the license core type (pCore or vCore).
enum LicenseCoreType {
  valuePCore("pCore"),
  valueVCore("vCore");

  const LicenseCoreType(this.value);
  final String value;

  static LicenseCoreType fromValue(String value) {
    for (final item in LicenseCoreType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseCoreType value: $value');
  }
}

