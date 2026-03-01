enum ExtensionChainExtensionSupportedEventsItem {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  requestHeaders("REQUEST_HEADERS"),
  requestBody("REQUEST_BODY"),
  responseHeaders("RESPONSE_HEADERS"),
  responseBody("RESPONSE_BODY");

  const ExtensionChainExtensionSupportedEventsItem(this.value);
  final String value;

  static ExtensionChainExtensionSupportedEventsItem fromValue(String value) {
    for (final item in ExtensionChainExtensionSupportedEventsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ExtensionChainExtensionSupportedEventsItem value: $value',
    );
  }
}
