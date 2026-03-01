// ignore_for_file: unused_element, unnecessary_cast


/// Descriptor for what needs to be reviewed
class AccessReviewScopeResponse {
  /// The role assignment state eligible/active to review
  final String assignmentState;
  /// This is used to indicate the resource id(s) to exclude
  final String? excludeResourceId;
  /// This is used to indicate the role definition id(s) to exclude
  final String? excludeRoleDefinitionId;
  /// Flag to indicate whether to expand nested memberships or not.
  final bool? expandNestedMemberships;
  /// Duration users are inactive for. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  final String? inactiveDuration;
  /// Flag to indicate whether to expand nested memberships or not.
  final bool? includeAccessBelowResource;
  /// Flag to indicate whether to expand nested memberships or not.
  final bool? includeInheritedAccess;
  /// The identity type user/servicePrincipal to review
  final String principalType;
  /// ResourceId in which this review is getting created
  final String resourceId;
  /// This is used to indicate the role being reviewed
  final String roleDefinitionId;

  /// Creates a new [AccessReviewScopeResponse].
  /// [assignmentState] The role assignment state eligible/active to review
  /// [excludeResourceId] This is used to indicate the resource id(s) to exclude
  /// [excludeRoleDefinitionId] This is used to indicate the role definition id(s) to exclude
  /// [expandNestedMemberships] Flag to indicate whether to expand nested memberships or not.
  /// [inactiveDuration] Duration users are inactive for. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  /// [includeAccessBelowResource] Flag to indicate whether to expand nested memberships or not.
  /// [includeInheritedAccess] Flag to indicate whether to expand nested memberships or not.
  /// [principalType] The identity type user/servicePrincipal to review
  /// [resourceId] ResourceId in which this review is getting created
  /// [roleDefinitionId] This is used to indicate the role being reviewed
  AccessReviewScopeResponse({
    required this.assignmentState,
    this.excludeResourceId,
    this.excludeRoleDefinitionId,
    this.expandNestedMemberships,
    this.inactiveDuration,
    this.includeAccessBelowResource,
    this.includeInheritedAccess,
    required this.principalType,
    required this.resourceId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentState': assignmentState,
      'excludeResourceId': ?excludeResourceId,
      'excludeRoleDefinitionId': ?excludeRoleDefinitionId,
      'expandNestedMemberships': ?expandNestedMemberships,
      'inactiveDuration': ?inactiveDuration,
      'includeAccessBelowResource': ?includeAccessBelowResource,
      'includeInheritedAccess': ?includeInheritedAccess,
      'principalType': principalType,
      'resourceId': resourceId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory AccessReviewScopeResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewScopeResponse(
      assignmentState: map['assignmentState'] as String,
      excludeResourceId: map['excludeResourceId'] == null ? null : map['excludeResourceId'] as String,
      excludeRoleDefinitionId: map['excludeRoleDefinitionId'] == null ? null : map['excludeRoleDefinitionId'] as String,
      expandNestedMemberships: map['expandNestedMemberships'] == null ? null : map['expandNestedMemberships'] as bool,
      inactiveDuration: map['inactiveDuration'] == null ? null : map['inactiveDuration'] as String,
      includeAccessBelowResource: map['includeAccessBelowResource'] == null ? null : map['includeAccessBelowResource'] as bool,
      includeInheritedAccess: map['includeInheritedAccess'] == null ? null : map['includeInheritedAccess'] as bool,
      principalType: map['principalType'] as String,
      resourceId: map['resourceId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

