/// [Required] Specifies the type of data.
enum DataType {
  valueUriFile("uri_file"),
  valueUriFolder("uri_folder"),
  valueMltable("mltable");

  const DataType(this.value);
  final String value;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}

