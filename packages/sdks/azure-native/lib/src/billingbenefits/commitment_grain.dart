/// The grain of the commitment.
enum CommitmentGrain {
  valueUnknown("Unknown"),
  valueHourly("Hourly"),
  valueFullTerm("FullTerm");

  const CommitmentGrain(this.value);
  final String value;

  static CommitmentGrain fromValue(String value) {
    for (final item in CommitmentGrain.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommitmentGrain value: $value');
  }
}

