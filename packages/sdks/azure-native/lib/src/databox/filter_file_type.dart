import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the filter file.
enum FilterFileType implements pulumi.PulumiEnum<String> {
  valueAzureBlob("AzureBlob"),
  valueAzureFile("AzureFile");

  const FilterFileType(this.wireValue);
  @override
  final String wireValue;

  static FilterFileType fromValue(String value) {
    for (final item in FilterFileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterFileType value: $value');
  }
}
