/// Association Type
enum AssociationType {
  subnets("subnets");

  const AssociationType(this.value);
  final String value;

  static AssociationType fromValue(String value) {
    for (final item in AssociationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssociationType value: $value');
  }
}

