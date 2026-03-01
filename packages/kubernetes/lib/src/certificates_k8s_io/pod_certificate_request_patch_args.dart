// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_certificate_request_spec_patch.dart';

/// {@template pulumi_certificates_k8s_io_v1beta1_pod_certificate_request_patch_args_doc}
/// The set of arguments for PodCertificateRequestPatch.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1beta1_pod_certificate_request_patch_args_doc}
class PodCertificateRequestPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata contains the object metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// spec contains the details about the certificate being requested.
  final pulumi.Input<PodCertificateRequestSpecPatch>? spec;

  /// Creates a new [PodCertificateRequestPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata contains the object metadata.
  /// [spec] spec contains the details about the certificate being requested.
  PodCertificateRequestPatchArgs({
    String? apiVersion,
    String? kind,
    ObjectMetaPatch? metadata,
    PodCertificateRequestSpecPatch? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<PodCertificateRequestSpecPatch>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<PodCertificateRequestSpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PodCertificateRequestPatchArgs.fromMap(Map<String, dynamic> map) {
    return PodCertificateRequestPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : PodCertificateRequestSpecPatch.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

