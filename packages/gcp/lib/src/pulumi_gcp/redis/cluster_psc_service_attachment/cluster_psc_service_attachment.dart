// ignore_for_file: unused_element, unnecessary_cast

class ClusterPscServiceAttachment {
  /// (Output)
  /// Type of a PSC connection targeting this service attachment.
  final String? connectionType;

  /// (Output)
  /// Service attachment URI which your self-created PscConnection should use as
  final String? serviceAttachment;

  ClusterPscServiceAttachment({
    this.connectionType,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    final serviceAttachmentValue = serviceAttachment;
    if (serviceAttachmentValue != null) {
      map['serviceAttachment'] = serviceAttachmentValue;
    }
    return map;
  }

  factory ClusterPscServiceAttachment.fromMap(Map<String, dynamic> map) {
    return ClusterPscServiceAttachment(
      connectionType: map['connectionType'] == null
          ? null
          : map['connectionType'] as String,
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
