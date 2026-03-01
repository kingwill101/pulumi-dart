/// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
enum GoogleAdWordsAuthenticationType {
  valueServiceAuthentication("ServiceAuthentication"),
  valueUserAuthentication("UserAuthentication");

  const GoogleAdWordsAuthenticationType(this.value);
  final String value;

  static GoogleAdWordsAuthenticationType fromValue(String value) {
    for (final item in GoogleAdWordsAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleAdWordsAuthenticationType value: $value');
  }
}

