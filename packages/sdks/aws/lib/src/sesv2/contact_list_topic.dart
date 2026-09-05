// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContactListTopic {
  /// Default subscription status to be applied to a contact if the contact has not noted their preference for subscribing to a topic.
  final pulumi.Input<String> defaultSubscriptionStatus;
  /// Description of what the topic is about, which the contact will see.
  final pulumi.Input<String?>? description;
  /// Name of the topic the contact will see.
  final pulumi.Input<String> displayName;
  /// Name of the topic.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> topicName;

  /// Creates a new [ContactListTopic].
  /// [defaultSubscriptionStatus] Default subscription status to be applied to a contact if the contact has not noted their preference for subscribing to a topic.
  /// [description] Description of what the topic is about, which the contact will see.
  /// [displayName] Name of the topic the contact will see.
  /// [topicName] Name of the topic.
  const ContactListTopic({
    required this.defaultSubscriptionStatus,
    this.description,
    required this.displayName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSubscriptionStatus': defaultSubscriptionStatus,
      'description': ?description,
      'displayName': displayName,
      'topicName': topicName,
    };
  }

  factory ContactListTopic.fromMap(Map<String, dynamic> map) {
    return ContactListTopic(
      defaultSubscriptionStatus: pulumi.Input.fromValue(map['defaultSubscriptionStatus'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
