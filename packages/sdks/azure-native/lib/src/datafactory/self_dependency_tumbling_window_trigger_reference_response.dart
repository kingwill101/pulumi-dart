// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Self referenced tumbling window trigger dependency.
class SelfDependencyTumblingWindowTriggerReferenceResponse {
  /// Timespan applied to the start time of a tumbling window when evaluating dependency.
  final pulumi.Input<String> offset;
  /// The size of the window when evaluating the dependency. If undefined the frequency of the tumbling window will be used.
  final pulumi.Input<String>? size;
  /// The type of dependency reference.
  /// Expected value is 'SelfDependencyTumblingWindowTriggerReference'.
  final pulumi.Input<String> type;

  /// Creates a new [SelfDependencyTumblingWindowTriggerReferenceResponse].
  /// [offset] Timespan applied to the start time of a tumbling window when evaluating dependency.
  /// [size] The size of the window when evaluating the dependency. If undefined the frequency of the tumbling window will be used.
  /// [type] The type of dependency reference.
  SelfDependencyTumblingWindowTriggerReferenceResponse({
    required this.offset,
    this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': offset,
      'size': ?size,
      'type': type,
    };
  }

  factory SelfDependencyTumblingWindowTriggerReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SelfDependencyTumblingWindowTriggerReferenceResponse(
      offset: (map['offset'] as String).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

