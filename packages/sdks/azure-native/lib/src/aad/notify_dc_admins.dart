import 'package:pulumi/pulumi.dart' as pulumi;

/// Should domain controller admins be notified
enum NotifyDcAdmins implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotifyDcAdmins(this.wireValue);
  @override
  final String wireValue;

  static NotifyDcAdmins fromValue(String value) {
    for (final item in NotifyDcAdmins.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotifyDcAdmins value: $value');
  }
}
