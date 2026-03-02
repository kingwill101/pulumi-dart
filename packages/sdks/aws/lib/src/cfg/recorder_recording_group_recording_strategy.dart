// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecorderRecordingGroupRecordingStrategy {
  final pulumi.Input<String>? useOnly;

  /// Creates a new [RecorderRecordingGroupRecordingStrategy].
  /// [useOnly] Optional.
  RecorderRecordingGroupRecordingStrategy({
    this.useOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useOnly': ?useOnly,
    };
  }

  factory RecorderRecordingGroupRecordingStrategy.fromMap(Map<String, dynamic> map) {
    return RecorderRecordingGroupRecordingStrategy(
      useOnly: map['useOnly'] == null ? null : ((map['useOnly'] as String).input()).input(),
    );
  }
}

