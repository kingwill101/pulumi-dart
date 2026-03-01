/// The cloud that the standard is supported on.
enum StandardSupportedClouds {
  valueAWS("AWS"),
  valueGCP("GCP");

  const StandardSupportedClouds(this.value);
  final String value;

  static StandardSupportedClouds fromValue(String value) {
    for (final item in StandardSupportedClouds.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardSupportedClouds value: $value');
  }
}

