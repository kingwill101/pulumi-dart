// ignore_for_file: unused_element, unnecessary_cast

import 'circuit_breaker_policy_response.dart';
import 'http_connection_pool_response.dart';
import 'http_retry_policy_response.dart';
import 'system_data_response.dart';
import 'tcp_connection_pool_response.dart';
import 'tcp_retry_policy_response.dart';
import 'timeout_policy_response.dart';

/// Result data returned by getAppResiliency.
class GetAppResiliencyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Policy that defines circuit breaker conditions
  final CircuitBreakerPolicyResponse? circuitBreakerPolicy;
  /// Defines parameters for http connection pooling
  final HttpConnectionPoolResponse? httpConnectionPool;
  /// Policy that defines http request retry conditions
  final HttpRetryPolicyResponse? httpRetryPolicy;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Defines parameters for tcp connection pooling
  final TcpConnectionPoolResponse? tcpConnectionPool;
  /// Policy that defines tcp request retry conditions
  final TcpRetryPolicyResponse? tcpRetryPolicy;
  /// Policy to set request timeouts
  final TimeoutPolicyResponse? timeoutPolicy;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAppResiliencyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [circuitBreakerPolicy] Policy that defines circuit breaker conditions
  /// [httpConnectionPool] Defines parameters for http connection pooling
  /// [httpRetryPolicy] Policy that defines http request retry conditions
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tcpConnectionPool] Defines parameters for tcp connection pooling
  /// [tcpRetryPolicy] Policy that defines tcp request retry conditions
  /// [timeoutPolicy] Policy to set request timeouts
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAppResiliencyResult({
    required this.azureApiVersion,
    this.circuitBreakerPolicy,
    this.httpConnectionPool,
    this.httpRetryPolicy,
    required this.id,
    required this.name,
    required this.systemData,
    this.tcpConnectionPool,
    this.tcpRetryPolicy,
    this.timeoutPolicy,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'circuitBreakerPolicy': ?circuitBreakerPolicy?.toMap(),
      'httpConnectionPool': ?httpConnectionPool?.toMap(),
      'httpRetryPolicy': ?httpRetryPolicy?.toMap(),
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'tcpConnectionPool': ?tcpConnectionPool?.toMap(),
      'tcpRetryPolicy': ?tcpRetryPolicy?.toMap(),
      'timeoutPolicy': ?timeoutPolicy?.toMap(),
      'type': type,
    };
  }

  factory GetAppResiliencyResult.fromMap(Map<String, dynamic> map) {
    return GetAppResiliencyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      circuitBreakerPolicy: (() { final guardedValue = map['circuitBreakerPolicy']; if (guardedValue == null) return null; return CircuitBreakerPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpConnectionPool: (() { final guardedValue = map['httpConnectionPool']; if (guardedValue == null) return null; return HttpConnectionPoolResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpRetryPolicy: (() { final guardedValue = map['httpRetryPolicy']; if (guardedValue == null) return null; return HttpRetryPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tcpConnectionPool: (() { final guardedValue = map['tcpConnectionPool']; if (guardedValue == null) return null; return TcpConnectionPoolResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tcpRetryPolicy: (() { final guardedValue = map['tcpRetryPolicy']; if (guardedValue == null) return null; return TcpRetryPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeoutPolicy: (() { final guardedValue = map['timeoutPolicy']; if (guardedValue == null) return null; return TimeoutPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
    );
  }
}

