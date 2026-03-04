// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_status_response.dart';

/// The status of a member update operation.
class MemberUpdateStatusResponse {
  /// The Azure resource id of the target Kubernetes cluster.
  final pulumi.Input<String> clusterResourceId;

  /// The status message after processing the member update operation.
  final pulumi.Input<String> message;

  /// The name of the FleetMember.
  final pulumi.Input<String> name;

  /// The operation resource id of the latest attempt to perform the operation.
  final pulumi.Input<String> operationId;

  /// The status of the MemberUpdate operation.
  final pulumi.Input<UpdateStatusResponse> status;

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
      'status':
          pulumi.Input.mapInputValue<
            UpdateStatusResponse,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory MemberUpdateStatusResponse.fromMap(Map<String, dynamic> map) {
    return MemberUpdateStatusResponse(
      clusterResourceId: pulumi.Input.fromValue(
        map['clusterResourceId'] as String,
      ),
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      status: pulumi.Input.fromValue(
        UpdateStatusResponse.fromMap(
          (map['status']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
