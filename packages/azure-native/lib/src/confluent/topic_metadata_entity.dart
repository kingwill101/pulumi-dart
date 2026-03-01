// ignore_for_file: unused_element, unnecessary_cast


/// Metadata of the data record
class TopicMetadataEntity {
  /// Resource name of the record
  final String? resourceName;
  /// Self lookup url
  final String? self;

  /// Creates a new [TopicMetadataEntity].
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  TopicMetadataEntity({
    this.resourceName,
    this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
      'self': ?self,
    };
  }

  factory TopicMetadataEntity.fromMap(Map<String, dynamic> map) {
    return TopicMetadataEntity(
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      self: map['self'] == null ? null : map['self'] as String,
    );
  }
}

