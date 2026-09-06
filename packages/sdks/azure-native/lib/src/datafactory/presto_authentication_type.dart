import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication mechanism used to connect to the Presto server.
enum PrestoAuthenticationType implements pulumi.PulumiEnum<String> {
  anonymous("Anonymous"),
  lDAP("LDAP");

  const PrestoAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static PrestoAuthenticationType fromValue(String value) {
    for (final item in PrestoAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrestoAuthenticationType value: $value');
  }
}
