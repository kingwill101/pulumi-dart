/// The recipient type.
enum RecipientType {
  requestor("Requestor"),
  approver("Approver"),
  admin("Admin");

  const RecipientType(this.wireValue);
  final String wireValue;

  static RecipientType fromValue(String value) {
    for (final item in RecipientType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecipientType value: $value');
  }
}
