// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adhoc_based_tagging_criteria_response.dart';

/// Adhoc trigger context
class AdhocBasedTriggerContextResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AdhocBasedTriggerContext'.
  final pulumi.Input<String> objectType;

  /// Tagging Criteria containing retention tag for adhoc backup.
  final pulumi.Input<AdhocBasedTaggingCriteriaResponse> taggingCriteria;

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
      'taggingCriteria':
          pulumi.Input.mapInputValue<
            AdhocBasedTaggingCriteriaResponse,
            Map<String, dynamic>
          >(taggingCriteria, (value) => value.toMap()),
    };
  }

  factory AdhocBasedTriggerContextResponse.fromMap(Map<String, dynamic> map) {
    return AdhocBasedTriggerContextResponse(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      taggingCriteria: pulumi.Input.fromValue(
        AdhocBasedTaggingCriteriaResponse.fromMap(
          (map['taggingCriteria']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
