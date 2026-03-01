// ignore_for_file: unused_element, unnecessary_cast

class SecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.
  /// For publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic.
  final String name;

  /// Creates a new [SecretTopic].
  /// [name] The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.
  SecretTopic({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory SecretTopic.fromMap(Map<String, dynamic> map) {
    return SecretTopic(name: map['name'] as String);
  }
}
