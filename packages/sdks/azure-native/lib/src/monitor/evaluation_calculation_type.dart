import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how evaluation is calculated, either based on calendar days or a rolling window.
enum EvaluationCalculationType implements pulumi.PulumiEnum<String> {
  calendarDays("CalendarDays"),
  rollingDays("RollingDays");

  const EvaluationCalculationType(this.wireValue);
  @override
  final String wireValue;

  static EvaluationCalculationType fromValue(String value) {
    for (final item in EvaluationCalculationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvaluationCalculationType value: $value');
  }
}
