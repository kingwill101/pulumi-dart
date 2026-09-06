import 'package:pulumi/pulumi.dart' as pulumi;

/// Reason for the specified invoice section status.
enum InvoiceSectionStateReasonCode implements pulumi.PulumiEnum<String> {
  other("Other"),
  pastDue("PastDue"),
  unusualActivity("UnusualActivity"),
  spendingLimitReached("SpendingLimitReached"),
  spendingLimitExpired("SpendingLimitExpired");

  const InvoiceSectionStateReasonCode(this.wireValue);
  @override
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
