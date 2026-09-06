import 'package:pulumi/pulumi.dart' as pulumi;

/// The authorization use status.
enum AuthorizationUseStatus implements pulumi.PulumiEnum<String> {
  valueAvailable("Available"),
  valueInUse("InUse");

  const AuthorizationUseStatus(this.wireValue);
  @override
  final String wireValue;

  static AuthorizationUseStatus fromValue(String value) {
    for (final item in AuthorizationUseStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationUseStatus value: $value');
  }
}
