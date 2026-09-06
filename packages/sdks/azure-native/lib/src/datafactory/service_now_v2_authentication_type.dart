import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use.
enum ServiceNowV2AuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  oAuth2("OAuth2");

  const ServiceNowV2AuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static ServiceNowV2AuthenticationType fromValue(String value) {
    for (final item in ServiceNowV2AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceNowV2AuthenticationType value: $value');
  }
}
