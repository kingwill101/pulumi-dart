// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudmonitor_service_hybrid_double_write_service_hybrid_double_write_args_doc}
/// The set of arguments for ServiceHybridDoubleWrite.
/// {@endtemplate}
/// {@macro pulumi_cloudmonitor_service_hybrid_double_write_service_hybrid_double_write_args_doc}
class ServiceHybridDoubleWriteArgs {
  /// Target Namespace.
  final pulumi.Input<String> namespace;

  /// Source Namespace.
  final pulumi.Input<String> sourceNamespace;

  /// Source UserId.
  final pulumi.Input<String> sourceUserId;

  /// Target UserId.
  final pulumi.Input<String> userId;

  /// Creates a new [ServiceHybridDoubleWriteArgs].
  /// [namespace] Target Namespace.
  /// [sourceNamespace] Source Namespace.
  /// [sourceUserId] Source UserId.
  /// [userId] Target UserId.
  ServiceHybridDoubleWriteArgs({
    required this.namespace,
    required this.sourceNamespace,
    required this.sourceUserId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'sourceNamespace': sourceNamespace,
      'sourceUserId': sourceUserId,
      'userId': userId,
    };
  }

  factory ServiceHybridDoubleWriteArgs.fromMap(Map<String, dynamic> map) {
    return ServiceHybridDoubleWriteArgs(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      sourceNamespace: pulumi.Input.fromValue(map['sourceNamespace'] as String),
      sourceUserId: pulumi.Input.fromValue(map['sourceUserId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
