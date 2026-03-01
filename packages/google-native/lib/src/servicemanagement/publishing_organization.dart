/// For whom the client library is being published.
enum PublishingOrganization {
  clientLibraryOrganizationUnspecified(
    "CLIENT_LIBRARY_ORGANIZATION_UNSPECIFIED",
  ),
  cloud("CLOUD"),
  ads("ADS"),
  photos("PHOTOS"),
  streetView("STREET_VIEW"),
  shopping("SHOPPING"),
  geo("GEO"),
  generativeAi("GENERATIVE_AI");

  const PublishingOrganization(this.value);
  final String value;

  static PublishingOrganization fromValue(String value) {
    for (final item in PublishingOrganization.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublishingOrganization value: $value');
  }
}
