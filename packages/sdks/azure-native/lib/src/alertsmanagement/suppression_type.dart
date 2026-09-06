import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies when the suppression should be applied
enum SuppressionType implements pulumi.PulumiEnum<String> {
  valueAlways("Always"),
  valueOnce("Once"),
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueMonthly("Monthly");

  const SuppressionType(this.wireValue);
  @override
  final String wireValue;

  static SuppressionType fromValue(String value) {
    for (final item in SuppressionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SuppressionType value: $value');
  }
}
