// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_lf_tag_policy_expression.dart';

class PermissionsLfTagPolicy {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// A list of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See `expression` below.
  ///
  /// The following argument is optional:
  final pulumi.Input<List<PermissionsLfTagPolicyExpression>> expressions;
  /// The resource type for which the tag policy applies. Valid values are `DATABASE` and `TABLE`.
  final pulumi.Input<String> resourceType;

  /// Creates a new [PermissionsLfTagPolicy].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [expressions] A list of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See `expression` below.
  /// [resourceType] The resource type for which the tag policy applies. Valid values are `DATABASE` and `TABLE`.
  PermissionsLfTagPolicy({
    this.catalogId,
    required this.expressions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'expressions': pulumi.Input.mapInputValue<List<PermissionsLfTagPolicyExpression>, List<Map<String, dynamic>>>(expressions, (value) => pulumi.Input.encodeList<PermissionsLfTagPolicyExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': resourceType,
    };
  }

  factory PermissionsLfTagPolicy.fromMap(Map<String, dynamic> map) {
    return PermissionsLfTagPolicy(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      expressions: (pulumi.Input.decodeList<PermissionsLfTagPolicyExpression>(map['expressions'], (value) => PermissionsLfTagPolicyExpression.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

