// ignore_for_file: unused_element, unnecessary_cast


class ContentSafety {
  /// [Required] Specifies the status of content safety.
  final String contentSafetyStatus;

  /// Creates a new [ContentSafety].
  /// [contentSafetyStatus] [Required] Specifies the status of content safety.
  ContentSafety({
    required this.contentSafetyStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSafetyStatus': contentSafetyStatus,
    };
  }

  factory ContentSafety.fromMap(Map<String, dynamic> map) {
    return ContentSafety(
      contentSafetyStatus: map['contentSafetyStatus'] as String,
    );
  }
}

