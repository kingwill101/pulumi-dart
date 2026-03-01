// ignore_for_file: unused_element, unnecessary_cast

/// PipelineReadyCondition contains information around the status of the Pipeline.
class PipelineReadyConditionResponse {
  /// True if the Pipeline is in a valid state. Otherwise at least one condition in `PipelineCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Pipeline.
  final bool status;

  /// Last time the condition was updated.
  final String updateTime;

  /// Creates a new [PipelineReadyConditionResponse].
  /// [status] True if the Pipeline is in a valid state. Otherwise at least one condition in `PipelineCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Pipeline.
  /// [updateTime] Last time the condition was updated.
  PipelineReadyConditionResponse({
    required this.status,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status, 'updateTime': updateTime};
  }

  factory PipelineReadyConditionResponse.fromMap(Map<String, dynamic> map) {
    return PipelineReadyConditionResponse(
      status: map['status'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}
