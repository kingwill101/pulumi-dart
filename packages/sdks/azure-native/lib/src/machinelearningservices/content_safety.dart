// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContentSafety {
  /// [Required] Specifies the status of content safety.
  final pulumi.Input<String> contentSafetyStatus;

  /// Creates a new [ContentSafety].
  /// [contentSafetyStatus] [Required] Specifies the status of content safety.
  const ContentSafety({
    required this.contentSafetyStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSafetyStatus': contentSafetyStatus,
    };
  }

  factory ContentSafety.fromMap(Map<String, dynamic> map) {
    return ContentSafety(
      contentSafetyStatus: pulumi.Input.fromValue(map['contentSafetyStatus'] as String),
    );
  }
}

