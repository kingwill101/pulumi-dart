// ignore_for_file: unused_element, unnecessary_cast


/// Retention tag
class RetentionTagResponse {
  /// Retention Tag version.
  final String eTag;
  /// Retention Tag version.
  final String id;
  /// Retention Tag Name to relate it to retention rule.
  final String tagName;

  /// Creates a new [RetentionTagResponse].
  /// [eTag] Retention Tag version.
  /// [id] Retention Tag version.
  /// [tagName] Retention Tag Name to relate it to retention rule.
  RetentionTagResponse({
    required this.eTag,
    required this.id,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': eTag,
      'id': id,
      'tagName': tagName,
    };
  }

  factory RetentionTagResponse.fromMap(Map<String, dynamic> map) {
    return RetentionTagResponse(
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      tagName: map['tagName'] as String,
    );
  }
}

