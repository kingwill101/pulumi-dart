import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies when the recurrence should be applied.
enum RecurrenceType implements pulumi.PulumiEnum<String> {
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

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
