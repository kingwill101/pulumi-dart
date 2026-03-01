// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_certificate_request_spec.dart';

/// {@template pulumi_certificates_k8s_io_v1beta1_pod_certificate_request_args_doc}
/// The set of arguments for PodCertificateRequest.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1beta1_pod_certificate_request_args_doc}
class PodCertificateRequestArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata contains the object metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// spec contains the details about the certificate being requested.
  final pulumi.Input<PodCertificateRequestSpec> spec;

  /// Creates a new [PodCertificateRequestArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata contains the object metadata.
  /// [spec] spec contains the details about the certificate being requested.
  PodCertificateRequestArgs({
    String? apiVersion,
    String? kind,
    ObjectMeta? metadata,
    required PodCertificateRequestSpec spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asInput<PodCertificateRequestSpec>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<PodCertificateRequestSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PodCertificateRequestArgs.fromMap(Map<String, dynamic> map) {
    return PodCertificateRequestArgs(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: PodCertificateRequestSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

