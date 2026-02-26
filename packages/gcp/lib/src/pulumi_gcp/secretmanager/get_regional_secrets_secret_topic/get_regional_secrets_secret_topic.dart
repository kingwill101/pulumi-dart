// ignore_for_file: unused_element, unnecessary_cast

class GetRegionalSecretsSecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to.
  final String name;

  GetRegionalSecretsSecretTopic({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetRegionalSecretsSecretTopic.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsSecretTopic(
      name: map['name'] as String,
    );
  }
}
