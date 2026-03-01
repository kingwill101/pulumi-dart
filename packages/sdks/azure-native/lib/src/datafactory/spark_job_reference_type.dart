/// Synapse spark job reference type.
enum SparkJobReferenceType {
  valueSparkJobDefinitionReference("SparkJobDefinitionReference");

  const SparkJobReferenceType(this.value);
  final String value;

  static SparkJobReferenceType fromValue(String value) {
    for (final item in SparkJobReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkJobReferenceType value: $value');
  }
}

