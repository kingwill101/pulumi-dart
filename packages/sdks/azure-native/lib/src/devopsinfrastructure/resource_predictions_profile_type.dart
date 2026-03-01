/// Determines how the stand-by scheme should be provided.
enum ResourcePredictionsProfileType {
  manual("Manual"),
  automatic("Automatic");

  const ResourcePredictionsProfileType(this.value);
  final String value;

  static ResourcePredictionsProfileType fromValue(String value) {
    for (final item in ResourcePredictionsProfileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePredictionsProfileType value: $value');
  }
}

