// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'validating_admission_policy_spec_admissionregistration_k8s_io_v1alpha1.dart';
import 'validating_admission_policy_status_admissionregistration_k8s_io_v1alpha1.dart';

/// ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.
class ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;
  /// Specification of the desired behavior of the ValidatingAdmissionPolicy.
  final ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1alpha1? spec;
  /// The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only.
  final ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1alpha1? status;

  /// Creates a new [ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] Specification of the desired behavior of the ValidatingAdmissionPolicy.
  /// [status] The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only.
  ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1alpha1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1alpha1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

