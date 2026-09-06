import 'package:pulumi/pulumi.dart' as pulumi;

/// The RosettaNet ProcessConfiguration role type.
enum RosettaNetPipRoleType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueFunctional("Functional"),
  valueOrganizational("Organizational"),
  valueEmployee("Employee");

  const RosettaNetPipRoleType(this.wireValue);
  @override
  final String wireValue;

  static RosettaNetPipRoleType fromValue(String value) {
    for (final item in RosettaNetPipRoleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetPipRoleType value: $value');
  }
}
