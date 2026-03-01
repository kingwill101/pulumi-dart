/// The OAuth 2.0 authentication mechanism used for authentication.
enum GoogleBigQueryV2AuthenticationType {
  valueServiceAuthentication("ServiceAuthentication"),
  valueUserAuthentication("UserAuthentication");

  const GoogleBigQueryV2AuthenticationType(this.value);
  final String value;

  static GoogleBigQueryV2AuthenticationType fromValue(String value) {
    for (final item in GoogleBigQueryV2AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleBigQueryV2AuthenticationType value: $value');
  }
}

