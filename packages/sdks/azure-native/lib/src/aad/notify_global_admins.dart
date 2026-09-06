import 'package:pulumi/pulumi.dart' as pulumi;

/// Should global admins be notified
enum NotifyGlobalAdmins implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotifyGlobalAdmins(this.wireValue);
  @override
  final String wireValue;

  static NotifyGlobalAdmins fromValue(String value) {
    for (final item in NotifyGlobalAdmins.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotifyGlobalAdmins value: $value');
  }
}
