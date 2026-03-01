// ignore_for_file: unused_element, unnecessary_cast

import 'update_status_response.dart';

/// The status of a member update operation.
class MemberUpdateStatusResponse {
  /// The Azure resource id of the target Kubernetes cluster.
  final String clusterResourceId;
  /// The status message after processing the member update operation.
  final String message;
  /// The name of the FleetMember.
  final String name;
  /// The operation resource id of the latest attempt to perform the operation.
  final String operationId;
  /// The status of the MemberUpdate operation.
  final UpdateStatusResponse status;

  /// Creates a new [MemberUpdateStatusResponse].
  /// [clusterResourceId] The Azure resource id of the target Kubernetes cluster.
  /// [message] The status message after processing the member update operation.
  /// [name] The name of the FleetMember.
  /// [operationId] The operation resource id of the latest attempt to perform the operation.
  /// [status] The status of the MemberUpdate operation.
  MemberUpdateStatusResponse({
    required this.clusterResourceId,
    required this.message,
    required this.name,
    required this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterResourceId': clusterResourceId,
      'message': message,
      'name': name,
      'operationId': operationId,
      'status': status.toMap(),
    };
  }

  factory MemberUpdateStatusResponse.fromMap(Map<String, dynamic> map) {
    return MemberUpdateStatusResponse(
      clusterResourceId: map['clusterResourceId'] as String,
      message: map['message'] as String,
      name: map['name'] as String,
      operationId: map['operationId'] as String,
      status: UpdateStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

