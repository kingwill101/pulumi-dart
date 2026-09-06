import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the IP Pool [vm, vippool]
enum IPPoolTypeEnum implements pulumi.PulumiEnum<String> {
  vm("vm"),
  vippool("vippool");

  const IPPoolTypeEnum(this.wireValue);
  @override
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
