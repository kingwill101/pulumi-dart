import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of the scheduled action.
enum ScheduledActionKind implements pulumi.PulumiEnum<String> {
  email("Email"),
  insightAlert("InsightAlert");

  const ScheduledActionKind(this.wireValue);
  @override
  final String wireValue;

  static ScheduledActionKind fromValue(String value) {
    for (final item in ScheduledActionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledActionKind value: $value');
  }
}
