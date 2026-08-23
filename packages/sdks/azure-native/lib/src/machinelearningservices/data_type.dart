/// [Required] Specifies the type of data.
enum DataType {
  uriFile("uri_file"),
  uriFolder("uri_folder"),
  mltable("mltable");

  const DataType(this.wireValue);
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
