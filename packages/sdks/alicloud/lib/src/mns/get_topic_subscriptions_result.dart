// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_subscriptions_subscription.dart';

/// Result data returned by getTopicSubscriptions.
class GetTopicSubscriptionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? namePrefix;
  /// A list of subscription names.
  final List<String> names;
  final String? outputFile;
  /// A list of subscriptions. Each element contains the following attributes:
  final List<GetTopicSubscriptionsSubscription> subscriptions;
  /// The topic which The subscription belongs to was named with the name.
  final String topicName;

  /// Creates a new [GetTopicSubscriptionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [names] A list of subscription names.
  /// [outputFile] Optional.
  /// [subscriptions] A list of subscriptions. Each element contains the following attributes:
  /// [topicName] The topic which The subscription belongs to was named with the name.
  GetTopicSubscriptionsResult({
    required this.id,
    this.namePrefix,
    required this.names,
    this.outputFile,
    required this.subscriptions,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namePrefix': ?namePrefix,
      'names': names,
      'outputFile': ?outputFile,
      'subscriptions': pulumi.Input.encodeList<GetTopicSubscriptionsSubscription, Map<String, dynamic>>(subscriptions, (value) => value.toMap()),
      'topicName': topicName,
    };
  }

  factory GetTopicSubscriptionsResult.fromMap(Map<String, dynamic> map) {
    return GetTopicSubscriptionsResult(
      id: map['id'] as String,
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptions: pulumi.Input.decodeList<GetTopicSubscriptionsSubscription>(map['subscriptions']!, (value) => GetTopicSubscriptionsSubscription.fromMap((value as Map).cast<String, dynamic>())),
      topicName: map['topicName'] as String,
    );
  }
}

