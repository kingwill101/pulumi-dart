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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? sourceNamespace,
    pulumi.Output<String>? sourceUserId,
    pulumi.Output<String>? userId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sourceNamespace = pulumi.Input.asOptionalInput<String>(sourceNamespace),
      sourceUserId = pulumi.Input.asOptionalInput<String>(sourceUserId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      sourceNamespace: map['sourceNamespace'] == null ? null : pulumi.Output.create<String>(map['sourceNamespace'] as String),
      sourceUserId: map['sourceUserId'] == null ? null : pulumi.Output.create<String>(map['sourceUserId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

