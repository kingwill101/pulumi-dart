// ignore_for_file: unused_element, unnecessary_cast

import 'non_resource_attributes_authorization_k8s_io_v1beta1.dart';
import 'resource_attributes_authorization_k8s_io_v1beta1.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SubjectAccessReviewSpecAuthorizationK8sIoV1beta1 {
  /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  final Map<String, List<String>>? extra;
  /// Groups is the groups you're testing for.
  final List<String>? group;
  /// NonResourceAttributes describes information for a non-resource access request
  final NonResourceAttributesAuthorizationK8sIoV1beta1? nonResourceAttributes;
  /// ResourceAuthorizationAttributes describes information for a resource access request
  final ResourceAttributesAuthorizationK8sIoV1beta1? resourceAttributes;
  /// UID information about the requesting user.
  final String? uid;
  /// User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
  final String? user;

  /// Creates a new [SubjectAccessReviewSpecAuthorizationK8sIoV1beta1].
  /// [extra] Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  /// [group] Groups is the groups you're testing for.
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  /// [uid] UID information about the requesting user.
  /// [user] User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
  SubjectAccessReviewSpecAuthorizationK8sIoV1beta1({
    this.extra,
    this.group,
    this.nonResourceAttributes,
    this.resourceAttributes,
    this.uid,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra': ?extra,
      'group': ?group,
      'nonResourceAttributes': ?nonResourceAttributes == null ? null : nonResourceAttributes!.toMap(),
      'resourceAttributes': ?resourceAttributes == null ? null : resourceAttributes!.toMap(),
      'uid': ?uid,
      'user': ?user,
    };
  }

  factory SubjectAccessReviewSpecAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectAccessReviewSpecAuthorizationK8sIoV1beta1(
      extra: map['extra'] == null ? null : (map['extra'] as Map).cast<String, List<String>>(),
      group: map['group'] == null ? null : (map['group'] as List).cast<String>(),
      nonResourceAttributes: map['nonResourceAttributes'] == null ? null : NonResourceAttributesAuthorizationK8sIoV1beta1.fromMap((map['nonResourceAttributes'] as Map).cast<String, dynamic>()),
      resourceAttributes: map['resourceAttributes'] == null ? null : ResourceAttributesAuthorizationK8sIoV1beta1.fromMap((map['resourceAttributes'] as Map).cast<String, dynamic>()),
      uid: map['uid'] == null ? null : map['uid'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

