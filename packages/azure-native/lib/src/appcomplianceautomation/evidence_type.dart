/// Evidence type.
enum EvidenceType {
  file("File"),
  autoCollectedEvidence("AutoCollectedEvidence"),
  data("Data");

  const EvidenceType(this.value);
  final String value;

  static EvidenceType fromValue(String value) {
    for (final item in EvidenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvidenceType value: $value');
  }
}

