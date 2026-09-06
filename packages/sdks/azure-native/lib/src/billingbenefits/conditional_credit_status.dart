import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the conditional credit
enum ConditionalCreditStatus implements pulumi.PulumiEnum<String> {
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
  @override
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
