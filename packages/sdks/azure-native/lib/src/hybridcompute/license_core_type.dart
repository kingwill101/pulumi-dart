/// Describes the license core type (pCore or vCore).
enum LicenseCoreType {
  valuePCore("pCore"),
  valueVCore("vCore");

  const LicenseCoreType(this.wireValue);
  final String wireValue;

  static LicenseCoreType fromValue(String value) {
    for (final item in LicenseCoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseCoreType value: $value');
  }
}
