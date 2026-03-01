/// OsType - string specifying whether the OS is Linux or Windows
enum OsTypeEnum {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OsTypeEnum(this.value);
  final String value;

  static OsTypeEnum fromValue(String value) {
    for (final item in OsTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsTypeEnum value: $value');
  }
}

