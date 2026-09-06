import 'package:pulumi/pulumi.dart' as pulumi;

/// The index type of the vector. Currently, flat, diskANN, and quantizedFlat are supported.
enum VectorIndexType implements pulumi.PulumiEnum<String> {
  valueFlat("flat"),
  valueDiskANN("diskANN"),
  valueQuantizedFlat("quantizedFlat");

  const VectorIndexType(this.wireValue);
  @override
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
