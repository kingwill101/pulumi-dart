// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTopic.
class GetTopicResult2 {
  /// Name of the topic.
  final String name;

  GetTopicResult2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetTopicResult2.fromMap(Map<String, dynamic> map) {
    return GetTopicResult2(
      name: map['name'] as String,
    );
  }
}
