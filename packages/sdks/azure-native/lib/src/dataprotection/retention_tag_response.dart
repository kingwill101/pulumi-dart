// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Retention tag
class RetentionTagResponse {
  /// Retention Tag version.
  final pulumi.Input<String> eTag;
  /// Retention Tag version.
  final pulumi.Input<String> id;
  /// Retention Tag Name to relate it to retention rule.
  final pulumi.Input<String> tagName;

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
      eTag: pulumi.Input.fromValue(map['eTag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}

