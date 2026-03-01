// ignore_for_file: unused_element, unnecessary_cast


class ContentSafetyResponse {
  /// [Required] Specifies the status of content safety.
  final String contentSafetyStatus;

  /// Creates a new [ContentSafetyResponse].
  /// [contentSafetyStatus] [Required] Specifies the status of content safety.
  ContentSafetyResponse({
    required this.contentSafetyStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSafetyStatus': contentSafetyStatus,
    };
  }

  factory ContentSafetyResponse.fromMap(Map<String, dynamic> map) {
    return ContentSafetyResponse(
      contentSafetyStatus: map['contentSafetyStatus'] as String,
    );
  }
}

