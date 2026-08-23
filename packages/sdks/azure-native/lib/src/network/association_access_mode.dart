/// Access mode on the association.
enum AssociationAccessMode {
  valueLearning("Learning"),
  valueEnforced("Enforced"),
  valueAudit("Audit");

  const AssociationAccessMode(this.wireValue);
  final String wireValue;

  static AssociationAccessMode fromValue(String value) {
    for (final item in AssociationAccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssociationAccessMode value: $value');
  }
}
