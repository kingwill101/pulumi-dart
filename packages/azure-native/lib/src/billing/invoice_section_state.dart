/// Identifies the status of an invoice section.
enum InvoiceSectionState {
  valueOther("Other"),
  valueActive("Active"),
  valueDeleted("Deleted"),
  valueDisabled("Disabled"),
  valueUnderReview("UnderReview"),
  valueWarned("Warned"),
  valueRestricted("Restricted");

  const InvoiceSectionState(this.value);
  final String value;

  static InvoiceSectionState fromValue(String value) {
    for (final item in InvoiceSectionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InvoiceSectionState value: $value');
  }
}

