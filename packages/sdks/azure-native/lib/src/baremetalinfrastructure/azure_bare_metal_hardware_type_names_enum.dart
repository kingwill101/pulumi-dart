import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the hardware type (vendor and/or their product name)
enum AzureBareMetalHardwareTypeNamesEnum implements pulumi.PulumiEnum<String> {
  valueCiscoUCS("Cisco_UCS"),
  valueHPE("HPE"),
  valueSDFLEX("SDFLEX");

  const AzureBareMetalHardwareTypeNamesEnum(this.wireValue);
  @override
  final String wireValue;

  static AzureBareMetalHardwareTypeNamesEnum fromValue(String value) {
    for (final item in AzureBareMetalHardwareTypeNamesEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureBareMetalHardwareTypeNamesEnum value: $value');
  }
}
