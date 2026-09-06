import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the member (user, group)
enum PlanMemberType implements pulumi.PulumiEnum<String> {
  valueUser("User"),
  valueGroup("Group");

  const PlanMemberType(this.wireValue);
  @override
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
