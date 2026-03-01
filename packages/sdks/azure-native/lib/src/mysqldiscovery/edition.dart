/// mysql server edition.
enum Edition {
  valueCommunity("Community"),
  valueEnterprise("Enterprise");

  const Edition(this.value);
  final String value;

  static Edition fromValue(String value) {
    for (final item in Edition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Edition value: $value');
  }
}

