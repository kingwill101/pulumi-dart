// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceHybridDoubleWritesHybridDoubleWrite {
  /// The ID of the Hybrid Double Write. It formats as `<source_namespace>:<source_user_id>`.
  final pulumi.Input<String> id;
  /// Target Namespace.
  final pulumi.Input<String> namespace;
  /// Source Namespace.
  final pulumi.Input<String> sourceNamespace;
  /// Source UserId.
  final pulumi.Input<String> sourceUserId;
  /// Target UserId.
  final pulumi.Input<String> userId;

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
      id: (map['id'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      sourceNamespace: (map['sourceNamespace'] as String).input(),
      sourceUserId: (map['sourceUserId'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

