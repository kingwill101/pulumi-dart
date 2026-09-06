import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Goal Template created by customer
enum GoalType implements pulumi.PulumiEnum<String> {
  resiliency("Resiliency");

  const GoalType(this.wireValue);
  @override
  final String wireValue;

  static GoalType fromValue(String value) {
    for (final item in GoalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoalType value: $value');
  }
}
