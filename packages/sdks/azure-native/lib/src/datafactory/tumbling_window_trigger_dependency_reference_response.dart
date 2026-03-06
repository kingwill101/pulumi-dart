// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_reference_response.dart';

/// Referenced tumbling window trigger dependency.
class TumblingWindowTriggerDependencyReferenceResponse {
  /// Timespan applied to the start time of a tumbling window when evaluating dependency.
  final pulumi.Input<String>? offset;
  /// Referenced trigger.
  final pulumi.Input<TriggerReferenceResponse> referenceTrigger;
  /// The size of the window when evaluating the dependency. If undefined the frequency of the tumbling window will be used.
  final pulumi.Input<String>? size;
  /// The type of dependency reference.
  /// Expected value is 'TumblingWindowTriggerDependencyReference'.
  final pulumi.Input<String> type;

  /// Creates a new [TumblingWindowTriggerDependencyReferenceResponse].
  /// [offset] Timespan applied to the start time of a tumbling window when evaluating dependency.
  /// [referenceTrigger] Referenced trigger.
  /// [size] The size of the window when evaluating the dependency. If undefined the frequency of the tumbling window will be used.
  /// [type] The type of dependency reference.
  const TumblingWindowTriggerDependencyReferenceResponse({
    this.offset,
    required this.referenceTrigger,
    this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': ?offset,
      'referenceTrigger': pulumi.Input.mapInputValue<TriggerReferenceResponse, Map<String, dynamic>>(referenceTrigger, (value) => value.toMap()),
      'size': ?size,
      'type': type,
    };
  }

  factory TumblingWindowTriggerDependencyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TumblingWindowTriggerDependencyReferenceResponse(
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceTrigger: pulumi.Input.fromValue(TriggerReferenceResponse.fromMap((map['referenceTrigger']! as Map).cast<String, dynamic>())),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

