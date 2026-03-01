// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_hybrid_double_writes_hybrid_double_write.dart';

/// Result data returned by getServiceHybridDoubleWrites.
class GetServiceHybridDoubleWritesResult {
  /// A list of Hybrid Double Writes. Each element contains the following attributes:
  final List<GetServiceHybridDoubleWritesHybridDoubleWrite> hybridDoubleWrites;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// Target Namespace.
  final String? namespace;
  final String? outputFile;
  /// Source Namespace.
  final String? sourceNamespace;
  /// Source UserId.
  final String? sourceUserId;
  /// Target UserId.
  final String? userId;

  /// Creates a new [GetServiceHybridDoubleWritesResult].
  /// [hybridDoubleWrites] A list of Hybrid Double Writes. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [namespace] Target Namespace.
  /// [outputFile] Optional.
  /// [sourceNamespace] Source Namespace.
  /// [sourceUserId] Source UserId.
  /// [userId] Target UserId.
  GetServiceHybridDoubleWritesResult({
    required this.hybridDoubleWrites,
    required this.id,
    required this.ids,
    this.namespace,
    this.outputFile,
    this.sourceNamespace,
    this.sourceUserId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridDoubleWrites': pulumi.Input.encodeList<GetServiceHybridDoubleWritesHybridDoubleWrite, Map<String, dynamic>>(hybridDoubleWrites, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'sourceNamespace': ?sourceNamespace,
      'sourceUserId': ?sourceUserId,
      'userId': ?userId,
    };
  }

  factory GetServiceHybridDoubleWritesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceHybridDoubleWritesResult(
      hybridDoubleWrites: pulumi.Input.decodeList<GetServiceHybridDoubleWritesHybridDoubleWrite>(map['hybridDoubleWrites'], (value) => GetServiceHybridDoubleWritesHybridDoubleWrite.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      sourceNamespace: map['sourceNamespace'] == null ? null : map['sourceNamespace'] as String,
      sourceUserId: map['sourceUserId'] == null ? null : map['sourceUserId'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}

