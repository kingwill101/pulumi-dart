// ignore_for_file: unused_element, unnecessary_cast


/// Metadata of the data record
class TopicMetadataEntityResponse {
  /// Resource name of the record
  final String? resourceName;
  /// Self lookup url
  final String? self;

  /// Creates a new [TopicMetadataEntityResponse].
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  TopicMetadataEntityResponse({
    this.resourceName,
    this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
      'self': ?self,
    };
  }

  factory TopicMetadataEntityResponse.fromMap(Map<String, dynamic> map) {
    return TopicMetadataEntityResponse(
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      self: map['self'] == null ? null : map['self'] as String,
    );
  }
}

