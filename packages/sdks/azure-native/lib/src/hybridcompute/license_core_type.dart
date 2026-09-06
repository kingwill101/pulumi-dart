import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the license core type (pCore or vCore).
enum LicenseCoreType implements pulumi.PulumiEnum<String> {
  valuePCore("pCore"),
  valueVCore("vCore");

  const LicenseCoreType(this.wireValue);
  @override
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
