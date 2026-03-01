/// The agreement type.
enum AgreementType {
  valueNotSpecified("NotSpecified"),
  valueAS2("AS2"),
  valueX12("X12"),
  valueEdifact("Edifact");

  const AgreementType(this.value);
  final String value;

  static AgreementType fromValue(String value) {
    for (final item in AgreementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgreementType value: $value');
  }
}

