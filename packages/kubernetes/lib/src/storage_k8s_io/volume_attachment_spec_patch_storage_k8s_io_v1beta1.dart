// ignore_for_file: unused_element, unnecessary_cast

import 'volume_attachment_source_patch_storage_k8s_io_v1beta1.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpecPatchStorageK8sIoV1beta1 {
  /// Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final String? attacher;
  /// The node that the volume should be attached to.
  final String? nodeName;
  /// Source represents the volume that should be attached.
  final VolumeAttachmentSourcePatchStorageK8sIoV1beta1? source;

  /// Creates a new [VolumeAttachmentSpecPatchStorageK8sIoV1beta1].
  /// [attacher] Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  /// [nodeName] The node that the volume should be attached to.
  /// [source] Source represents the volume that should be attached.
  VolumeAttachmentSpecPatchStorageK8sIoV1beta1({
    this.attacher,
    this.nodeName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attacher': ?attacher,
      'nodeName': ?nodeName,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory VolumeAttachmentSpecPatchStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentSpecPatchStorageK8sIoV1beta1(
      attacher: map['attacher'] == null ? null : map['attacher'] as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      source: map['source'] == null ? null : VolumeAttachmentSourcePatchStorageK8sIoV1beta1.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

