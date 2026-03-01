// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'policy_rule_rbac_authorization_k8s_io_v1alpha1.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1alpha1_role_rbac_authorization_k8s_io_v1alpha1_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_role_rbac_authorization_k8s_io_v1alpha1_args_doc}
class RoleRbacAuthorizationK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// Rules holds all the PolicyRules for this Role
  final pulumi.Input<List<PolicyRuleRbacAuthorizationK8sIoV1alpha1>>? rules;

  /// Creates a new [RoleRbacAuthorizationK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [rules] Rules holds all the PolicyRules for this Role
  RoleRbacAuthorizationK8sIoV1alpha1Args({
    String? apiVersion,
    String? kind,
    ObjectMeta? metadata,
    List<PolicyRuleRbacAuthorizationK8sIoV1alpha1>? rules,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      rules = pulumi.Input.asOptionalInput<List<PolicyRuleRbacAuthorizationK8sIoV1alpha1>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRuleRbacAuthorizationK8sIoV1alpha1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRuleRbacAuthorizationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoleRbacAuthorizationK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return RoleRbacAuthorizationK8sIoV1alpha1Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<PolicyRuleRbacAuthorizationK8sIoV1alpha1>(map['rules'], (value) => PolicyRuleRbacAuthorizationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

