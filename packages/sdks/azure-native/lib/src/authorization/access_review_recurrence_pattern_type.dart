import 'package:pulumi/pulumi.dart' as pulumi;

/// The recurrence type : weekly, monthly, etc.
enum AccessReviewRecurrencePatternType implements pulumi.PulumiEnum<String> {
  weekly("weekly"),
  absoluteMonthly("absoluteMonthly");

  const AccessReviewRecurrencePatternType(this.wireValue);
  @override
  final String wireValue;

  static AccessReviewRecurrencePatternType fromValue(String value) {
    for (final item in AccessReviewRecurrencePatternType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessReviewRecurrencePatternType value: $value');
  }
}
