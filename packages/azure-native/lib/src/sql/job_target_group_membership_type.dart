/// Whether the target is included or excluded from the group.
enum JobTargetGroupMembershipType {
  valueInclude("Include"),
  valueExclude("Exclude");

  const JobTargetGroupMembershipType(this.value);
  final String value;

  static JobTargetGroupMembershipType fromValue(String value) {
    for (final item in JobTargetGroupMembershipType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTargetGroupMembershipType value: $value');
  }
}

