// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration {
  /// S3 bucket name for event payload delivery.
  final pulumi.Input<String> payloadDeliveryBucketName;
  /// ARN of the SNS topic for job notifications.
  final pulumi.Input<String> topicArn;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration].
  /// [payloadDeliveryBucketName] S3 bucket name for event payload delivery.
  /// [topicArn] ARN of the SNS topic for job notifications.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration({
    required this.payloadDeliveryBucketName,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payloadDeliveryBucketName': payloadDeliveryBucketName,
      'topicArn': topicArn,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration(
      payloadDeliveryBucketName: pulumi.Input.fromValue(map['payloadDeliveryBucketName'] as String),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
