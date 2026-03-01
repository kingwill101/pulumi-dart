/// The recipient type.
enum RecipientType {
  valueRequestor("Requestor"),
  valueApprover("Approver"),
  valueAdmin("Admin");

  const RecipientType(this.value);
  final String value;

  static RecipientType fromValue(String value) {
    for (final item in RecipientType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecipientType value: $value');
  }
}

