/// The partner type.
enum PartnerType {
  valueNotSpecified("NotSpecified"),
  valueB2B("B2B");

  const PartnerType(this.value);
  final String value;

  static PartnerType fromValue(String value) {
    for (final item in PartnerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerType value: $value');
  }
}

