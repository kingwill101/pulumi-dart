// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_get_subscription_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_get_subscription_get_subscription_args_doc}
class GetSubscriptionArgs {
  /// The name of the Cloud Pub/Sub Subscription.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetSubscriptionArgs].
  /// [name] The name of the Cloud Pub/Sub Subscription.
  /// [project] The project in which the resource belongs. If it
  GetSubscriptionArgs({required String name, String? project})
    : name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'project': ?project};
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
