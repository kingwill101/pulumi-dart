import 'package:pulumi/pulumi.dart' as pulumi;

/// Current mode of Maintenance Mode Configuration
enum Mode implements pulumi.PulumiEnum<String> {
  valueOn("On"),
  valueCanNotDelete("CanNotDelete"),
  valueOff("Off"),
  valueGeneral("General"),
  valueAdvanced("Advanced");

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
