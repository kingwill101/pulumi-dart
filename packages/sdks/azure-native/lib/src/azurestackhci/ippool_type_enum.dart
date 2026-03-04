/// Type of the IP Pool [vm, vippool]
enum IPPoolTypeEnum {
  vm("vm"),
  vippool("vippool");

  const IPPoolTypeEnum(this.wireValue);
  final String wireValue;

  static IPPoolTypeEnum fromValue(String value) {
    for (final item in IPPoolTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPPoolTypeEnum value: $value');
  }
}
