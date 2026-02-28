// ignore_for_file: unused_element, unnecessary_cast

import 'service_connection_policy_psc_connection_error.dart';
import 'service_connection_policy_psc_connection_error_info.dart';

class ServiceConnectionPolicyPscConnection {
  /// The resource reference of the consumer address.
  final String? consumerAddress;
  /// The resource reference of the PSC Forwarding Rule within the consumer VPC.
  final String? consumerForwardingRule;
  /// The project where the PSC connection is created.
  final String? consumerTargetProject;
  /// The most recent error during operating this connection.
  /// Structure is documented below.
  final ServiceConnectionPolicyPscConnectionError? error;
  /// The error info for the latest error during operating this connection.
  /// Structure is documented below.
  final ServiceConnectionPolicyPscConnectionErrorInfo? errorInfo;
  /// The error type indicates whether the error is consumer facing, producer
  /// facing or system internal.
  /// Possible values are: `CONNECTION_ERROR_TYPE_UNSPECIFIED`, `ERROR_INTERNAL`, `ERROR_CONSUMER_SIDE`, `ERROR_PRODUCER_SIDE`.
  final String? errorType;
  /// The last Compute Engine operation to setup PSC connection.
  final String? gceOperation;
  /// The PSC connection id of the PSC forwarding rule.
  final String? pscConnectionId;
  /// The state of the PSC connection.
  /// Possible values are: `STATE_UNSPECIFIED`, `ACTIVE`, `CREATING`, `DELETING`, `FAILED`.
  final String? state;

  /// Creates a new [ServiceConnectionPolicyPscConnection].
  /// [consumerAddress] The resource reference of the consumer address.
  /// [consumerForwardingRule] The resource reference of the PSC Forwarding Rule within the consumer VPC.
  /// [consumerTargetProject] The project where the PSC connection is created.
  /// [error] The most recent error during operating this connection.
  /// [errorInfo] The error info for the latest error during operating this connection.
  /// [errorType] The error type indicates whether the error is consumer facing, producer
  /// [gceOperation] The last Compute Engine operation to setup PSC connection.
  /// [pscConnectionId] The PSC connection id of the PSC forwarding rule.
  /// [state] The state of the PSC connection.
  ServiceConnectionPolicyPscConnection({
    this.consumerAddress,
    this.consumerForwardingRule,
    this.consumerTargetProject,
    this.error,
    this.errorInfo,
    this.errorType,
    this.gceOperation,
    this.pscConnectionId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerAddress': ?consumerAddress,
      'consumerForwardingRule': ?consumerForwardingRule,
      'consumerTargetProject': ?consumerTargetProject,
      'error': ?error == null ? null : error!.toMap(),
      'errorInfo': ?errorInfo == null ? null : errorInfo!.toMap(),
      'errorType': ?errorType,
      'gceOperation': ?gceOperation,
      'pscConnectionId': ?pscConnectionId,
      'state': ?state,
    };
  }

  factory ServiceConnectionPolicyPscConnection.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyPscConnection(
      consumerAddress: map['consumerAddress'] == null ? null : map['consumerAddress'] as String,
      consumerForwardingRule: map['consumerForwardingRule'] == null ? null : map['consumerForwardingRule'] as String,
      consumerTargetProject: map['consumerTargetProject'] == null ? null : map['consumerTargetProject'] as String,
      error: map['error'] == null ? null : ServiceConnectionPolicyPscConnectionError.fromMap((map['error'] as Map).cast<String, dynamic>()),
      errorInfo: map['errorInfo'] == null ? null : ServiceConnectionPolicyPscConnectionErrorInfo.fromMap((map['errorInfo'] as Map).cast<String, dynamic>()),
      errorType: map['errorType'] == null ? null : map['errorType'] as String,
      gceOperation: map['gceOperation'] == null ? null : map['gceOperation'] as String,
      pscConnectionId: map['pscConnectionId'] == null ? null : map['pscConnectionId'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

