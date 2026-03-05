/// Status of the credit
enum CreditStatus {
  valueUnknown("Unknown"),
  valuePending("Pending"),
  valueActive("Active"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed"),
  valueExpired("Expired"),
  valueExhausted("Exhausted"),
  valueNotStarted("NotStarted");

  const CreditStatus(this.wireValue);
  final String wireValue;

  static CreditStatus fromValue(String value) {
    for (final item in CreditStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreditStatus value: $value');
  }
}

