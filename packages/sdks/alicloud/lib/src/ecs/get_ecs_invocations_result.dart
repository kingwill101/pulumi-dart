// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_invocations_invocation.dart';

/// Result data returned by getEcsInvocations.
class GetEcsInvocationsResult {
  final String? commandId;
  final String? contentEncoding;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetEcsInvocationsInvocation> invocations;
  final String? invokeStatus;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetEcsInvocationsResult].
  /// [commandId] Optional.
  /// [contentEncoding] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [invocations] Required.
  /// [invokeStatus] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetEcsInvocationsResult({
    this.commandId,
    this.contentEncoding,
    required this.id,
    required this.ids,
    required this.invocations,
    this.invokeStatus,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandId': ?commandId,
      'contentEncoding': ?contentEncoding,
      'id': id,
      'ids': ids,
      'invocations': pulumi.Input.encodeList<GetEcsInvocationsInvocation, Map<String, dynamic>>(invocations, (value) => value.toMap()),
      'invokeStatus': ?invokeStatus,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetEcsInvocationsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsInvocationsResult(
      commandId: map['commandId'] == null ? null : map['commandId'] as String,
      contentEncoding: map['contentEncoding'] == null ? null : map['contentEncoding'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      invocations: pulumi.Input.decodeList<GetEcsInvocationsInvocation>(map['invocations'], (value) => GetEcsInvocationsInvocation.fromMap((value as Map).cast<String, dynamic>())),
      invokeStatus: map['invokeStatus'] == null ? null : map['invokeStatus'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

