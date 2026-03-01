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
    required pulumi.Output<String> namespace,
    required pulumi.Output<String> sourceNamespace,
    required pulumi.Output<String> sourceUserId,
    required pulumi.Output<String> userId,
  }) :
      namespace = pulumi.Input.asInput<String>(namespace),
      sourceNamespace = pulumi.Input.asInput<String>(sourceNamespace),
      sourceUserId = pulumi.Input.asInput<String>(sourceUserId),
      userId = pulumi.Input.asInput<String>(userId);

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
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      sourceNamespace: pulumi.Output.create<String>(map['sourceNamespace'] as String),
      sourceUserId: pulumi.Output.create<String>(map['sourceUserId'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

