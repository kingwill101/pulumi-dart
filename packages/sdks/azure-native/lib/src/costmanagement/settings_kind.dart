import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the kind of settings.
enum SettingsKind implements pulumi.PulumiEnum<String> {
  valueTaginheritance("taginheritance");

  const SettingsKind(this.wireValue);
  @override
  final String wireValue;

  static SettingsKind fromValue(String value) {
    for (final item in SettingsKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsKind value: $value');
  }
}
