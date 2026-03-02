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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      sourceNamespace: map['sourceNamespace'] == null ? null : (map['sourceNamespace'] as String).input(),
      sourceUserId: map['sourceUserId'] == null ? null : (map['sourceUserId'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

