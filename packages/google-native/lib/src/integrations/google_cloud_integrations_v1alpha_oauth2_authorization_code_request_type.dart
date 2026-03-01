/// Represent how to pass parameters to fetch access token
enum GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType {
  requestTypeUnspecified("REQUEST_TYPE_UNSPECIFIED"),
  requestBody("REQUEST_BODY"),
  queryParameters("QUERY_PARAMETERS"),
  encodedHeader("ENCODED_HEADER");

  const GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType(
    this.value,
  );
  final String value;

  static GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType
  fromValue(String value) {
    for (final item
        in GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType value: $value',
    );
  }
}
