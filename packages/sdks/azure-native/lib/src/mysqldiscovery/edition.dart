/// mysql server edition.
enum Edition {
  valueCommunity("Community"),
  valueEnterprise("Enterprise");

  const Edition(this.wireValue);
  final String wireValue;

  static Edition fromValue(String value) {
    for (final item in Edition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Edition value: $value');
  }
}
