// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriberNotificationConfigurationHttpsNotificationConfiguration {
  /// The API key name for the notification subscription.
  final pulumi.Input<String>? authorizationApiKeyName;
  /// The API key value for the notification subscription.
  final pulumi.Input<String>? authorizationApiKeyValue;
  /// The subscription endpoint in Security Lake.
  /// If you prefer notification with an HTTPS endpoint, populate this field.
  final pulumi.Input<String> endpoint;
  /// The HTTP method used for the notification subscription.
  /// Valid values are `POST` and `PUT`.
  final pulumi.Input<String>? httpMethod;
  /// The Amazon Resource Name (ARN) of the EventBridge API destinations IAM role that you created.
  /// For more information about ARNs and how to use them in policies, see Managing data access and AWS Managed Policies in the Amazon Security Lake User Guide.
  final pulumi.Input<String> targetRoleArn;

  /// Creates a new [SubscriberNotificationConfigurationHttpsNotificationConfiguration].
  /// [authorizationApiKeyName] The API key name for the notification subscription.
  /// [authorizationApiKeyValue] The API key value for the notification subscription.
  /// [endpoint] The subscription endpoint in Security Lake.
  /// [httpMethod] The HTTP method used for the notification subscription.
  /// [targetRoleArn] The Amazon Resource Name (ARN) of the EventBridge API destinations IAM role that you created.
  SubscriberNotificationConfigurationHttpsNotificationConfiguration({
    this.authorizationApiKeyName,
    this.authorizationApiKeyValue,
    required this.endpoint,
    this.httpMethod,
    required this.targetRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationApiKeyName': ?authorizationApiKeyName,
      'authorizationApiKeyValue': ?authorizationApiKeyValue,
      'endpoint': endpoint,
      'httpMethod': ?httpMethod,
      'targetRoleArn': targetRoleArn,
    };
  }

  factory SubscriberNotificationConfigurationHttpsNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return SubscriberNotificationConfigurationHttpsNotificationConfiguration(
      authorizationApiKeyName: map['authorizationApiKeyName'] == null ? null : (map['authorizationApiKeyName'] as String).input(),
      authorizationApiKeyValue: map['authorizationApiKeyValue'] == null ? null : (map['authorizationApiKeyValue'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      httpMethod: map['httpMethod'] == null ? null : (map['httpMethod'] as String).input(),
      targetRoleArn: (map['targetRoleArn'] as String).input(),
    );
  }
}

