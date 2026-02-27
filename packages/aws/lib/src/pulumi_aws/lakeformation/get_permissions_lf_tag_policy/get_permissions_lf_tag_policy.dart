// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_permissions_lf_tag_policy_expression/get_permissions_lf_tag_policy_expression.dart';

class GetPermissionsLfTagPolicy {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String catalogId;

  /// List of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See `expression` below.
  ///
  /// The following argument is optional:
  final List<GetPermissionsLfTagPolicyExpression> expressions;

  /// Resource type for which the tag policy applies. Valid values are `DATABASE` and `TABLE`.
  final String resourceType;

  GetPermissionsLfTagPolicy({
    required this.catalogId,
    required this.expressions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['expressions'] = pulumi.Input.encodeList<
        GetPermissionsLfTagPolicyExpression,
        Map<String, dynamic>>(expressions, (value) => value.toMap());
    map['resourceType'] = resourceType;
    return map;
  }

  factory GetPermissionsLfTagPolicy.fromMap(Map<String, dynamic> map) {
    return GetPermissionsLfTagPolicy(
      catalogId: map['catalogId'] as String,
      expressions: pulumi.Input.decodeList<GetPermissionsLfTagPolicyExpression>(
          map['expressions'],
          (value) => GetPermissionsLfTagPolicyExpression.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] as String,
    );
  }
}
