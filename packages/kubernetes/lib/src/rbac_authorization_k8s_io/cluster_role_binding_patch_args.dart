// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'role_ref_patch.dart';
import 'subject_patch.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1_cluster_role_binding_patch_args_doc}
/// The set of arguments for ClusterRoleBindingPatch.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1_cluster_role_binding_patch_args_doc}
class ClusterRoleBindingPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  final pulumi.Input<RoleRefPatch>? roleRef;
  /// Subjects holds references to the objects the role applies to.
  final pulumi.Input<List<SubjectPatch>>? subjects;

  /// Creates a new [ClusterRoleBindingPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  /// [subjects] Subjects holds references to the objects the role applies to.
  ClusterRoleBindingPatchArgs({
    String? apiVersion,
    String? kind,
    ObjectMetaPatch? metadata,
    RoleRefPatch? roleRef,
    List<SubjectPatch>? subjects,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      roleRef = pulumi.Input.asOptionalInput<RoleRefPatch>(roleRef),
      subjects = pulumi.Input.asOptionalInput<List<SubjectPatch>>(subjects);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'roleRef': ?pulumi.Input.mapOptionalInputValue<RoleRefPatch, Map<String, dynamic>>(roleRef, (value) => value.toMap()),
      'subjects': ?pulumi.Input.mapOptionalInputValue<List<SubjectPatch>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<SubjectPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterRoleBindingPatchArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRoleBindingPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      roleRef: map['roleRef'] == null ? null : RoleRefPatch.fromMap((map['roleRef'] as Map).cast<String, dynamic>()),
      subjects: map['subjects'] == null ? null : pulumi.Input.decodeList<SubjectPatch>(map['subjects'], (value) => SubjectPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

