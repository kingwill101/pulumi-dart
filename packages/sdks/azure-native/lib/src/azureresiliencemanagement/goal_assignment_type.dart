/// The type of goal assignment.
enum GoalAssignmentType {
  resiliency("Resiliency");

  const GoalAssignmentType(this.wireValue);
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
