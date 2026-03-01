/// The region of the instance
enum Region {
  eastus("eastus"),
  centralus("centralus"),
  westus("westus"),
  westeurope("westeurope"),
  japaneast("japaneast"),
  koreacentral("koreacentral");

  const Region(this.value);
  final String value;

  static Region fromValue(String value) {
    for (final item in Region.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Region value: $value');
  }
}

