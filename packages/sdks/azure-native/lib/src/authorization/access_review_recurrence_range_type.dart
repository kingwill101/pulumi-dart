import 'package:pulumi/pulumi.dart' as pulumi;

/// The recurrence range type. The possible values are: endDate, noEnd, numbered.
enum AccessReviewRecurrenceRangeType implements pulumi.PulumiEnum<String> {
  endDate("endDate"),
  noEnd("noEnd"),
  numbered("numbered");

  const AccessReviewRecurrenceRangeType(this.wireValue);
  @override
  final String wireValue;

  static AccessReviewRecurrenceRangeType fromValue(String value) {
    for (final item in AccessReviewRecurrenceRangeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessReviewRecurrenceRangeType value: $value');
  }
}
