/// Reason for the specified invoice section status.
enum InvoiceSectionStateReasonCode {
  valueOther("Other"),
  valuePastDue("PastDue"),
  valueUnusualActivity("UnusualActivity"),
  valueSpendingLimitReached("SpendingLimitReached"),
  valueSpendingLimitExpired("SpendingLimitExpired");

  const InvoiceSectionStateReasonCode(this.value);
  final String value;

  static InvoiceSectionStateReasonCode fromValue(String value) {
    for (final item in InvoiceSectionStateReasonCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InvoiceSectionStateReasonCode value: $value');
  }
}

