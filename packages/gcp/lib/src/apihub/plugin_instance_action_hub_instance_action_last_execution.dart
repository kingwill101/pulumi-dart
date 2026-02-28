// ignore_for_file: unused_element, unnecessary_cast

class PluginInstanceActionHubInstanceActionLastExecution {
  /// The last execution end time of the plugin instance.
  final String? endTime;

  /// Error message describing the failure, if any, during Create, Delete or
  /// ApplyConfig operation corresponding to the plugin instance.This field will
  /// only be populated if the plugin instance is in the ERROR or FAILED state.
  final String? errorMessage;

  /// The result of the last execution of the plugin instance.
  /// Possible values:
  /// RESULT_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  final String? result;

  /// The last execution start time of the plugin instance.
  final String? startTime;

  /// Creates a new [PluginInstanceActionHubInstanceActionLastExecution].
  /// [endTime] The last execution end time of the plugin instance.
  /// [errorMessage] Error message describing the failure, if any, during Create, Delete or
  /// [result] The result of the last execution of the plugin instance.
  /// [startTime] The last execution start time of the plugin instance.
  PluginInstanceActionHubInstanceActionLastExecution({
    this.endTime,
    this.errorMessage,
    this.result,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    final resultValue = result;
    if (resultValue != null) {
      map['result'] = resultValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory PluginInstanceActionHubInstanceActionLastExecution.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceActionHubInstanceActionLastExecution(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
      result: map['result'] == null ? null : map['result'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
