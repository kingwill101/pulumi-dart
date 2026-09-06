import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataset reference type.
enum DatasetReferenceType implements pulumi.PulumiEnum<String> {
  datasetReference("DatasetReference");

  const DatasetReferenceType(this.wireValue);
  @override
  final String wireValue;

  static DatasetReferenceType fromValue(String value) {
    for (final item in DatasetReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetReferenceType value: $value');
  }
}
