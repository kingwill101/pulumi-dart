// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_subscription_args_doc}
class GetSubscriptionArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription name.
  final pulumi.Input<String> subscriptionName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetSubscriptionArgs].
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subscriptionName] The subscription name.
  /// [topicName] The topic name.
  GetSubscriptionArgs({
    required String namespaceName,
    required String resourceGroupName,
    required String subscriptionName,
    required String topicName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionName = pulumi.Input.asInput<String>(subscriptionName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'subscriptionName': subscriptionName,
      'topicName': topicName,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionName: map['subscriptionName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

