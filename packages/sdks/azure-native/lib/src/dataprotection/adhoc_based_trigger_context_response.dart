// ignore_for_file: unused_element, unnecessary_cast

import 'adhoc_based_tagging_criteria_response.dart';

/// Adhoc trigger context
class AdhocBasedTriggerContextResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AdhocBasedTriggerContext'.
  final String objectType;
  /// Tagging Criteria containing retention tag for adhoc backup.
  final AdhocBasedTaggingCriteriaResponse taggingCriteria;

  /// Creates a new [AdhocBasedTriggerContextResponse].
  /// [objectType] Type of the specific object - used for deserializing
  /// [taggingCriteria] Tagging Criteria containing retention tag for adhoc backup.
  AdhocBasedTriggerContextResponse({
    required this.objectType,
    required this.taggingCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'taggingCriteria': taggingCriteria.toMap(),
    };
  }

  factory AdhocBasedTriggerContextResponse.fromMap(Map<String, dynamic> map) {
    return AdhocBasedTriggerContextResponse(
      objectType: map['objectType'] as String,
      taggingCriteria: AdhocBasedTaggingCriteriaResponse.fromMap((map['taggingCriteria'] as Map).cast<String, dynamic>()),
    );
  }
}

