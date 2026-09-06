import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the credit
enum CreditStatus implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  pending("Pending"),
  active("Active"),
  succeeded("Succeeded"),
  canceled("Canceled"),
  failed("Failed"),
  expired("Expired"),
  exhausted("Exhausted"),
  notStarted("NotStarted");

  const CreditStatus(this.wireValue);
  @override
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
