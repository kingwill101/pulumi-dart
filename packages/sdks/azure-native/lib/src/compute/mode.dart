import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the mode that ProxyAgent will execute on. Warning: this property has been deprecated, please specify 'mode' under particular hostendpoint setting.
enum Mode implements pulumi.PulumiEnum<String> {
  audit("Audit"),
  enforce("Enforce");

  const Mode(this.wireValue);
  @override
  final String wireValue;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}
