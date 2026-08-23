/// The status of the conditional credit
enum ConditionalCreditStatus {
  unknown("Unknown"),
  scheduled("Scheduled"),
  active("Active"),
  pending("Pending"),
  failed("Failed"),
  canceled("Canceled"),
  completed("Completed"),
  stopped("Stopped"),
  pendingSettlement("PendingSettlement");

  const ConditionalCreditStatus(this.wireValue);
  final String wireValue;

  static ConditionalCreditStatus fromValue(String value) {
    for (final item in ConditionalCreditStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionalCreditStatus value: $value');
  }
}
