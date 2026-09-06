import 'package:pulumi/pulumi.dart' as pulumi;

/// Data flow reference type.
enum DataFlowReferenceType implements pulumi.PulumiEnum<String> {
  dataFlowReference("DataFlowReference");

  const DataFlowReferenceType(this.wireValue);
  @override
  final String wireValue;

  static DataFlowReferenceType fromValue(String value) {
    for (final item in DataFlowReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFlowReferenceType value: $value');
  }
}
