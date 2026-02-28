// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationRootPolicyType {
  /// Status of the policy type as it relates to the associated root.
  final String status;
  final String type;

  /// Creates a new [GetOrganizationRootPolicyType].
  /// [status] Status of the policy type as it relates to the associated root.
  /// [type] Required.
  GetOrganizationRootPolicyType({
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['type'] = type;
    return map;
  }

  factory GetOrganizationRootPolicyType.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRootPolicyType(
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}
