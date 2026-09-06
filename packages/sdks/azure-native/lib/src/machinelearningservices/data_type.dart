import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of data.
enum DataType implements pulumi.PulumiEnum<String> {
  uriFile("uri_file"),
  uriFolder("uri_folder"),
  mltable("mltable");

  const DataType(this.wireValue);
  @override
  final String wireValue;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}
