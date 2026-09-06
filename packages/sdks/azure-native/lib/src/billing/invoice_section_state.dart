import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies the status of an invoice section.
enum InvoiceSectionState implements pulumi.PulumiEnum<String> {
  other("Other"),
  active("Active"),
  deleted("Deleted"),
  disabled("Disabled"),
  underReview("UnderReview"),
  warned("Warned"),
  restricted("Restricted");

  const InvoiceSectionState(this.wireValue);
  @override
  final String wireValue;

  static InvoiceSectionState fromValue(String value) {
    for (final item in InvoiceSectionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InvoiceSectionState value: $value');
  }
}
