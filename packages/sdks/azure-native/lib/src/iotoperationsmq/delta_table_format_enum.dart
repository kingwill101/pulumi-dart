import 'package:pulumi/pulumi.dart' as pulumi;

/// Delta table format supported.
enum DeltaTableFormatEnum implements pulumi.PulumiEnum<String> {
  boolean("boolean"),
  int8("int8"),
  int16("int16"),
  int32("int32"),
  uInt8("uInt8"),
  uInt16("uInt16"),
  uInt32("uInt32"),
  uInt64("uInt64"),
  float16("float16"),
  float32("float32"),
  float64("float64"),
  date32("date32"),
  date64("date64"),
  binary("binary"),
  utf8("utf8");

  const DeltaTableFormatEnum(this.wireValue);
  @override
  final String wireValue;

  static DeltaTableFormatEnum fromValue(String value) {
    for (final item in DeltaTableFormatEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeltaTableFormatEnum value: $value');
  }
}
