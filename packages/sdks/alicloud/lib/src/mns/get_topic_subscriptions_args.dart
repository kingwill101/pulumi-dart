// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mns_get_topic_subscriptions_get_topic_subscriptions_args_doc}
/// Arguments for getTopicSubscriptions.
/// {@endtemplate}
/// {@macro pulumi_mns_get_topic_subscriptions_get_topic_subscriptions_args_doc}
class GetTopicSubscriptionsArgs {
  /// A string to filter resulting subscriptions of the topic by their name prefixs.
  final pulumi.Input<String>? namePrefix;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicSubscriptionsArgs].
  /// [namePrefix] A string to filter resulting subscriptions of the topic by their name prefixs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [topicName] Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  GetTopicSubscriptionsArgs({
    this.namePrefix,
    this.outputFile,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namePrefix': ?namePrefix,
      'outputFile': ?outputFile,
      'topicName': topicName,
    };
  }

  factory GetTopicSubscriptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicSubscriptionsArgs(
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

