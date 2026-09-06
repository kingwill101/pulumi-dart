import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to take when an unauthenticated client attempts to access the app.
enum UnauthenticatedClientActionV2 implements pulumi.PulumiEnum<String> {
  valueRedirectToLoginPage("RedirectToLoginPage"),
  valueAllowAnonymous("AllowAnonymous"),
  valueReturn401("Return401"),
  valueReturn403("Return403");

  const UnauthenticatedClientActionV2(this.wireValue);
  @override
  final String wireValue;

  static UnauthenticatedClientActionV2 fromValue(String value) {
    for (final item in UnauthenticatedClientActionV2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnauthenticatedClientActionV2 value: $value');
  }
}
