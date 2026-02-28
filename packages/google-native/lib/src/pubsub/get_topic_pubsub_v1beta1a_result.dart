// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTopic.
class GetTopicPubsubV1beta1aResult {
  /// Name of the topic.
  final String name;

  /// Creates a new [GetTopicPubsubV1beta1aResult].
  /// [name] Name of the topic.
  GetTopicPubsubV1beta1aResult({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetTopicPubsubV1beta1aResult.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubV1beta1aResult(
      name: map['name'] as String,
    );
  }
}
