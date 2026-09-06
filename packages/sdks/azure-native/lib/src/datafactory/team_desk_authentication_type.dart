import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use.
enum TeamDeskAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  token("Token");

  const TeamDeskAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static TeamDeskAuthenticationType fromValue(String value) {
    for (final item in TeamDeskAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamDeskAuthenticationType value: $value');
  }
}
