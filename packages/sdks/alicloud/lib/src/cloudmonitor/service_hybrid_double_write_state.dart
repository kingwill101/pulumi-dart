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
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceNamespace: (() {
        final guardedValue = map['sourceNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceUserId: (() {
        final guardedValue = map['sourceUserId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
