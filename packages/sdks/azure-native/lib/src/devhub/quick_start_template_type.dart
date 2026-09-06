import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines the authorization status of requests.
enum QuickStartTemplateType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueHCI("HCI"),
  valueHCIAKS("HCIAKS"),
  valueHCIARCVM("HCIARCVM"),
  valueALL("ALL");

  const QuickStartTemplateType(this.wireValue);
  @override
  final String wireValue;

  static QuickStartTemplateType fromValue(String value) {
    for (final item in QuickStartTemplateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QuickStartTemplateType value: $value');
  }
}
