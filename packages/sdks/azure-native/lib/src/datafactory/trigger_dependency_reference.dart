// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_reference.dart';

/// Trigger referenced dependency.
class TriggerDependencyReference {
  /// Referenced trigger.
  final TriggerReference referenceTrigger;
  /// The type of dependency reference.
  /// Expected value is 'TriggerDependencyReference'.
  final String type;

  /// Creates a new [TriggerDependencyReference].
  /// [referenceTrigger] Referenced trigger.
  /// [type] The type of dependency reference.
  TriggerDependencyReference({
    required this.referenceTrigger,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceTrigger': referenceTrigger.toMap(),
      'type': type,
    };
  }

  factory TriggerDependencyReference.fromMap(Map<String, dynamic> map) {
    return TriggerDependencyReference(
      referenceTrigger: TriggerReference.fromMap((map['referenceTrigger'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

