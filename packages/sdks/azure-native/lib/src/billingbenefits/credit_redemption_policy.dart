/// Redemption policy of the Credit
enum CreditRedemptionPolicy {
  valueNotApplicable("NotApplicable"),
  valueAutoRedeem("AutoRedeem"),
  valueManualRedeem("ManualRedeem");

  const CreditRedemptionPolicy(this.wireValue);
  final String wireValue;

  static CreditRedemptionPolicy fromValue(String value) {
    for (final item in CreditRedemptionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreditRedemptionPolicy value: $value');
  }
}

