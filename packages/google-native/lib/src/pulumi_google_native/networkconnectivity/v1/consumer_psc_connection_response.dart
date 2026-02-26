// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_error_info_response.dart';
import 'google_rpc_status_response10.dart';

/// PSC connection details on consumer side.
class ConsumerPscConnectionResponse {
  /// The most recent error during operating this connection.
  final GoogleRpcStatusResponse10 error;

  /// The error info for the latest error during operating this connection.
  final GoogleRpcErrorInfoResponse errorInfo;

  /// The error type indicates whether the error is consumer facing, producer facing or system internal.
  final String errorType;

  /// The URI of the consumer forwarding rule created. Example: projects/{projectNumOrId}/regions/us-east1/networks/{resourceId}.
  final String forwardingRule;

  /// The last Compute Engine operation to setup PSC connection.
  final String gceOperation;

  /// The IP literal allocated on the consumer network for the PSC forwarding rule that is created to connect to the producer service attachment in this service connection map.
  final String ip;

  /// The consumer network whose PSC forwarding rule is connected to the service attachments in this service connection map. Note that the network could be on a different project (shared VPC).
  final String network;

  /// The consumer project whose PSC forwarding rule is connected to the service attachments in this service connection map.
  final String project;

  /// The PSC connection id of the PSC forwarding rule connected to the service attachments in this service connection map.
  final String pscConnectionId;

  /// The URI of a service attachment which is the target of the PSC connection.
  final String serviceAttachmentUri;

  /// The state of the PSC connection.
  final String state;

  ConsumerPscConnectionResponse({
    required this.error,
    required this.errorInfo,
    required this.errorType,
    required this.forwardingRule,
    required this.gceOperation,
    required this.ip,
    required this.network,
    required this.project,
    required this.pscConnectionId,
    required this.serviceAttachmentUri,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    map['errorInfo'] = errorInfo.toMap();
    map['errorType'] = errorType;
    map['forwardingRule'] = forwardingRule;
    map['gceOperation'] = gceOperation;
    map['ip'] = ip;
    map['network'] = network;
    map['project'] = project;
    map['pscConnectionId'] = pscConnectionId;
    map['serviceAttachmentUri'] = serviceAttachmentUri;
    map['state'] = state;
    return map;
  }

  factory ConsumerPscConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ConsumerPscConnectionResponse(
      error: GoogleRpcStatusResponse10.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      errorInfo: GoogleRpcErrorInfoResponse.fromMap(
          (map['errorInfo'] as Map).cast<String, dynamic>()),
      errorType: map['errorType'] as String,
      forwardingRule: map['forwardingRule'] as String,
      gceOperation: map['gceOperation'] as String,
      ip: map['ip'] as String,
      network: map['network'] as String,
      project: map['project'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      serviceAttachmentUri: map['serviceAttachmentUri'] as String,
      state: map['state'] as String,
    );
  }
}
