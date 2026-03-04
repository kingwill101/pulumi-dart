// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig {
  /// SNS topic to post a notification to when inference fails. If no topic is provided, no notification is sent on failure.
  final pulumi.Input<String>? errorTopic;

  /// SNS topics where you want the inference response to be included. Valid values are `SUCCESS_NOTIFICATION_TOPIC` and `ERROR_NOTIFICATION_TOPIC`.
  final pulumi.Input<List<String>>? includeInferenceResponseIns;

  /// SNS topic to post a notification to when inference completes successfully. If no topic is provided, no notification is sent on success.
  final pulumi.Input<String>? successTopic;

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
      errorTopic: (() {
        final guardedValue = map['errorTopic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      includeInferenceResponseIns: (() {
        final guardedValue = map['includeInferenceResponseIns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      successTopic: (() {
        final guardedValue = map['successTopic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
