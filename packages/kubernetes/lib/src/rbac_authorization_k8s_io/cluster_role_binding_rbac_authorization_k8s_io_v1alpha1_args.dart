// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'role_ref_rbac_authorization_k8s_io_v1alpha1.dart';
import 'subject_rbac_authorization_k8s_io_v1alpha1.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1alpha1_cluster_role_binding_rbac_authorization_k8s_io_v1alpha1_args_doc}
/// The set of arguments for ClusterRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_cluster_role_binding_rbac_authorization_k8s_io_v1alpha1_args_doc}
class ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  final pulumi.Input<RoleRefRbacAuthorizationK8sIoV1alpha1> roleRef;
  /// Subjects holds references to the objects the role applies to.
  final pulumi.Input<List<SubjectRbacAuthorizationK8sIoV1alpha1>>? subjects;

  /// Creates a new [ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  /// [subjects] Subjects holds references to the objects the role applies to.
  ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1Args({
    String? apiVersion,
    String? kind,
    ObjectMeta? metadata,
    required RoleRefRbacAuthorizationK8sIoV1alpha1 roleRef,
    List<SubjectRbacAuthorizationK8sIoV1alpha1>? subjects,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      roleRef = pulumi.Input.asInput<RoleRefRbacAuthorizationK8sIoV1alpha1>(roleRef),
      subjects = pulumi.Input.asOptionalInput<List<SubjectRbacAuthorizationK8sIoV1alpha1>>(subjects);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'roleRef': pulumi.Input.mapInputValue<RoleRefRbacAuthorizationK8sIoV1alpha1, Map<String, dynamic>>(roleRef, (value) => value.toMap()),
      'subjects': ?pulumi.Input.mapOptionalInputValue<List<SubjectRbacAuthorizationK8sIoV1alpha1>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<SubjectRbacAuthorizationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      roleRef: RoleRefRbacAuthorizationK8sIoV1alpha1.fromMap((map['roleRef'] as Map).cast<String, dynamic>()),
      subjects: map['subjects'] == null ? null : pulumi.Input.decodeList<SubjectRbacAuthorizationK8sIoV1alpha1>(map['subjects'], (value) => SubjectRbacAuthorizationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

