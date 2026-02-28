// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_healthcare_v1beta1.dart';
import 'expr_healthcare_v1beta1.dart';

/// Represents a user's consent in terms of the resources that can be accessed and under what conditions.
class GoogleCloudHealthcareV1beta1ConsentPolicy {
  /// The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  final ExprHealthcareV1beta1 authorizationRule;
  /// The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  final List<AttributeHealthcareV1beta1>? resourceAttributes;

  /// Creates a new [GoogleCloudHealthcareV1beta1ConsentPolicy].
  /// [authorizationRule] The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  /// [resourceAttributes] The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  GoogleCloudHealthcareV1beta1ConsentPolicy({
    required this.authorizationRule,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRule': authorizationRule.toMap(),
      'resourceAttributes': ?resourceAttributes == null ? null : pulumi.Input.encodeList<AttributeHealthcareV1beta1, Map<String, dynamic>>(resourceAttributes!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudHealthcareV1beta1ConsentPolicy.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1ConsentPolicy(
      authorizationRule: ExprHealthcareV1beta1.fromMap((map['authorizationRule'] as Map).cast<String, dynamic>()),
      resourceAttributes: map['resourceAttributes'] == null ? null : pulumi.Input.decodeList<AttributeHealthcareV1beta1>(map['resourceAttributes'], (value) => AttributeHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

