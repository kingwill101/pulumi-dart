// ignore_for_file: unused_element, unnecessary_cast

class RegionalSecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to, in the following format:
  /// projects/*/topics/*. For publication to succeed, the Secret Manager Service
  /// Agent service account must have pubsub.publisher permissions on the topic.
  final String name;

  RegionalSecretTopic({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RegionalSecretTopic.fromMap(Map<String, dynamic> map) {
    return RegionalSecretTopic(
      name: map['name'] as String,
    );
  }
}
