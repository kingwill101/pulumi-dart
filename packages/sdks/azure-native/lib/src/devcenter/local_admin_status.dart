import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
enum LocalAdminStatus implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const LocalAdminStatus(this.wireValue);
  @override
  final String wireValue;

  static LocalAdminStatus fromValue(String value) {
    for (final item in LocalAdminStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalAdminStatus value: $value');
  }
}
