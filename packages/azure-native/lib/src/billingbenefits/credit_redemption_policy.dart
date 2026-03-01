/// Redemption policy of the Credit
enum CreditRedemptionPolicy {
  valueNotApplicable("NotApplicable"),
  valueAutoRedeem("AutoRedeem"),
  valueManualRedeem("ManualRedeem");

  const CreditRedemptionPolicy(this.value);
  final String value;

  static CreditRedemptionPolicy fromValue(String value) {
    for (final item in CreditRedemptionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreditRedemptionPolicy value: $value');
  }
}

