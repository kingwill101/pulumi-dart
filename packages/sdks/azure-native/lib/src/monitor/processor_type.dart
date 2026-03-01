/// The type of processor.
enum ProcessorType {
  batch("Batch");

  const ProcessorType(this.value);
  final String value;

  static ProcessorType fromValue(String value) {
    for (final item in ProcessorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProcessorType value: $value');
  }
}

