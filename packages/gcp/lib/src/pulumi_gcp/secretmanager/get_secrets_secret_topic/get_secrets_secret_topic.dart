// ignore_for_file: unused_element, unnecessary_cast

class GetSecretsSecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to.
  final String name;

  GetSecretsSecretTopic({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetSecretsSecretTopic.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretTopic(
      name: map['name'] as String,
    );
  }
}
