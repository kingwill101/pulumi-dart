// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudmonitor_get_service_hybrid_double_writes_get_service_hybrid_double_writes_args_doc}
/// Arguments for getServiceHybridDoubleWrites.
/// {@endtemplate}
/// {@macro pulumi_cloudmonitor_get_service_hybrid_double_writes_get_service_hybrid_double_writes_args_doc}
class GetServiceHybridDoubleWritesArgs {
  /// A list of Hybrid Double Write IDs.
  final pulumi.Input<List<String>>? ids;
  /// Target Namespace.
  final pulumi.Input<String>? namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Source Namespace.
  final pulumi.Input<String>? sourceNamespace;
  /// Source UserId.
  final pulumi.Input<String>? sourceUserId;
  /// Target UserId.
  final pulumi.Input<String>? userId;

  /// Creates a new [GetServiceHybridDoubleWritesArgs].
  /// [ids] A list of Hybrid Double Write IDs.
  /// [namespace] Target Namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [sourceNamespace] Source Namespace.
  /// [sourceUserId] Source UserId.
  /// [userId] Target UserId.
  GetServiceHybridDoubleWritesArgs({
    this.ids,
    this.namespace,
    this.outputFile,
    this.sourceNamespace,
    this.sourceUserId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'sourceNamespace': ?sourceNamespace,
      'sourceUserId': ?sourceUserId,
      'userId': ?userId,
    };
  }

  factory GetServiceHybridDoubleWritesArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceHybridDoubleWritesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceNamespace: (() { final guardedValue = map['sourceNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUserId: (() { final guardedValue = map['sourceUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

