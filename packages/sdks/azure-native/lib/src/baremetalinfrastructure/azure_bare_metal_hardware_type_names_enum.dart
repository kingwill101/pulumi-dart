/// Name of the hardware type (vendor and/or their product name)
enum AzureBareMetalHardwareTypeNamesEnum {
  valueCiscoUCS("Cisco_UCS"),
  valueHPE("HPE"),
  valueSDFLEX("SDFLEX");

  const AzureBareMetalHardwareTypeNamesEnum(this.wireValue);
  final String wireValue;

  static AzureBareMetalHardwareTypeNamesEnum fromValue(String value) {
    for (final item in AzureBareMetalHardwareTypeNamesEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AzureBareMetalHardwareTypeNamesEnum value: $value',
    );
  }
}
