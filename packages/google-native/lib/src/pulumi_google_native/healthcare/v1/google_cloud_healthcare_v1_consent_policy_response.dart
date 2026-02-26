// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'attribute_response.dart';
import 'expr_response69.dart';

/// Represents a user's consent in terms of the resources that can be accessed and under what conditions.
class GoogleCloudHealthcareV1ConsentPolicyResponse {
  /// The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  final ExprResponse69 authorizationRule;

  /// The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  final List<AttributeResponse> resourceAttributes;

  GoogleCloudHealthcareV1ConsentPolicyResponse({
    required this.authorizationRule,
    required this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationRule'] = authorizationRule.toMap();
    map['resourceAttributes'] =
        Input.encodeList<AttributeResponse, Map<String, dynamic>>(
            resourceAttributes, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudHealthcareV1ConsentPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1ConsentPolicyResponse(
      authorizationRule: ExprResponse69.fromMap(
          (map['authorizationRule'] as Map).cast<String, dynamic>()),
      resourceAttributes: Input.decodeList<AttributeResponse>(
          map['resourceAttributes'],
          (value) => AttributeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
