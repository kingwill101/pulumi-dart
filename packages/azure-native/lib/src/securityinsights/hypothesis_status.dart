/// The hypothesis status of the hunt.
enum HypothesisStatus {
  valueUnknown("Unknown"),
  valueInvalidated("Invalidated"),
  valueValidated("Validated");

  const HypothesisStatus(this.value);
  final String value;

  static HypothesisStatus fromValue(String value) {
    for (final item in HypothesisStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HypothesisStatus value: $value');
  }
}

