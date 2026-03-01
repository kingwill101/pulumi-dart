// ignore_for_file: unused_element, unnecessary_cast

import 'retention_tag.dart';

/// Adhoc backup tagging criteria
class AdhocBasedTaggingCriteria {
  /// Retention tag information
  final RetentionTag? tagInfo;

  /// Creates a new [AdhocBasedTaggingCriteria].
  /// [tagInfo] Retention tag information
  AdhocBasedTaggingCriteria({
    this.tagInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagInfo': ?tagInfo == null ? null : tagInfo!.toMap(),
    };
  }

  factory AdhocBasedTaggingCriteria.fromMap(Map<String, dynamic> map) {
    return AdhocBasedTaggingCriteria(
      tagInfo: map['tagInfo'] == null ? null : RetentionTag.fromMap((map['tagInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

