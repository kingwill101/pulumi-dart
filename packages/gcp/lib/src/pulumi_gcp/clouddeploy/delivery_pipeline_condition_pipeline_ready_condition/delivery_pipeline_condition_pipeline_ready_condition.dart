// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineConditionPipelineReadyCondition {
  /// True if the Pipeline is in a valid state. Otherwise at least one condition in `PipelineCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Pipeline.
  final bool? status;

  /// Output only. Most recent time at which the pipeline was updated.
  final String? updateTime;

  DeliveryPipelineConditionPipelineReadyCondition({
    this.status,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory DeliveryPipelineConditionPipelineReadyCondition.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineConditionPipelineReadyCondition(
      status: map['status'] == null ? null : map['status'] as bool,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
