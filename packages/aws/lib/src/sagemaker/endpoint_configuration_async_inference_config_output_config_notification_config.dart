// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig {
  /// SNS topic to post a notification to when inference fails. If no topic is provided, no notification is sent on failure.
  final String? errorTopic;

  /// SNS topics where you want the inference response to be included. Valid values are `SUCCESS_NOTIFICATION_TOPIC` and `ERROR_NOTIFICATION_TOPIC`.
  final List<String>? includeInferenceResponseIns;

  /// SNS topic to post a notification to when inference completes successfully. If no topic is provided, no notification is sent on success.
  final String? successTopic;

  /// Creates a new [EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig].
  /// [errorTopic] SNS topic to post a notification to when inference fails. If no topic is provided, no notification is sent on failure.
  /// [includeInferenceResponseIns] SNS topics where you want the inference response to be included. Valid values are `SUCCESS_NOTIFICATION_TOPIC` and `ERROR_NOTIFICATION_TOPIC`.
  /// [successTopic] SNS topic to post a notification to when inference completes successfully. If no topic is provided, no notification is sent on success.
  EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig({
    this.errorTopic,
    this.includeInferenceResponseIns,
    this.successTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorTopic': ?errorTopic,
      'includeInferenceResponseIns': ?includeInferenceResponseIns,
      'successTopic': ?successTopic,
    };
  }

  factory EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig(
      errorTopic: map['errorTopic'] == null
          ? null
          : map['errorTopic'] as String,
      includeInferenceResponseIns: map['includeInferenceResponseIns'] == null
          ? null
          : (map['includeInferenceResponseIns'] as List).cast<String>(),
      successTopic: map['successTopic'] == null
          ? null
          : map['successTopic'] as String,
    );
  }
}
