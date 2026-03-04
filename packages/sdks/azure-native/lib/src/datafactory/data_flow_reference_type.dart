/// Data flow reference type.
enum DataFlowReferenceType {
  valueDataFlowReference("DataFlowReference");

  const DataFlowReferenceType(this.wireValue);
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
