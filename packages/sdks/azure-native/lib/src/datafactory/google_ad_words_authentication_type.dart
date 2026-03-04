/// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
enum GoogleAdWordsAuthenticationType {
  valueServiceAuthentication("ServiceAuthentication"),
  valueUserAuthentication("UserAuthentication");

  const GoogleAdWordsAuthenticationType(this.wireValue);
  final String wireValue;

  static GoogleAdWordsAuthenticationType fromValue(String value) {
    for (final item in GoogleAdWordsAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleAdWordsAuthenticationType value: $value',
    );
  }
}
