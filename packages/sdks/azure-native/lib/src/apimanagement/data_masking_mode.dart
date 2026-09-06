import 'package:pulumi/pulumi.dart' as pulumi;

/// Data masking mode.
enum DataMaskingMode implements pulumi.PulumiEnum<String> {
  valueMask("Mask"),
  valueHide("Hide");

  const DataMaskingMode(this.wireValue);
  @override
  final String wireValue;

  static DataMaskingMode fromValue(String value) {
    for (final item in DataMaskingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataMaskingMode value: $value');
  }
}
