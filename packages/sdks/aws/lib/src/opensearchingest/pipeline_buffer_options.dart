// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineBufferOptions {
  /// Whether persistent buffering should be enabled.
  final pulumi.Input<bool> persistentBufferEnabled;

  /// Creates a new [PipelineBufferOptions].
  /// [persistentBufferEnabled] Whether persistent buffering should be enabled.
  PipelineBufferOptions({required this.persistentBufferEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentBufferEnabled': persistentBufferEnabled,
    };
  }

  factory PipelineBufferOptions.fromMap(Map<String, dynamic> map) {
    return PipelineBufferOptions(
      persistentBufferEnabled: pulumi.Input.fromValue(
        map['persistentBufferEnabled'] as bool,
      ),
    );
  }
}
