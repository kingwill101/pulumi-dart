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
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? sourceNamespace,
    pulumi.Output<String>? sourceUserId,
    pulumi.Output<String>? userId,
  }) :
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      sourceNamespace = pulumi.Input.asOptionalInput<String>(sourceNamespace),
      sourceUserId = pulumi.Input.asOptionalInput<String>(sourceUserId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      sourceNamespace: map['sourceNamespace'] == null ? null : pulumi.Output.create<String>(map['sourceNamespace'] as String),
      sourceUserId: map['sourceUserId'] == null ? null : pulumi.Output.create<String>(map['sourceUserId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

