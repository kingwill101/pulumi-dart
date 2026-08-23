/// The index type of the vector. Currently, flat, diskANN, and quantizedFlat are supported.
enum VectorIndexType {
  valueFlat("flat"),
  valueDiskANN("diskANN"),
  valueQuantizedFlat("quantizedFlat");

  const VectorIndexType(this.wireValue);
  final String wireValue;

  static VectorIndexType fromValue(String value) {
    for (final item in VectorIndexType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VectorIndexType value: $value');
  }
}
