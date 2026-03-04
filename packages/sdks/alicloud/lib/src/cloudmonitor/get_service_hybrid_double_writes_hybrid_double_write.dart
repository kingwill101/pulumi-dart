// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceHybridDoubleWritesHybridDoubleWrite {
  /// The ID of the Hybrid Double Write. It formats as `&lt;source_namespace&gt;:&lt;source_user_id&gt;`.
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
  /// [id] The ID of the Hybrid Double Write. It formats as `&lt;source_namespace&gt;:&lt;source_user_id&gt;`.
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

  factory GetServiceHybridDoubleWritesHybridDoubleWrite.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceHybridDoubleWritesHybridDoubleWrite(
      id: pulumi.Input.fromValue(map['id'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      sourceNamespace: pulumi.Input.fromValue(map['sourceNamespace'] as String),
      sourceUserId: pulumi.Input.fromValue(map['sourceUserId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
