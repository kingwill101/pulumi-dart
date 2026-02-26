// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterAntiAffinityGroups {
  /// Spread nodes across at least three physical hosts (requires at least three
  /// hosts).
  /// Enabled by default.
  final bool aagConfigDisabled;

  VmwareAdminClusterAntiAffinityGroups({
    required this.aagConfigDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aagConfigDisabled'] = aagConfigDisabled;
    return map;
  }

  factory VmwareAdminClusterAntiAffinityGroups.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterAntiAffinityGroups(
      aagConfigDisabled: map['aagConfigDisabled'] as bool,
    );
  }
}
