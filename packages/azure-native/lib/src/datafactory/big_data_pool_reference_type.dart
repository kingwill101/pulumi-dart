/// Big data pool reference type.
enum BigDataPoolReferenceType {
  valueBigDataPoolReference("BigDataPoolReference");

  const BigDataPoolReferenceType(this.value);
  final String value;

  static BigDataPoolReferenceType fromValue(String value) {
    for (final item in BigDataPoolReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BigDataPoolReferenceType value: $value');
  }
}

