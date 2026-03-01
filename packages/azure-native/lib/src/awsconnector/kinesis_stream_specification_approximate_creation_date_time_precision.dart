/// The precision for the time and date that the stream was created.
enum KinesisStreamSpecificationApproximateCreationDateTimePrecision {
  mICROSECOND("MICROSECOND"),
  mILLISECOND("MILLISECOND");

  const KinesisStreamSpecificationApproximateCreationDateTimePrecision(this.value);
  final String value;

  static KinesisStreamSpecificationApproximateCreationDateTimePrecision fromValue(String value) {
    for (final item in KinesisStreamSpecificationApproximateCreationDateTimePrecision.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KinesisStreamSpecificationApproximateCreationDateTimePrecision value: $value');
  }
}

