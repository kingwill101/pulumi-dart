/// Spark configuration reference type.
enum SparkConfigurationReferenceType {
  valueSparkConfigurationReference("SparkConfigurationReference");

  const SparkConfigurationReferenceType(this.value);
  final String value;

  static SparkConfigurationReferenceType fromValue(String value) {
    for (final item in SparkConfigurationReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkConfigurationReferenceType value: $value');
  }
}

