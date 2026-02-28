/// Optional. The infrastructure type this Membership is running on.
enum MembershipInfrastructureType {
  infrastructureTypeUnspecified("INFRASTRUCTURE_TYPE_UNSPECIFIED"),
  onPrem("ON_PREM"),
  multiCloud("MULTI_CLOUD");

  const MembershipInfrastructureType(this.value);
  final String value;

  static MembershipInfrastructureType fromValue(String value) {
    for (final item in MembershipInfrastructureType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MembershipInfrastructureType value: $value');
  }
}

