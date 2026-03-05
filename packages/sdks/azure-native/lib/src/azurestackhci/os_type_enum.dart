/// OsType - string specifying whether the OS is Linux or Windows
enum OsTypeEnum {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OsTypeEnum(this.wireValue);
  final String wireValue;

  static OsTypeEnum fromValue(String value) {
    for (final item in OsTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsTypeEnum value: $value');
  }
}

