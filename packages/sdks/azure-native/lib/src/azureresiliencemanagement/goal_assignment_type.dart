import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of goal assignment.
enum GoalAssignmentType implements pulumi.PulumiEnum<String> {
  resiliency("Resiliency");

  const GoalAssignmentType(this.wireValue);
  @override
  final String wireValue;

  static GoalAssignmentType fromValue(String value) {
    for (final item in GoalAssignmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoalAssignmentType value: $value');
  }
}
