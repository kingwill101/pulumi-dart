import 'package:pulumi/pulumi.dart' as pulumi;

/// Spark configuration reference type.
enum SparkConfigurationReferenceType implements pulumi.PulumiEnum<String> {
  sparkConfigurationReference("SparkConfigurationReference");

  const SparkConfigurationReferenceType(this.wireValue);
  @override
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
