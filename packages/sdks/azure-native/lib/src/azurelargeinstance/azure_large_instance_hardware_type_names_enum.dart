import 'package:pulumi/pulumi.dart' as pulumi;

/// the hardware type of the storage instance
enum AzureLargeInstanceHardwareTypeNamesEnum implements pulumi.PulumiEnum<String> {
  ciscoUCS("Cisco_UCS"),
  hPE("HPE"),
  sDFLEX("SDFLEX");

  const AzureLargeInstanceHardwareTypeNamesEnum(this.wireValue);
  @override
  final String wireValue;

  static AzureLargeInstanceHardwareTypeNamesEnum fromValue(String value) {
    for (final item in AzureLargeInstanceHardwareTypeNamesEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureLargeInstanceHardwareTypeNamesEnum value: $value');
  }
}
