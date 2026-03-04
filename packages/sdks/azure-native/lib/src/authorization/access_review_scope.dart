// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Descriptor for what needs to be reviewed
class AccessReviewScope {
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

  /// Creates a new [AccessReviewScope].
  /// [excludeResourceId] This is used to indicate the resource id(s) to exclude
  /// [excludeRoleDefinitionId] This is used to indicate the role definition id(s) to exclude
  /// [expandNestedMemberships] Flag to indicate whether to expand nested memberships or not.
  /// [inactiveDuration] Duration users are inactive for. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  /// [includeAccessBelowResource] Flag to indicate whether to expand nested memberships or not.
  /// [includeInheritedAccess] Flag to indicate whether to expand nested memberships or not.
  AccessReviewScope({
    this.excludeResourceId,
    this.excludeRoleDefinitionId,
    this.expandNestedMemberships,
    this.inactiveDuration,
    this.includeAccessBelowResource,
    this.includeInheritedAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeResourceId': ?excludeResourceId,
      'excludeRoleDefinitionId': ?excludeRoleDefinitionId,
      'expandNestedMemberships': ?expandNestedMemberships,
      'inactiveDuration': ?inactiveDuration,
      'includeAccessBelowResource': ?includeAccessBelowResource,
      'includeInheritedAccess': ?includeInheritedAccess,
    };
  }

  factory AccessReviewScope.fromMap(Map<String, dynamic> map) {
    return AccessReviewScope(
      excludeResourceId: (() {
        final guardedValue = map['excludeResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeRoleDefinitionId: (() {
        final guardedValue = map['excludeRoleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expandNestedMemberships: (() {
        final guardedValue = map['expandNestedMemberships'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      inactiveDuration: (() {
        final guardedValue = map['inactiveDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      includeAccessBelowResource: (() {
        final guardedValue = map['includeAccessBelowResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeInheritedAccess: (() {
        final guardedValue = map['includeInheritedAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
