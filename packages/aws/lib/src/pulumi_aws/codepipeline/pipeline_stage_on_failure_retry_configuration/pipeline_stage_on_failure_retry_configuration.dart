// ignore_for_file: unused_element, unnecessary_cast

class PipelineStageOnFailureRetryConfiguration {
  /// The method that you want to configure for automatic stage retry on stage failure. You can specify to retry only failed action in the stage or all actions in the stage. Possible values are `FAILED_ACTIONS` and `ALL_ACTIONS`.
  final String? retryMode;

  PipelineStageOnFailureRetryConfiguration({
    this.retryMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retryModeValue = retryMode;
    if (retryModeValue != null) {
      map['retryMode'] = retryModeValue;
    }
    return map;
  }

  factory PipelineStageOnFailureRetryConfiguration.fromMap(
      Map<String, dynamic> map) {
    return PipelineStageOnFailureRetryConfiguration(
      retryMode: map['retryMode'] == null ? null : map['retryMode'] as String,
    );
  }
}
