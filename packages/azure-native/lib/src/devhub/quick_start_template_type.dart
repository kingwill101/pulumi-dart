/// Determines the authorization status of requests.
enum QuickStartTemplateType {
  valueNone("None"),
  valueHCI("HCI"),
  valueHCIAKS("HCIAKS"),
  valueHCIARCVM("HCIARCVM"),
  valueALL("ALL");

  const QuickStartTemplateType(this.value);
  final String value;

  static QuickStartTemplateType fromValue(String value) {
    for (final item in QuickStartTemplateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QuickStartTemplateType value: $value');
  }
}

