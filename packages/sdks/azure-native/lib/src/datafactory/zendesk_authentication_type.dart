import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use.
enum ZendeskAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  token("Token");

  const ZendeskAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static ZendeskAuthenticationType fromValue(String value) {
    for (final item in ZendeskAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZendeskAuthenticationType value: $value');
  }
}
