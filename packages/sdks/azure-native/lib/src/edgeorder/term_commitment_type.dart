/// Term Commitment Type
enum TermCommitmentType {
  none("None"),
  trial("Trial"),
  timed("Timed");

  const TermCommitmentType(this.wireValue);
  final String wireValue;

  static TermCommitmentType fromValue(String value) {
    for (final item in TermCommitmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TermCommitmentType value: $value');
  }
}
