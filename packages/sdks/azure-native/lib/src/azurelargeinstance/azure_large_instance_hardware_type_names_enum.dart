/// the hardware type of the storage instance
enum AzureLargeInstanceHardwareTypeNamesEnum {
  ciscoUCS("Cisco_UCS"),
  hPE("HPE"),
  sDFLEX("SDFLEX");

  const AzureLargeInstanceHardwareTypeNamesEnum(this.value);
  final String value;

  static AzureLargeInstanceHardwareTypeNamesEnum fromValue(String value) {
    for (final item in AzureLargeInstanceHardwareTypeNamesEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureLargeInstanceHardwareTypeNamesEnum value: $value');
  }
}

