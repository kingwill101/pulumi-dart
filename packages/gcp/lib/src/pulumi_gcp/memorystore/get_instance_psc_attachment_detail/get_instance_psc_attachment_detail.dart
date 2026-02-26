// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePscAttachmentDetail {
  /// Service attachment URI which your self-created PscConnection should use as target.
  final String connectionType;

  /// Service attachment URI which your self-created PscConnection should use as target.
  final String serviceAttachment;

  GetInstancePscAttachmentDetail({
    required this.connectionType,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionType'] = connectionType;
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory GetInstancePscAttachmentDetail.fromMap(Map<String, dynamic> map) {
    return GetInstancePscAttachmentDetail(
      connectionType: map['connectionType'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
