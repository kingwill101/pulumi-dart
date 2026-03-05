/// Determines how the stand-by scheme should be provided.
enum ResourcePredictionsProfileType {
  manual("Manual"),
  automatic("Automatic");

  const ResourcePredictionsProfileType(this.wireValue);
  final String wireValue;

  static ResourcePredictionsProfileType fromValue(String value) {
    for (final item in ResourcePredictionsProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePredictionsProfileType value: $value');
  }
}

