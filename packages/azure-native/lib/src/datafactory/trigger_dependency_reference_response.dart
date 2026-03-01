// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_reference_response.dart';

/// Trigger referenced dependency.
class TriggerDependencyReferenceResponse {
  /// Referenced trigger.
  final TriggerReferenceResponse referenceTrigger;
  /// The type of dependency reference.
  /// Expected value is 'TriggerDependencyReference'.
  final String type;

  /// Creates a new [TriggerDependencyReferenceResponse].
  /// [referenceTrigger] Referenced trigger.
  /// [type] The type of dependency reference.
  TriggerDependencyReferenceResponse({
    required this.referenceTrigger,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceTrigger': referenceTrigger.toMap(),
      'type': type,
    };
  }

  factory TriggerDependencyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TriggerDependencyReferenceResponse(
      referenceTrigger: TriggerReferenceResponse.fromMap((map['referenceTrigger'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

