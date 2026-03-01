/// The index type of the vector. Currently, flat, diskANN, and quantizedFlat are supported.
enum VectorIndexType {
  valueFlat("flat"),
  valueDiskANN("diskANN"),
  valueQuantizedFlat("quantizedFlat");

  const VectorIndexType(this.value);
  final String value;

  static VectorIndexType fromValue(String value) {
    for (final item in VectorIndexType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VectorIndexType value: $value');
  }
}

