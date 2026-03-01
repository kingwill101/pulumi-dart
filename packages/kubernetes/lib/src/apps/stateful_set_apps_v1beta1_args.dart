// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'stateful_set_spec_apps_v1beta1.dart';

/// {@template pulumi_apps_v1beta1_stateful_set_apps_v1beta1_args_doc}
/// The set of arguments for StatefulSet.
/// {@endtemplate}
/// {@macro pulumi_apps_v1beta1_stateful_set_apps_v1beta1_args_doc}
class StatefulSetAppsV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMeta>? metadata;
  /// Spec defines the desired identities of pods in this set.
  final pulumi.Input<StatefulSetSpecAppsV1beta1>? spec;

  /// Creates a new [StatefulSetAppsV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Spec defines the desired identities of pods in this set.
  StatefulSetAppsV1beta1Args({
    String? apiVersion,
    String? kind,
    ObjectMeta? metadata,
    StatefulSetSpecAppsV1beta1? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asOptionalInput<StatefulSetSpecAppsV1beta1>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<StatefulSetSpecAppsV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory StatefulSetAppsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return StatefulSetAppsV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : StatefulSetSpecAppsV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

