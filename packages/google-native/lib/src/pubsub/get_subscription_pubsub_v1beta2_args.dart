// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_get_subscription_pubsub_v1beta2_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_get_subscription_pubsub_v1beta2_args_doc}
class GetSubscriptionPubsubV1beta2Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionPubsubV1beta2Args].
  /// [project] Optional.
  /// [subscriptionId] Required.
  GetSubscriptionPubsubV1beta2Args({
    String? project,
    required String subscriptionId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubV1beta2Args(
      project: map['project'] == null ? null : map['project'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}
