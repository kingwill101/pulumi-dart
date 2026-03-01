// ignore_for_file: unused_element, unnecessary_cast


class PipelineSourceTriggerDescriptorResponse {
  /// The timestamp when the source update happened.
  final String? timestamp;

  /// Creates a new [PipelineSourceTriggerDescriptorResponse].
  /// [timestamp] The timestamp when the source update happened.
  PipelineSourceTriggerDescriptorResponse({
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestamp': ?timestamp,
    };
  }

  factory PipelineSourceTriggerDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return PipelineSourceTriggerDescriptorResponse(
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}

