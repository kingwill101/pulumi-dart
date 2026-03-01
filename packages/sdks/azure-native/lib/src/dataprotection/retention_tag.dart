// ignore_for_file: unused_element, unnecessary_cast


/// Retention tag
class RetentionTag {
  /// Retention Tag Name to relate it to retention rule.
  final String tagName;

  /// Creates a new [RetentionTag].
  /// [tagName] Retention Tag Name to relate it to retention rule.
  RetentionTag({
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagName': tagName,
    };
  }

  factory RetentionTag.fromMap(Map<String, dynamic> map) {
    return RetentionTag(
      tagName: map['tagName'] as String,
    );
  }
}

