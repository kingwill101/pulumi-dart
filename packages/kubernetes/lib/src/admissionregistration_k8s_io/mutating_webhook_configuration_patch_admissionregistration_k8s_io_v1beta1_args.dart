// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'mutating_webhook_patch_admissionregistration_k8s_io_v1beta1.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1beta1_mutating_webhook_configuration_patch_admissionregistration_k8s_io_v1beta1_args_doc}
/// The set of arguments for MutatingWebhookConfigurationPatch.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1beta1_mutating_webhook_configuration_patch_admissionregistration_k8s_io_v1beta1_args_doc}
class MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Webhooks is a list of webhooks and the affected resources and operations.
  final pulumi.Input<List<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1>>? webhooks;

  /// Creates a new [MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [webhooks] Webhooks is a list of webhooks and the affected resources and operations.
  MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1Args({
    String? apiVersion,
    String? kind,
    ObjectMetaPatch? metadata,
    List<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1>? webhooks,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      webhooks = pulumi.Input.asOptionalInput<List<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1>>(webhooks);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      webhooks: map['webhooks'] == null ? null : pulumi.Input.decodeList<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1>(map['webhooks'], (value) => MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

