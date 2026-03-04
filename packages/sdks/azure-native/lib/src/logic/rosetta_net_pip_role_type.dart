/// The RosettaNet ProcessConfiguration role type.
enum RosettaNetPipRoleType {
  valueNotSpecified("NotSpecified"),
  valueFunctional("Functional"),
  valueOrganizational("Organizational"),
  valueEmployee("Employee");

  const RosettaNetPipRoleType(this.wireValue);
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
