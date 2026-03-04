/// The grain of the commitment.
enum CommitmentGrain {
  valueUnknown("Unknown"),
  valueHourly("Hourly"),
  valueFullTerm("FullTerm");

  const CommitmentGrain(this.wireValue);
  final String wireValue;

  static CommitmentGrain fromValue(String value) {
    for (final item in CommitmentGrain.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommitmentGrain value: $value');
  }
}
