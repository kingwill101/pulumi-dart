// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_tag_response.dart';

/// Adhoc backup tagging criteria
class AdhocBasedTaggingCriteriaResponse {
  /// Retention tag information
  final pulumi.Input<RetentionTagResponse?>? tagInfo;

  /// Creates a new [AdhocBasedTaggingCriteriaResponse].
  /// [tagInfo] Retention tag information
  const AdhocBasedTaggingCriteriaResponse({
    this.tagInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagInfo': ?pulumi.Input.mapOptionalInputValue<RetentionTagResponse, Map<String, dynamic>>(tagInfo, (value) => value.toMap()),
    };
  }

  factory AdhocBasedTaggingCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return AdhocBasedTaggingCriteriaResponse(
      tagInfo: (() { final guardedValue = map['tagInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionTagResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
