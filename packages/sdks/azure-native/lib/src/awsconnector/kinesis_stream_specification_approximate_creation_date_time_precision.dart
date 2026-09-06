import 'package:pulumi/pulumi.dart' as pulumi;

/// The precision for the time and date that the stream was created.
enum KinesisStreamSpecificationApproximateCreationDateTimePrecision implements pulumi.PulumiEnum<String> {
  mICROSECOND("MICROSECOND"),
  mILLISECOND("MILLISECOND");

  const KinesisStreamSpecificationApproximateCreationDateTimePrecision(this.wireValue);
  @override
  final String wireValue;

  static KinesisStreamSpecificationApproximateCreationDateTimePrecision fromValue(String value) {
    for (final item in KinesisStreamSpecificationApproximateCreationDateTimePrecision.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KinesisStreamSpecificationApproximateCreationDateTimePrecision value: $value');
  }
}
