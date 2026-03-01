// ignore_for_file: unused_element, unnecessary_cast

class InstancePscAttachmentDetail {
  /// (Output)
  /// Output Only. Type of a PSC Connection.
  /// Possible values:
  /// CONNECTION_TYPE_DISCOVERY
  /// CONNECTION_TYPE_PRIMARY
  /// CONNECTION_TYPE_READER
  final String? connectionType;

  /// (Output)
  /// Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final String? serviceAttachment;

  /// Creates a new [InstancePscAttachmentDetail].
  /// [connectionType] (Output)
  /// [serviceAttachment] (Output)
  InstancePscAttachmentDetail({this.connectionType, this.serviceAttachment});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory InstancePscAttachmentDetail.fromMap(Map<String, dynamic> map) {
    return InstancePscAttachmentDetail(
      connectionType: map['connectionType'] == null
          ? null
          : map['connectionType'] as String,
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
