// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'mutating_webhook_admissionregistration_k8s_io_v1beta1.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1beta1_mutating_webhook_configuration_admissionregistration_k8s_io_v1beta1_args_doc}
/// The set of arguments for MutatingWebhookConfiguration.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1beta1_mutating_webhook_configuration_admissionregistration_k8s_io_v1beta1_args_doc}
class MutatingWebhookConfigurationAdmissionregistrationK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// Webhooks is a list of webhooks and the affected resources and operations.
  final pulumi.Input<List<MutatingWebhookAdmissionregistrationK8sIoV1beta1>>? webhooks;

  /// Creates a new [MutatingWebhookConfigurationAdmissionregistrationK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [webhooks] Webhooks is a list of webhooks and the affected resources and operations.
  MutatingWebhookConfigurationAdmissionregistrationK8sIoV1beta1Args({
    String? apiVersion,
    String? kind,
    ObjectMeta? metadata,
    List<MutatingWebhookAdmissionregistrationK8sIoV1beta1>? webhooks,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      webhooks = pulumi.Input.asOptionalInput<List<MutatingWebhookAdmissionregistrationK8sIoV1beta1>>(webhooks);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<MutatingWebhookAdmissionregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<MutatingWebhookAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MutatingWebhookConfigurationAdmissionregistrationK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MutatingWebhookConfigurationAdmissionregistrationK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      webhooks: map['webhooks'] == null ? null : pulumi.Input.decodeList<MutatingWebhookAdmissionregistrationK8sIoV1beta1>(map['webhooks'], (value) => MutatingWebhookAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

