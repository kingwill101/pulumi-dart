// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datahub_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_datahub_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// Comment of the datahub subscription. It cannot be longer than 255 characters.
  final pulumi.Input<String>? comment;
  /// The name of the datahub project that the subscription belongs to. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  final pulumi.Input<String> projectName;
  /// The name of the datahub topic that the subscription belongs to. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  final pulumi.Input<String> topicName;

  /// Creates a new [SubscriptionArgs].
  /// [comment] Comment of the datahub subscription. It cannot be longer than 255 characters.
  /// [projectName] The name of the datahub project that the subscription belongs to. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  /// [topicName] The name of the datahub topic that the subscription belongs to. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  SubscriptionArgs({
    pulumi.Output<String>? comment,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> topicName,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      projectName = pulumi.Input.asInput<String>(projectName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'projectName': projectName,
      'topicName': topicName,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

