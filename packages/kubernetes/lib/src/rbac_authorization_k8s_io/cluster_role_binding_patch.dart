// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'role_ref_patch.dart';
import 'subject_patch.dart';

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
class ClusterRoleBindingPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata.
  final ObjectMetaPatch? metadata;
  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  final RoleRefPatch? roleRef;
  /// Subjects holds references to the objects the role applies to.
  final List<SubjectPatch>? subjects;

  /// Creates a new [ClusterRoleBindingPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  /// [subjects] Subjects holds references to the objects the role applies to.
  ClusterRoleBindingPatch({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.roleRef,
    this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'roleRef': ?roleRef == null ? null : roleRef!.toMap(),
      'subjects': ?subjects == null ? null : pulumi.Input.encodeList<SubjectPatch, Map<String, dynamic>>(subjects!, (value) => value.toMap()),
    };
  }

  factory ClusterRoleBindingPatch.fromMap(Map<String, dynamic> map) {
    return ClusterRoleBindingPatch(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      roleRef: map['roleRef'] == null ? null : RoleRefPatch.fromMap((map['roleRef'] as Map).cast<String, dynamic>()),
      subjects: map['subjects'] == null ? null : pulumi.Input.decodeList<SubjectPatch>(map['subjects'], (value) => SubjectPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

