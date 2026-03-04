/// Reason for the specified invoice section status.
enum InvoiceSectionStateReasonCode {
  valueOther("Other"),
  valuePastDue("PastDue"),
  valueUnusualActivity("UnusualActivity"),
  valueSpendingLimitReached("SpendingLimitReached"),
  valueSpendingLimitExpired("SpendingLimitExpired");

  const InvoiceSectionStateReasonCode(this.wireValue);
  final String wireValue;

  static InvoiceSectionStateReasonCode fromValue(String value) {
    for (final item in InvoiceSectionStateReasonCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InvoiceSectionStateReasonCode value: $value');
  }
}
