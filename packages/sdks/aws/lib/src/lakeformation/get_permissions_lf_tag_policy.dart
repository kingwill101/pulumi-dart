// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_permissions_lf_tag_policy_expression.dart';

class GetPermissionsLfTagPolicy {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String> catalogId;
  /// List of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See `expression` below.
  ///
  /// The following argument is optional:
  final pulumi.Input<List<GetPermissionsLfTagPolicyExpression>> expressions;
  /// Resource type for which the tag policy applies. Valid values are `DATABASE` and `TABLE`.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetPermissionsLfTagPolicy].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [expressions] List of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See `expression` below.
  /// [resourceType] Resource type for which the tag policy applies. Valid values are `DATABASE` and `TABLE`.
  const GetPermissionsLfTagPolicy({
    required this.catalogId,
    required this.expressions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'expressions': pulumi.Input.mapInputValue<List<GetPermissionsLfTagPolicyExpression>, List<Map<String, dynamic>>>(expressions, (value) => pulumi.Input.encodeList<GetPermissionsLfTagPolicyExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': resourceType,
    };
  }

  factory GetPermissionsLfTagPolicy.fromMap(Map<String, dynamic> map) {
    return GetPermissionsLfTagPolicy(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      expressions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPermissionsLfTagPolicyExpression>(map['expressions']!, (value) => GetPermissionsLfTagPolicyExpression.fromMap((value as Map).cast<String, dynamic>()))),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
