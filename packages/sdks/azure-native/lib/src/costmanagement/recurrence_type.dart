import 'package:pulumi/pulumi.dart' as pulumi;

/// The schedule recurrence.
enum RecurrenceType implements pulumi.PulumiEnum<String> {
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueMonthly("Monthly"),
  valueAnnually("Annually");

  const RecurrenceType(this.wireValue);
  @override
  final String wireValue;

  static RecurrenceType fromValue(String value) {
    for (final item in RecurrenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceType value: $value');
  }
}
