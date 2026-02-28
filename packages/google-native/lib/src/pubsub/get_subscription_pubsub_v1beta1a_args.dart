// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta1a_get_subscription_pubsub_v1beta1a_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta1a_get_subscription_pubsub_v1beta1a_args_doc}
class GetSubscriptionPubsubV1beta1aArgs {
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionPubsubV1beta1aArgs].
  /// [subscriptionId] Required.
  GetSubscriptionPubsubV1beta1aArgs({
    required String subscriptionId,
  }) : subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubV1beta1aArgs(
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}
