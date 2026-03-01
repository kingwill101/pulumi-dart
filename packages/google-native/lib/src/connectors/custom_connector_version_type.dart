/// Required. Type of the customConnector.
enum CustomConnectorVersionType {
  customConnectorTypeUnspecified("CUSTOM_CONNECTOR_TYPE_UNSPECIFIED"),
  openApi("OPEN_API"),
  proto("PROTO");

  const CustomConnectorVersionType(this.value);
  final String value;

  static CustomConnectorVersionType fromValue(String value) {
    for (final item in CustomConnectorVersionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomConnectorVersionType value: $value');
  }
}
