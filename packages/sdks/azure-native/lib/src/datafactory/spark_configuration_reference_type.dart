/// Spark configuration reference type.
enum SparkConfigurationReferenceType {
  sparkConfigurationReference("SparkConfigurationReference");

  const SparkConfigurationReferenceType(this.wireValue);
  final String wireValue;

  static SparkConfigurationReferenceType fromValue(String value) {
    for (final item in SparkConfigurationReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkConfigurationReferenceType value: $value');
  }
}
