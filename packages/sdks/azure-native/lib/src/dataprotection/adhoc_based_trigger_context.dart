// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adhoc_based_tagging_criteria.dart';

/// Adhoc trigger context
class AdhocBasedTriggerContext {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AdhocBasedTriggerContext'.
  final pulumi.Input<String> objectType;
  /// Tagging Criteria containing retention tag for adhoc backup.
  final pulumi.Input<AdhocBasedTaggingCriteria> taggingCriteria;

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
      'taggingCriteria': pulumi.Input.mapInputValue<AdhocBasedTaggingCriteria, Map<String, dynamic>>(taggingCriteria, (value) => value.toMap()),
    };
  }

  factory AdhocBasedTriggerContext.fromMap(Map<String, dynamic> map) {
    return AdhocBasedTriggerContext(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      taggingCriteria: pulumi.Input.fromValue(AdhocBasedTaggingCriteria.fromMap((map['taggingCriteria']! as Map).cast<String, dynamic>())),
    );
  }
}

