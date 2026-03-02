// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceHybridDoubleWrite resources.
class ServiceHybridDoubleWriteState {
  /// Target Namespace.
  final pulumi.Input<String>? namespace;
  /// Source Namespace.
  final pulumi.Input<String>? sourceNamespace;
  /// Source UserId.
  final pulumi.Input<String>? sourceUserId;
  /// Target UserId.
  final pulumi.Input<String>? userId;

  /// Creates a new [ServiceHybridDoubleWriteState].
  /// [namespace] Target Namespace.
  /// [sourceNamespace] Source Namespace.
  /// [sourceUserId] Source UserId.
  /// [userId] Target UserId.
  ServiceHybridDoubleWriteState({
    this.namespace,
    this.sourceNamespace,
    this.sourceUserId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'sourceNamespace': ?sourceNamespace,
      'sourceUserId': ?sourceUserId,
      'userId': ?userId,
    };
  }

  factory ServiceHybridDoubleWriteState.fromMap(Map<String, dynamic> map) {
    return ServiceHybridDoubleWriteState(
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      sourceNamespace: map['sourceNamespace'] == null ? null : (map['sourceNamespace']! as String).input(),
      sourceUserId: map['sourceUserId'] == null ? null : (map['sourceUserId']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

