// ignore_for_file: unused_element, unnecessary_cast

class GetRegionalSecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to, in the following format:
  /// projects/*/topics/*. For publication to succeed, the Secret Manager Service
  /// Agent service account must have pubsub.publisher permissions on the topic.
  final String name;

  GetRegionalSecretTopic({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetRegionalSecretTopic.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretTopic(
      name: map['name'] as String,
    );
  }
}
