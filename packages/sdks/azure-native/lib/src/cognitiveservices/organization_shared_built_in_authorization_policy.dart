// ignore_for_file: unused_element, unnecessary_cast


/// Built-in authorization policy scoped to organization/tenant.
class OrganizationSharedBuiltInAuthorizationPolicy {
  /// Authorization scheme type.
  /// Expected value is 'OrganizationScope'.
  final String type;

  /// Creates a new [OrganizationSharedBuiltInAuthorizationPolicy].
  /// [type] Authorization scheme type.
  OrganizationSharedBuiltInAuthorizationPolicy({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory OrganizationSharedBuiltInAuthorizationPolicy.fromMap(Map<String, dynamic> map) {
    return OrganizationSharedBuiltInAuthorizationPolicy(
      type: map['type'] as String,
    );
  }
}

