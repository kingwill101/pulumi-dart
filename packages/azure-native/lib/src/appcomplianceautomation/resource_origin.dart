/// Resource Origin.
enum ResourceOrigin {
  azure("Azure"),
  aWS("AWS"),
  gCP("GCP");

  const ResourceOrigin(this.value);
  final String value;

  static ResourceOrigin fromValue(String value) {
    for (final item in ResourceOrigin.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceOrigin value: $value');
  }
}

