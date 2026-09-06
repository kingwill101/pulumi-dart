import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceRoleType implements pulumi.PulumiEnum<String> {
  cORE("CORE"),
  mASTER("MASTER"),
  tASK("TASK");

  const InstanceRoleType(this.wireValue);
  @override
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
