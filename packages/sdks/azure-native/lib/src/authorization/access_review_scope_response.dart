// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Descriptor for what needs to be reviewed
class AccessReviewScopeResponse {
  /// The role assignment state eligible/active to review
  final pulumi.Input<String> assignmentState;
  /// This is used to indicate the resource id(s) to exclude
  final pulumi.Input<String>? excludeResourceId;
  /// This is used to indicate the role definition id(s) to exclude
  final pulumi.Input<String>? excludeRoleDefinitionId;
  /// Flag to indicate whether to expand nested memberships or not.
  final pulumi.Input<bool>? expandNestedMemberships;
  /// Duration users are inactive for. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  final pulumi.Input<String>? inactiveDuration;
  /// Flag to indicate whether to expand nested memberships or not.
  final pulumi.Input<bool>? includeAccessBelowResource;
  /// Flag to indicate whether to expand nested memberships or not.
  final pulumi.Input<bool>? includeInheritedAccess;
  /// The identity type user/servicePrincipal to review
  final pulumi.Input<String> principalType;
  /// ResourceId in which this review is getting created
  final pulumi.Input<String> resourceId;
  /// This is used to indicate the role being reviewed
  final pulumi.Input<String> roleDefinitionId;

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
      assignmentState: (map['assignmentState'] as String).input(),
      excludeResourceId: map['excludeResourceId'] == null ? null : (map['excludeResourceId'] as String).input(),
      excludeRoleDefinitionId: map['excludeRoleDefinitionId'] == null ? null : (map['excludeRoleDefinitionId'] as String).input(),
      expandNestedMemberships: map['expandNestedMemberships'] == null ? null : (map['expandNestedMemberships'] as bool).input(),
      inactiveDuration: map['inactiveDuration'] == null ? null : (map['inactiveDuration'] as String).input(),
      includeAccessBelowResource: map['includeAccessBelowResource'] == null ? null : (map['includeAccessBelowResource'] as bool).input(),
      includeInheritedAccess: map['includeInheritedAccess'] == null ? null : (map['includeInheritedAccess'] as bool).input(),
      principalType: (map['principalType'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
    );
  }
}

