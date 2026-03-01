/// The multi cloud account's membership type in the organization
enum OrganizationMembershipType {
  valueMember("Member"),
  valueOrganization("Organization");

  const OrganizationMembershipType(this.value);
  final String value;

  static OrganizationMembershipType fromValue(String value) {
    for (final item in OrganizationMembershipType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationMembershipType value: $value');
  }
}

