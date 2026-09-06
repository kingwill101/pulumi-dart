import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the data type of vector.
enum VectorDataType implements pulumi.PulumiEnum<String> {
  valueFloat32("float32"),
  valueUint8("uint8"),
  valueInt8("int8"),
  valueFloat16("float16");

  const VectorDataType(this.wireValue);
  @override
  final String wireValue;

  static VectorDataType fromValue(String value) {
    for (final item in VectorDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VectorDataType value: $value');
  }
}
