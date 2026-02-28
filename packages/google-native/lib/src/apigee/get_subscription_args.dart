// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_subscription_args_doc}
class GetSubscriptionArgs {
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionArgs].
  /// [developerId] Required.
  /// [organizationId] Required.
  /// [subscriptionId] Required.
  GetSubscriptionArgs({
    required String developerId,
    required String organizationId,
    required String subscriptionId,
  }) :
      developerId = pulumi.Input.asInput<String>(developerId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerId': developerId,
      'organizationId': organizationId,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      developerId: map['developerId'] as String,
      organizationId: map['organizationId'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

