// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_error_info_response.dart';
import 'google_rpc_status_response.dart';

/// Information about a specific Private Service Connect connection.
class PscConnectionResponse {
  /// The resource reference of the consumer address.
  final String consumerAddress;

  /// The resource reference of the PSC Forwarding Rule within the consumer VPC.
  final String consumerForwardingRule;

  /// The project where the PSC connection is created.
  final String consumerTargetProject;

  /// The most recent error during operating this connection.
  final GoogleRpcStatusResponse error;

  /// The error info for the latest error during operating this connection.
  final GoogleRpcErrorInfoResponse errorInfo;

  /// The error type indicates whether the error is consumer facing, producer facing or system internal.
  final String errorType;

  /// The last Compute Engine operation to setup PSC connection.
  final String gceOperation;

  /// The PSC connection id of the PSC forwarding rule.
  final String pscConnectionId;

  /// State of the PSC Connection
  final String state;

  /// Creates a new [PscConnectionResponse].
  /// [consumerAddress] The resource reference of the consumer address.
  /// [consumerForwardingRule] The resource reference of the PSC Forwarding Rule within the consumer VPC.
  /// [consumerTargetProject] The project where the PSC connection is created.
  /// [error] The most recent error during operating this connection.
  /// [errorInfo] The error info for the latest error during operating this connection.
  /// [errorType] The error type indicates whether the error is consumer facing, producer facing or system internal.
  /// [gceOperation] The last Compute Engine operation to setup PSC connection.
  /// [pscConnectionId] The PSC connection id of the PSC forwarding rule.
  /// [state] State of the PSC Connection
  PscConnectionResponse({
    required this.consumerAddress,
    required this.consumerForwardingRule,
    required this.consumerTargetProject,
    required this.error,
    required this.errorInfo,
    required this.errorType,
    required this.gceOperation,
    required this.pscConnectionId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerAddress'] = consumerAddress;
    map['consumerForwardingRule'] = consumerForwardingRule;
    map['consumerTargetProject'] = consumerTargetProject;
    map['error'] = error.toMap();
    map['errorInfo'] = errorInfo.toMap();
    map['errorType'] = errorType;
    map['gceOperation'] = gceOperation;
    map['pscConnectionId'] = pscConnectionId;
    map['state'] = state;
    return map;
  }

  factory PscConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PscConnectionResponse(
      consumerAddress: map['consumerAddress'] as String,
      consumerForwardingRule: map['consumerForwardingRule'] as String,
      consumerTargetProject: map['consumerTargetProject'] as String,
      error: GoogleRpcStatusResponse.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      errorInfo: GoogleRpcErrorInfoResponse.fromMap(
          (map['errorInfo'] as Map).cast<String, dynamic>()),
      errorType: map['errorType'] as String,
      gceOperation: map['gceOperation'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      state: map['state'] as String,
    );
  }
}
