// ignore_for_file: unused_element, unnecessary_cast

import 'non_resource_attributes.dart';
import 'resource_attributes.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SelfSubjectAccessReviewSpec {
  /// NonResourceAttributes describes information for a non-resource access request
  final NonResourceAttributes? nonResourceAttributes;
  /// ResourceAuthorizationAttributes describes information for a resource access request
  final ResourceAttributes? resourceAttributes;

  /// Creates a new [SelfSubjectAccessReviewSpec].
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  SelfSubjectAccessReviewSpec({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceAttributes': ?nonResourceAttributes == null ? null : nonResourceAttributes!.toMap(),
      'resourceAttributes': ?resourceAttributes == null ? null : resourceAttributes!.toMap(),
    };
  }

  factory SelfSubjectAccessReviewSpec.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReviewSpec(
      nonResourceAttributes: map['nonResourceAttributes'] == null ? null : NonResourceAttributes.fromMap((map['nonResourceAttributes'] as Map).cast<String, dynamic>()),
      resourceAttributes: map['resourceAttributes'] == null ? null : ResourceAttributes.fromMap((map['resourceAttributes'] as Map).cast<String, dynamic>()),
    );
  }
}

