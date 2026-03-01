/// Required. The type of hosting used by the gateway.
enum GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType(
    this.value,
  );
  final String value;

  static GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType
  fromValue(String value) {
    for (final item
        in GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType value: $value',
    );
  }
}
