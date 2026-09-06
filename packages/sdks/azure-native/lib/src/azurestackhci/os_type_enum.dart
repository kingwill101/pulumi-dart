import 'package:pulumi/pulumi.dart' as pulumi;

/// OsType - string specifying whether the OS is Linux or Windows
enum OsTypeEnum implements pulumi.PulumiEnum<String> {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OsTypeEnum(this.wireValue);
  @override
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
