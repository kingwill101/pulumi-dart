// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_reference.dart';

/// Trigger referenced dependency.
class TriggerDependencyReference {
  /// Referenced trigger.
  final pulumi.Input<TriggerReference> referenceTrigger;
  /// The type of dependency reference.
  /// Expected value is 'TriggerDependencyReference'.
  final pulumi.Input<String> type;

  /// Creates a new [TriggerDependencyReference].
  /// [referenceTrigger] Referenced trigger.
  /// [type] The type of dependency reference.
  const TriggerDependencyReference({
    required this.referenceTrigger,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceTrigger': pulumi.Input.mapInputValue<TriggerReference, Map<String, dynamic>>(referenceTrigger, (value) => value.toMap()),
      'type': type,
    };
  }

  factory TriggerDependencyReference.fromMap(Map<String, dynamic> map) {
    return TriggerDependencyReference(
      referenceTrigger: pulumi.Input.fromValue(TriggerReference.fromMap((map['referenceTrigger']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
