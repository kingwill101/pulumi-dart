// ignore_for_file: unused_element, unnecessary_cast

class PipelineBufferOptions {
  /// Whether persistent buffering should be enabled.
  final bool persistentBufferEnabled;

  PipelineBufferOptions({
    required this.persistentBufferEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['persistentBufferEnabled'] = persistentBufferEnabled;
    return map;
  }

  factory PipelineBufferOptions.fromMap(Map<String, dynamic> map) {
    return PipelineBufferOptions(
      persistentBufferEnabled: map['persistentBufferEnabled'] as bool,
    );
  }
}
