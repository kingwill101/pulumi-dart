// ignore_for_file: unused_element, unnecessary_cast

import 'adhoc_based_tagging_criteria.dart';

/// Adhoc trigger context
class AdhocBasedTriggerContext {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AdhocBasedTriggerContext'.
  final String objectType;
  /// Tagging Criteria containing retention tag for adhoc backup.
  final AdhocBasedTaggingCriteria taggingCriteria;

  /// Creates a new [AdhocBasedTriggerContext].
  /// [objectType] Type of the specific object - used for deserializing
  /// [taggingCriteria] Tagging Criteria containing retention tag for adhoc backup.
  AdhocBasedTriggerContext({
    required this.objectType,
    required this.taggingCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'taggingCriteria': taggingCriteria.toMap(),
    };
  }

  factory AdhocBasedTriggerContext.fromMap(Map<String, dynamic> map) {
    return AdhocBasedTriggerContext(
      objectType: map['objectType'] as String,
      taggingCriteria: AdhocBasedTaggingCriteria.fromMap((map['taggingCriteria'] as Map).cast<String, dynamic>()),
    );
  }
}

