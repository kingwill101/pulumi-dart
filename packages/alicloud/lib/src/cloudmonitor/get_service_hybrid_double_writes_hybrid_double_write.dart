// ignore_for_file: unused_element, unnecessary_cast


class GetServiceHybridDoubleWritesHybridDoubleWrite {
  /// The ID of the Hybrid Double Write. It formats as `<source_namespace>:<source_user_id>`.
  final String id;
  /// Target Namespace.
  final String namespace;
  /// Source Namespace.
  final String sourceNamespace;
  /// Source UserId.
  final String sourceUserId;
  /// Target UserId.
  final String userId;

  /// Creates a new [GetServiceHybridDoubleWritesHybridDoubleWrite].
  /// [id] The ID of the Hybrid Double Write. It formats as `<source_namespace>:<source_user_id>`.
  /// [namespace] Target Namespace.
  /// [sourceNamespace] Source Namespace.
  /// [sourceUserId] Source UserId.
  /// [userId] Target UserId.
  GetServiceHybridDoubleWritesHybridDoubleWrite({
    required this.id,
    required this.namespace,
    required this.sourceNamespace,
    required this.sourceUserId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespace': namespace,
      'sourceNamespace': sourceNamespace,
      'sourceUserId': sourceUserId,
      'userId': userId,
    };
  }

  factory GetServiceHybridDoubleWritesHybridDoubleWrite.fromMap(Map<String, dynamic> map) {
    return GetServiceHybridDoubleWritesHybridDoubleWrite(
      id: map['id'] as String,
      namespace: map['namespace'] as String,
      sourceNamespace: map['sourceNamespace'] as String,
      sourceUserId: map['sourceUserId'] as String,
      userId: map['userId'] as String,
    );
  }
}

