/// The type of processor.
enum ProcessorType {
  batch("Batch");

  const ProcessorType(this.wireValue);
  final String wireValue;

  static ProcessorType fromValue(String value) {
    for (final item in ProcessorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProcessorType value: $value');
  }
}
