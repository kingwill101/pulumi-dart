/// Preview features that can be enabled on a mongo cluster.
enum PreviewFeature {
  geoReplicas("GeoReplicas");

  const PreviewFeature(this.value);
  final String value;

  static PreviewFeature fromValue(String value) {
    for (final item in PreviewFeature.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreviewFeature value: $value');
  }
}

