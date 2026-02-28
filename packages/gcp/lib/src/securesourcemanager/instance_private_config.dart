// ignore_for_file: unused_element, unnecessary_cast

class InstancePrivateConfig {
  /// CA pool resource, resource must in the format of `projects/{project}/locations/{location}/caPools/{ca_pool}`.
  final String? caPool;

  /// (Output)
  /// Service Attachment for HTTP, resource is in the format of `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  final String? httpServiceAttachment;

  /// 'Indicate if it's private instance.'
  final bool isPrivate;

  /// (Output)
  /// Service Attachment for SSH, resource is in the format of `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  final String? sshServiceAttachment;

  /// Creates a new [InstancePrivateConfig].
  /// [caPool] CA pool resource, resource must in the format of `projects/{project}/locations/{location}/caPools/{ca_pool}`.
  /// [httpServiceAttachment] (Output)
  /// [isPrivate] 'Indicate if it's private instance.'
  /// [sshServiceAttachment] (Output)
  InstancePrivateConfig({
    this.caPool,
    this.httpServiceAttachment,
    required this.isPrivate,
    this.sshServiceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caPoolValue = caPool;
    if (caPoolValue != null) {
      map['caPool'] = caPoolValue;
    }
    final httpServiceAttachmentValue = httpServiceAttachment;
    if (httpServiceAttachmentValue != null) {
      map['httpServiceAttachment'] = httpServiceAttachmentValue;
    }
    map['isPrivate'] = isPrivate;
    final sshServiceAttachmentValue = sshServiceAttachment;
    if (sshServiceAttachmentValue != null) {
      map['sshServiceAttachment'] = sshServiceAttachmentValue;
    }
    return map;
  }

  factory InstancePrivateConfig.fromMap(Map<String, dynamic> map) {
    return InstancePrivateConfig(
      caPool: map['caPool'] == null ? null : map['caPool'] as String,
      httpServiceAttachment: map['httpServiceAttachment'] == null
          ? null
          : map['httpServiceAttachment'] as String,
      isPrivate: map['isPrivate'] as bool,
      sshServiceAttachment: map['sshServiceAttachment'] == null
          ? null
          : map['sshServiceAttachment'] as String,
    );
  }
}
