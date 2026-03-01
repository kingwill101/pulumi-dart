/// Term Commitment Type
enum TermCommitmentType {
  none("None"),
  trial("Trial"),
  timed("Timed");

  const TermCommitmentType(this.value);
  final String value;

  static TermCommitmentType fromValue(String value) {
    for (final item in TermCommitmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TermCommitmentType value: $value');
  }
}

