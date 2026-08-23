/// The partner type.
enum PartnerType {
  valueNotSpecified("NotSpecified"),
  valueB2B("B2B");

  const PartnerType(this.wireValue);
  final String wireValue;

  static PartnerType fromValue(String value) {
    for (final item in PartnerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerType value: $value');
  }
}
