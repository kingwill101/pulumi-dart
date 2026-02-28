// ignore_for_file: unused_element, unnecessary_cast

class ContactListTopic {
  /// Default subscription status to be applied to a contact if the contact has not noted their preference for subscribing to a topic.
  final String defaultSubscriptionStatus;

  /// Description of what the topic is about, which the contact will see.
  final String? description;

  /// Name of the topic the contact will see.
  final String displayName;

  /// Name of the topic.
  ///
  /// The following arguments are optional:
  final String topicName;

  /// Creates a new [ContactListTopic].
  /// [defaultSubscriptionStatus] Default subscription status to be applied to a contact if the contact has not noted their preference for subscribing to a topic.
  /// [description] Description of what the topic is about, which the contact will see.
  /// [displayName] Name of the topic the contact will see.
  /// [topicName] Name of the topic.
  ContactListTopic({
    required this.defaultSubscriptionStatus,
    this.description,
    required this.displayName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultSubscriptionStatus'] = defaultSubscriptionStatus;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['topicName'] = topicName;
    return map;
  }

  factory ContactListTopic.fromMap(Map<String, dynamic> map) {
    return ContactListTopic(
      defaultSubscriptionStatus: map['defaultSubscriptionStatus'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}
