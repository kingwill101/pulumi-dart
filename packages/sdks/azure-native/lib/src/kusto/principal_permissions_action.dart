import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if the permissions for the script caller are kept following completion of the script.
enum PrincipalPermissionsAction implements pulumi.PulumiEnum<String> {
  valueRetainPermissionOnScriptCompletion("RetainPermissionOnScriptCompletion"),
  valueRemovePermissionOnScriptCompletion("RemovePermissionOnScriptCompletion");

  const PrincipalPermissionsAction(this.wireValue);
  @override
  final String wireValue;

  static PrincipalPermissionsAction fromValue(String value) {
    for (final item in PrincipalPermissionsAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrincipalPermissionsAction value: $value');
  }
}
