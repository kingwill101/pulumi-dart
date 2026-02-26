// ignore_for_file: unused_element, unnecessary_cast

class OrganizationRootPolicyType {
  /// Status of the policy type as it relates to the associated root.
  final String? status;
  final String? type;

  OrganizationRootPolicyType({
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory OrganizationRootPolicyType.fromMap(Map<String, dynamic> map) {
    return OrganizationRootPolicyType(
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
