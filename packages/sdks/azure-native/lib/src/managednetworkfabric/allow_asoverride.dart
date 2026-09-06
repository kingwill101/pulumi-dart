import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable Or Disable state.
enum AllowASOverride implements pulumi.PulumiEnum<String> {
  valueEnable("Enable"),
  valueDisable("Disable");

  const AllowASOverride(this.wireValue);
  @override
  final String wireValue;

  static AllowASOverride fromValue(String value) {
    for (final item in AllowASOverride.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowASOverride value: $value');
  }
}
