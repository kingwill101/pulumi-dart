// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecorderRecordingGroupRecordingStrategy {
  final pulumi.Input<String>? useOnly;

  /// Creates a new [RecorderRecordingGroupRecordingStrategy].
  /// [useOnly] Optional.
  const RecorderRecordingGroupRecordingStrategy({
    this.useOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useOnly': ?useOnly,
    };
  }

  factory RecorderRecordingGroupRecordingStrategy.fromMap(Map<String, dynamic> map) {
    return RecorderRecordingGroupRecordingStrategy(
      useOnly: (() { final guardedValue = map['useOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
