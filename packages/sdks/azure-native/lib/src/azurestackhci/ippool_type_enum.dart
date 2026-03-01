/// Type of the IP Pool [vm, vippool]
enum IPPoolTypeEnum {
  vm("vm"),
  vippool("vippool");

  const IPPoolTypeEnum(this.value);
  final String value;

  static IPPoolTypeEnum fromValue(String value) {
    for (final item in IPPoolTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPPoolTypeEnum value: $value');
  }
}

