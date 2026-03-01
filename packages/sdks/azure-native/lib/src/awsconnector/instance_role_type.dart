/// Property value
enum InstanceRoleType {
  cORE("CORE"),
  mASTER("MASTER"),
  tASK("TASK");

  const InstanceRoleType(this.value);
  final String value;

  static InstanceRoleType fromValue(String value) {
    for (final item in InstanceRoleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceRoleType value: $value');
  }
}

