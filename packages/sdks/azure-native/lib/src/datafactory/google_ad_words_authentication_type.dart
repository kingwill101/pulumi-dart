import 'package:pulumi/pulumi.dart' as pulumi;

/// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
enum GoogleAdWordsAuthenticationType implements pulumi.PulumiEnum<String> {
  serviceAuthentication("ServiceAuthentication"),
  userAuthentication("UserAuthentication");

  const GoogleAdWordsAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static GoogleAdWordsAuthenticationType fromValue(String value) {
    for (final item in GoogleAdWordsAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleAdWordsAuthenticationType value: $value');
  }
}
