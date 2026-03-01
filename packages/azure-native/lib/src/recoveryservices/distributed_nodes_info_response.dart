// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// This is used to represent the various nodes of the distributed container.
class DistributedNodesInfoResponse {
  /// Error Details if the Status is non-success.
  final ErrorDetailResponse? errorDetail;
  /// Name of the node under a distributed container.
  final String? nodeName;
  /// ARM resource id of the node
  final String? sourceResourceId;
  /// Status of this Node.
  /// Failed | Succeeded
  final String? status;

  /// Creates a new [DistributedNodesInfoResponse].
  /// [errorDetail] Error Details if the Status is non-success.
  /// [nodeName] Name of the node under a distributed container.
  /// [sourceResourceId] ARM resource id of the node
  /// [status] Status of this Node.
  DistributedNodesInfoResponse({
    this.errorDetail,
    this.nodeName,
    this.sourceResourceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetail': ?errorDetail == null ? null : errorDetail!.toMap(),
      'nodeName': ?nodeName,
      'sourceResourceId': ?sourceResourceId,
      'status': ?status,
    };
  }

  factory DistributedNodesInfoResponse.fromMap(Map<String, dynamic> map) {
    return DistributedNodesInfoResponse(
      errorDetail: map['errorDetail'] == null ? null : ErrorDetailResponse.fromMap((map['errorDetail'] as Map).cast<String, dynamic>()),
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

