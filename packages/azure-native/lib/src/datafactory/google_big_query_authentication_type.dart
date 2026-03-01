/// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
enum GoogleBigQueryAuthenticationType {
  valueServiceAuthentication("ServiceAuthentication"),
  valueUserAuthentication("UserAuthentication");

  const GoogleBigQueryAuthenticationType(this.value);
  final String value;

  static GoogleBigQueryAuthenticationType fromValue(String value) {
    for (final item in GoogleBigQueryAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleBigQueryAuthenticationType value: $value');
  }
}

