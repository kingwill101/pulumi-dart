/// Big data pool reference type.
enum BigDataPoolReferenceType {
  valueBigDataPoolReference("BigDataPoolReference");

  const BigDataPoolReferenceType(this.wireValue);
  final String wireValue;

  static BigDataPoolReferenceType fromValue(String value) {
    for (final item in BigDataPoolReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BigDataPoolReferenceType value: $value');
  }
}
