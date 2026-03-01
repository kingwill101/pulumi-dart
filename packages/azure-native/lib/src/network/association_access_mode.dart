/// Access mode on the association.
enum AssociationAccessMode {
  valueLearning("Learning"),
  valueEnforced("Enforced"),
  valueAudit("Audit");

  const AssociationAccessMode(this.value);
  final String value;

  static AssociationAccessMode fromValue(String value) {
    for (final item in AssociationAccessMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssociationAccessMode value: $value');
  }
}

