/// the hardware type of the storage instance
enum AzureLargeInstanceHardwareTypeNamesEnum {
  ciscoUCS("Cisco_UCS"),
  hPE("HPE"),
  sDFLEX("SDFLEX");

  const AzureLargeInstanceHardwareTypeNamesEnum(this.wireValue);
  final String wireValue;

  static AzureLargeInstanceHardwareTypeNamesEnum fromValue(String value) {
    for (final item in AzureLargeInstanceHardwareTypeNamesEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AzureLargeInstanceHardwareTypeNamesEnum value: $value',
    );
  }
}
