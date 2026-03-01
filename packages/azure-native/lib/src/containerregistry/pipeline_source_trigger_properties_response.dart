// ignore_for_file: unused_element, unnecessary_cast


class PipelineSourceTriggerPropertiesResponse {
  /// The current status of the source trigger.
  final String status;

  /// Creates a new [PipelineSourceTriggerPropertiesResponse].
  /// [status] The current status of the source trigger.
  PipelineSourceTriggerPropertiesResponse({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory PipelineSourceTriggerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineSourceTriggerPropertiesResponse(
      status: map['status'] as String,
    );
  }
}

