// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_subscription_args_doc}
class GetSubscriptionArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [subscriptionId] Required.
  GetSubscriptionArgs({
    required String location,
    required String organizationId,
    required String subscriptionId,
  }) : location = pulumi.Input.asInput<String>(location),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}
