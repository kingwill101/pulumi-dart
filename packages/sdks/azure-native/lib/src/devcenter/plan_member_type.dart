/// The type of the member (user, group)
enum PlanMemberType {
  valueUser("User"),
  valueGroup("Group");

  const PlanMemberType(this.wireValue);
  final String wireValue;

  static PlanMemberType fromValue(String value) {
    for (final item in PlanMemberType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlanMemberType value: $value');
  }
}
