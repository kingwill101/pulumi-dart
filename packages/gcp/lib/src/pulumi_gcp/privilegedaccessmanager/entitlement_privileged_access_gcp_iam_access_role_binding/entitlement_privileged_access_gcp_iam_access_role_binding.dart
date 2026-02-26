// ignore_for_file: unused_element, unnecessary_cast

class EntitlementPrivilegedAccessGcpIamAccessRoleBinding {
  /// The expression field of the IAM condition to be associated with the role. If specified, a user with an active grant for this entitlement would be able to access the resource only if this condition evaluates to true for their request.
  /// https://cloud.google.com/iam/docs/conditions-overview#attributes.
  final String? conditionExpression;

  /// (Output, Beta)
  /// Output Only. The ID corresponding to this role binding in the policy binding. This will be unique within an entitlement across time. Gets re-generated each time the entitlement is updated.
  final String? id;

  /// IAM role to be granted. https://cloud.google.com/iam/docs/roles-overview.
  final String role;

  EntitlementPrivilegedAccessGcpIamAccessRoleBinding({
    this.conditionExpression,
    this.id,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionExpressionValue = conditionExpression;
    if (conditionExpressionValue != null) {
      map['conditionExpression'] = conditionExpressionValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['role'] = role;
    return map;
  }

  factory EntitlementPrivilegedAccessGcpIamAccessRoleBinding.fromMap(
      Map<String, dynamic> map) {
    return EntitlementPrivilegedAccessGcpIamAccessRoleBinding(
      conditionExpression: map['conditionExpression'] == null
          ? null
          : map['conditionExpression'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      role: map['role'] as String,
    );
  }
}
