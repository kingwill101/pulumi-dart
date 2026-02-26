/// Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
enum GoogleCloudDataplexV1ZoneResourceSpecLocationType {
  locationTypeUnspecified("LOCATION_TYPE_UNSPECIFIED"),
  singleRegion("SINGLE_REGION"),
  multiRegion("MULTI_REGION");

  const GoogleCloudDataplexV1ZoneResourceSpecLocationType(this.value);
  final String value;

  static GoogleCloudDataplexV1ZoneResourceSpecLocationType fromValue(
      String value) {
    for (final item
        in GoogleCloudDataplexV1ZoneResourceSpecLocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDataplexV1ZoneResourceSpecLocationType value: $value');
  }
}
