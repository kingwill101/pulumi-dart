/// Resource Origin.
enum ResourceOrigin {
  azure("Azure"),
  aWS("AWS"),
  gCP("GCP");

  const ResourceOrigin(this.wireValue);
  final String wireValue;

  static ResourceOrigin fromValue(String value) {
    for (final item in ResourceOrigin.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceOrigin value: $value');
  }
}

