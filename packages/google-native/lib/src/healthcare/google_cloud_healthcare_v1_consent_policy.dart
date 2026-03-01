// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute.dart';
import 'expr.dart';

/// Represents a user's consent in terms of the resources that can be accessed and under what conditions.
class GoogleCloudHealthcareV1ConsentPolicy {
  /// The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  final Expr authorizationRule;

  /// The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  final List<Attribute>? resourceAttributes;

  /// Creates a new [GoogleCloudHealthcareV1ConsentPolicy].
  /// [authorizationRule] The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  /// [resourceAttributes] The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  GoogleCloudHealthcareV1ConsentPolicy({
    required this.authorizationRule,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRule': authorizationRule.toMap(),
      'resourceAttributes': ?resourceAttributes == null
          ? null
          : pulumi.Input.encodeList<Attribute, Map<String, dynamic>>(
              resourceAttributes!,
              (value) => value.toMap(),
            ),
    };
  }

  factory GoogleCloudHealthcareV1ConsentPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudHealthcareV1ConsentPolicy(
      authorizationRule: Expr.fromMap(
        (map['authorizationRule'] as Map).cast<String, dynamic>(),
      ),
      resourceAttributes: map['resourceAttributes'] == null
          ? null
          : pulumi.Input.decodeList<Attribute>(
              map['resourceAttributes'],
              (value) =>
                  Attribute.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
