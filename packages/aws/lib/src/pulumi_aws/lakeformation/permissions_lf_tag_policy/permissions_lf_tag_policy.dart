// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../permissions_lf_tag_policy_expression/permissions_lf_tag_policy_expression.dart';

class PermissionsLfTagPolicy {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// A list of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See `expression` below.
  ///
  /// The following argument is optional:
  final List<PermissionsLfTagPolicyExpression> expressions;

  /// The resource type for which the tag policy applies. Valid values are `DATABASE` and `TABLE`.
  final String resourceType;

  PermissionsLfTagPolicy({
    this.catalogId,
    required this.expressions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['expressions'] = pulumi.Input.encodeList<
        PermissionsLfTagPolicyExpression,
        Map<String, dynamic>>(expressions, (value) => value.toMap());
    map['resourceType'] = resourceType;
    return map;
  }

  factory PermissionsLfTagPolicy.fromMap(Map<String, dynamic> map) {
    return PermissionsLfTagPolicy(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      expressions: pulumi.Input.decodeList<PermissionsLfTagPolicyExpression>(
          map['expressions'],
          (value) => PermissionsLfTagPolicyExpression.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] as String,
    );
  }
}
