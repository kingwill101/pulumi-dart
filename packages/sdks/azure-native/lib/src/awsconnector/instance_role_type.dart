/// Property value
enum InstanceRoleType {
  cORE("CORE"),
  mASTER("MASTER"),
  tASK("TASK");

  const InstanceRoleType(this.wireValue);
  final String wireValue;

  static InstanceRoleType fromValue(String value) {
    for (final item in InstanceRoleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceRoleType value: $value');
  }
}

