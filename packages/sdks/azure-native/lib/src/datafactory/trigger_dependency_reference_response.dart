// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_reference_response.dart';

/// Trigger referenced dependency.
class TriggerDependencyReferenceResponse {
  /// Referenced trigger.
  final pulumi.Input<TriggerReferenceResponse> referenceTrigger;
  /// The type of dependency reference.
  /// Expected value is 'TriggerDependencyReference'.
  final pulumi.Input<String> type;

  /// Creates a new [TriggerDependencyReferenceResponse].
  /// [referenceTrigger] Referenced trigger.
  /// [type] The type of dependency reference.
  TriggerDependencyReferenceResponse({
    required this.referenceTrigger,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceTrigger': pulumi.Input.mapInputValue<TriggerReferenceResponse, Map<String, dynamic>>(referenceTrigger, (value) => value.toMap()),
      'type': type,
    };
  }

  factory TriggerDependencyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TriggerDependencyReferenceResponse(
      referenceTrigger: pulumi.Input.fromValue(TriggerReferenceResponse.fromMap((map['referenceTrigger']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

