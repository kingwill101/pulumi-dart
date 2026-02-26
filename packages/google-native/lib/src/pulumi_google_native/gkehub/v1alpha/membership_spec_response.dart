// ignore_for_file: unused_element, unnecessary_cast

/// **Workload Certificate**: The membership-specific input for WorkloadCertificate feature.
class MembershipSpecResponse {
  /// Specifies workload certificate management.
  final String certificateManagement;

  MembershipSpecResponse({
    required this.certificateManagement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateManagement'] = certificateManagement;
    return map;
  }

  factory MembershipSpecResponse.fromMap(Map<String, dynamic> map) {
    return MembershipSpecResponse(
      certificateManagement: map['certificateManagement'] as String,
    );
  }
}
