// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Retention tag
class RetentionTag {
  /// Retention Tag Name to relate it to retention rule.
  final pulumi.Input<String> tagName;

  /// Creates a new [RetentionTag].
  /// [tagName] Retention Tag Name to relate it to retention rule.
  const RetentionTag({
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagName': tagName,
    };
  }

  factory RetentionTag.fromMap(Map<String, dynamic> map) {
    return RetentionTag(
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
