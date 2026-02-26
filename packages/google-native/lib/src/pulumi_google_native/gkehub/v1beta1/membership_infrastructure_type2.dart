/// Optional. The infrastructure type this Membership is running on.
enum MembershipInfrastructureType2 {
  infrastructureTypeUnspecified("INFRASTRUCTURE_TYPE_UNSPECIFIED"),
  onPrem("ON_PREM"),
  multiCloud("MULTI_CLOUD");

  const MembershipInfrastructureType2(this.value);
  final String value;

  static MembershipInfrastructureType2 fromValue(String value) {
    for (final item in MembershipInfrastructureType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MembershipInfrastructureType2 value: $value');
  }
}
