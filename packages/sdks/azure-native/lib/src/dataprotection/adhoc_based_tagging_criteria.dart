// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_tag.dart';

/// Adhoc backup tagging criteria
class AdhocBasedTaggingCriteria {
  /// Retention tag information
  final pulumi.Input<RetentionTag>? tagInfo;

  /// Creates a new [AdhocBasedTaggingCriteria].
  /// [tagInfo] Retention tag information
  AdhocBasedTaggingCriteria({
    this.tagInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagInfo': ?pulumi.Input.mapOptionalInputValue<RetentionTag, Map<String, dynamic>>(tagInfo, (value) => value.toMap()),
    };
  }

  factory AdhocBasedTaggingCriteria.fromMap(Map<String, dynamic> map) {
    return AdhocBasedTaggingCriteria(
      tagInfo: map['tagInfo'] == null ? null : (RetentionTag.fromMap((map['tagInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

