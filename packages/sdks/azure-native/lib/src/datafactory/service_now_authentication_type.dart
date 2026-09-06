import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use.
enum ServiceNowAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  oAuth2("OAuth2");

  const ServiceNowAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static ServiceNowAuthenticationType fromValue(String value) {
    for (final item in ServiceNowAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceNowAuthenticationType value: $value');
  }
}
