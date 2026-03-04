/// Synapse spark job reference type.
enum SparkJobReferenceType {
  valueSparkJobDefinitionReference("SparkJobDefinitionReference");

  const SparkJobReferenceType(this.wireValue);
  final String wireValue;

  static SparkJobReferenceType fromValue(String value) {
    for (final item in SparkJobReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkJobReferenceType value: $value');
  }
}
