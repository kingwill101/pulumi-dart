// ignore_for_file: unused_element, unnecessary_cast

class ClusterPscServiceAttachment {
  /// (Output)
  /// Type of a PSC connection targeting this service attachment.
  final String? connectionType;

  /// (Output)
  /// Service attachment URI which your self-created PscConnection should use as
  final String? serviceAttachment;

  /// Creates a new [ClusterPscServiceAttachment].
  /// [connectionType] (Output)
  /// [serviceAttachment] (Output)
  ClusterPscServiceAttachment({this.connectionType, this.serviceAttachment});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'serviceAttachment': ?serviceAttachment,
    };
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
