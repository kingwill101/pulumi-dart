/// Encapsulation Type that needs to be matched.
enum EncapsulationType {
  valueNone("None"),
  valueGTPv1("GTPv1");

  const EncapsulationType(this.value);
  final String value;

  static EncapsulationType fromValue(String value) {
    for (final item in EncapsulationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncapsulationType value: $value');
  }
}

