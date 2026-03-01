// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_reference.dart';

/// Referenced tumbling window trigger dependency.
class TumblingWindowTriggerDependencyReference {
  /// Timespan applied to the start time of a tumbling window when evaluating dependency.
  final String? offset;
  /// Referenced trigger.
  final TriggerReference referenceTrigger;
  /// The size of the window when evaluating the dependency. If undefined the frequency of the tumbling window will be used.
  final String? size;
  /// The type of dependency reference.
  /// Expected value is 'TumblingWindowTriggerDependencyReference'.
  final String type;

  /// Creates a new [TumblingWindowTriggerDependencyReference].
  /// [offset] Timespan applied to the start time of a tumbling window when evaluating dependency.
  /// [referenceTrigger] Referenced trigger.
  /// [size] The size of the window when evaluating the dependency. If undefined the frequency of the tumbling window will be used.
  /// [type] The type of dependency reference.
  TumblingWindowTriggerDependencyReference({
    this.offset,
    required this.referenceTrigger,
    this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': ?offset,
      'referenceTrigger': referenceTrigger.toMap(),
      'size': ?size,
      'type': type,
    };
  }

  factory TumblingWindowTriggerDependencyReference.fromMap(Map<String, dynamic> map) {
    return TumblingWindowTriggerDependencyReference(
      offset: map['offset'] == null ? null : map['offset'] as String,
      referenceTrigger: TriggerReference.fromMap((map['referenceTrigger'] as Map).cast<String, dynamic>()),
      size: map['size'] == null ? null : map['size'] as String,
      type: map['type'] as String,
    );
  }
}

