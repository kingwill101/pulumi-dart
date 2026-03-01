/// Data flow reference type.
enum DataFlowReferenceType {
  valueDataFlowReference("DataFlowReference");

  const DataFlowReferenceType(this.value);
  final String value;

  static DataFlowReferenceType fromValue(String value) {
    for (final item in DataFlowReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFlowReferenceType value: $value');
  }
}

