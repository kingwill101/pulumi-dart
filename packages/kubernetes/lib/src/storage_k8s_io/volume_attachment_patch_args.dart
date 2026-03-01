// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'volume_attachment_spec_patch.dart';

/// {@template pulumi_storage_k8s_io_v1_volume_attachment_patch_args_doc}
/// The set of arguments for VolumeAttachmentPatch.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1_volume_attachment_patch_args_doc}
class VolumeAttachmentPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// spec represents specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
  final pulumi.Input<VolumeAttachmentSpecPatch>? spec;

  /// Creates a new [VolumeAttachmentPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] spec represents specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
  VolumeAttachmentPatchArgs({
    String? apiVersion,
    String? kind,
    ObjectMetaPatch? metadata,
    VolumeAttachmentSpecPatch? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<VolumeAttachmentSpecPatch>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<VolumeAttachmentSpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory VolumeAttachmentPatchArgs.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : VolumeAttachmentSpecPatch.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

