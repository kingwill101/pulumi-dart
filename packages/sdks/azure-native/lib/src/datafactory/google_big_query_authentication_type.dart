import 'package:pulumi/pulumi.dart' as pulumi;

/// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
enum GoogleBigQueryAuthenticationType implements pulumi.PulumiEnum<String> {
  serviceAuthentication("ServiceAuthentication"),
  userAuthentication("UserAuthentication");

  const GoogleBigQueryAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static GoogleBigQueryAuthenticationType fromValue(String value) {
    for (final item in GoogleBigQueryAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleBigQueryAuthenticationType value: $value');
  }
}
