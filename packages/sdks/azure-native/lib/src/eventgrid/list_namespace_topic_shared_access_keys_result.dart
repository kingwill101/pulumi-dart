// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNamespaceTopicSharedAccessKeys.
class ListNamespaceTopicSharedAccessKeysResult {
  /// Shared access key1 for the topic.
  final String? key1;
  /// Shared access key2 for the topic.
  final String? key2;

  /// Creates a new [ListNamespaceTopicSharedAccessKeysResult].
  /// [key1] Shared access key1 for the topic.
  /// [key2] Shared access key2 for the topic.
  ListNamespaceTopicSharedAccessKeysResult({
    this.key1,
    this.key2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key1': ?key1,
      'key2': ?key2,
    };
  }

  factory ListNamespaceTopicSharedAccessKeysResult.fromMap(Map<String, dynamic> map) {
    return ListNamespaceTopicSharedAccessKeysResult(
      key1: map['key1'] == null ? null : map['key1']! as String,
      key2: map['key2'] == null ? null : map['key2']! as String,
    );
  }
}

