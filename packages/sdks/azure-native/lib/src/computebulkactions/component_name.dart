import 'package:pulumi/pulumi.dart' as pulumi;

/// The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
enum ComponentName implements pulumi.PulumiEnum<String> {
  valueMicrosoftWindowsShellSetup("Microsoft-Windows-Shell-Setup");

  const ComponentName(this.wireValue);
  @override
  final String wireValue;

  static ComponentName fromValue(String value) {
    for (final item in ComponentName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComponentName value: $value');
  }
}
