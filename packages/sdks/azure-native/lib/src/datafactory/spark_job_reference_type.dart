import 'package:pulumi/pulumi.dart' as pulumi;

/// Synapse spark job reference type.
enum SparkJobReferenceType implements pulumi.PulumiEnum<String> {
  sparkJobDefinitionReference("SparkJobDefinitionReference");

  const SparkJobReferenceType(this.wireValue);
  @override
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
