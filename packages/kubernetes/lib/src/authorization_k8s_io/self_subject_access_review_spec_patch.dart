// ignore_for_file: unused_element, unnecessary_cast

import 'non_resource_attributes_patch.dart';
import 'resource_attributes_patch.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SelfSubjectAccessReviewSpecPatch {
  /// NonResourceAttributes describes information for a non-resource access request
  final NonResourceAttributesPatch? nonResourceAttributes;
  /// ResourceAuthorizationAttributes describes information for a resource access request
  final ResourceAttributesPatch? resourceAttributes;

  /// Creates a new [SelfSubjectAccessReviewSpecPatch].
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  SelfSubjectAccessReviewSpecPatch({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceAttributes': ?nonResourceAttributes == null ? null : nonResourceAttributes!.toMap(),
      'resourceAttributes': ?resourceAttributes == null ? null : resourceAttributes!.toMap(),
    };
  }

  factory SelfSubjectAccessReviewSpecPatch.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReviewSpecPatch(
      nonResourceAttributes: map['nonResourceAttributes'] == null ? null : NonResourceAttributesPatch.fromMap((map['nonResourceAttributes'] as Map).cast<String, dynamic>()),
      resourceAttributes: map['resourceAttributes'] == null ? null : ResourceAttributesPatch.fromMap((map['resourceAttributes'] as Map).cast<String, dynamic>()),
    );
  }
}

