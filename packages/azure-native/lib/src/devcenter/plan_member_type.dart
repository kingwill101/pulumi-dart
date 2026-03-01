/// The type of the member (user, group)
enum PlanMemberType {
  valueUser("User"),
  valueGroup("Group");

  const PlanMemberType(this.value);
  final String value;

  static PlanMemberType fromValue(String value) {
    for (final item in PlanMemberType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlanMemberType value: $value');
  }
}

