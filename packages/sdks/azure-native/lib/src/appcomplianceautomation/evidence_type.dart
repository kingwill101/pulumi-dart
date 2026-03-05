/// Evidence type.
enum EvidenceType {
  file("File"),
  autoCollectedEvidence("AutoCollectedEvidence"),
  data("Data");

  const EvidenceType(this.wireValue);
  final String wireValue;

  static EvidenceType fromValue(String value) {
    for (final item in EvidenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvidenceType value: $value');
  }
}

