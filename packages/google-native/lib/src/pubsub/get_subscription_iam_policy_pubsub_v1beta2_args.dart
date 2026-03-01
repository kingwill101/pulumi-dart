// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_get_subscription_iam_policy_pubsub_v1beta2_args_doc}
/// Arguments for getSubscriptionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_get_subscription_iam_policy_pubsub_v1beta2_args_doc}
class GetSubscriptionIamPolicyPubsubV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionIamPolicyPubsubV1beta2Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [subscriptionId] Required.
  GetSubscriptionIamPolicyPubsubV1beta2Args({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String subscriptionId,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionIamPolicyPubsubV1beta2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSubscriptionIamPolicyPubsubV1beta2Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}
