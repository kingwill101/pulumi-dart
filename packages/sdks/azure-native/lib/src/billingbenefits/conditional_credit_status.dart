/// The status of the conditional credit
enum ConditionalCreditStatus {
  valueUnknown("Unknown"),
  valueScheduled("Scheduled"),
  valueActive("Active"),
  valuePending("Pending"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueCompleted("Completed"),
  valueStopped("Stopped"),
  valuePendingSettlement("PendingSettlement");

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
