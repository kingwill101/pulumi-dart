import 'package:pulumi/pulumi.dart' as pulumi;

/// The OAuth 2.0 authentication mechanism used for authentication.
enum GoogleBigQueryV2AuthenticationType implements pulumi.PulumiEnum<String> {
  serviceAuthentication("ServiceAuthentication"),
  userAuthentication("UserAuthentication");

  const GoogleBigQueryV2AuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static GoogleBigQueryV2AuthenticationType fromValue(String value) {
    for (final item in GoogleBigQueryV2AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleBigQueryV2AuthenticationType value: $value');
  }
}
