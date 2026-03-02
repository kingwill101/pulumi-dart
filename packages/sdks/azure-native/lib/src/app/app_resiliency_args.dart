// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'circuit_breaker_policy.dart';
import 'http_connection_pool.dart';
import 'http_retry_policy.dart';
import 'tcp_connection_pool.dart';
import 'tcp_retry_policy.dart';
import 'timeout_policy.dart';

/// {@template pulumi_app_app_resiliency_args_doc}
/// The set of arguments for AppResiliency.
/// {@endtemplate}
/// {@macro pulumi_app_app_resiliency_args_doc}
class AppResiliencyArgs {
  /// Name of the Container App.
  final pulumi.Input<String> appName;
  /// Policy that defines circuit breaker conditions
  final pulumi.Input<CircuitBreakerPolicy>? circuitBreakerPolicy;
  /// Defines parameters for http connection pooling
  final pulumi.Input<HttpConnectionPool>? httpConnectionPool;
  /// Policy that defines http request retry conditions
  final pulumi.Input<HttpRetryPolicy>? httpRetryPolicy;
  /// Name of the resiliency policy.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Defines parameters for tcp connection pooling
  final pulumi.Input<TcpConnectionPool>? tcpConnectionPool;
  /// Policy that defines tcp request retry conditions
  final pulumi.Input<TcpRetryPolicy>? tcpRetryPolicy;
  /// Policy to set request timeouts
  final pulumi.Input<TimeoutPolicy>? timeoutPolicy;

  /// Creates a new [AppResiliencyArgs].
  /// [appName] Name of the Container App.
  /// [circuitBreakerPolicy] Policy that defines circuit breaker conditions
  /// [httpConnectionPool] Defines parameters for http connection pooling
  /// [httpRetryPolicy] Policy that defines http request retry conditions
  /// [name] Name of the resiliency policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tcpConnectionPool] Defines parameters for tcp connection pooling
  /// [tcpRetryPolicy] Policy that defines tcp request retry conditions
  /// [timeoutPolicy] Policy to set request timeouts
  AppResiliencyArgs({
    required this.appName,
    this.circuitBreakerPolicy,
    this.httpConnectionPool,
    this.httpRetryPolicy,
    this.name,
    required this.resourceGroupName,
    this.tcpConnectionPool,
    this.tcpRetryPolicy,
    this.timeoutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'circuitBreakerPolicy': ?pulumi.Input.mapOptionalInputValue<CircuitBreakerPolicy, Map<String, dynamic>>(circuitBreakerPolicy, (value) => value.toMap()),
      'httpConnectionPool': ?pulumi.Input.mapOptionalInputValue<HttpConnectionPool, Map<String, dynamic>>(httpConnectionPool, (value) => value.toMap()),
      'httpRetryPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRetryPolicy, Map<String, dynamic>>(httpRetryPolicy, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tcpConnectionPool': ?pulumi.Input.mapOptionalInputValue<TcpConnectionPool, Map<String, dynamic>>(tcpConnectionPool, (value) => value.toMap()),
      'tcpRetryPolicy': ?pulumi.Input.mapOptionalInputValue<TcpRetryPolicy, Map<String, dynamic>>(tcpRetryPolicy, (value) => value.toMap()),
      'timeoutPolicy': ?pulumi.Input.mapOptionalInputValue<TimeoutPolicy, Map<String, dynamic>>(timeoutPolicy, (value) => value.toMap()),
    };
  }

  factory AppResiliencyArgs.fromMap(Map<String, dynamic> map) {
    return AppResiliencyArgs(
      appName: (map['appName'] as String).input(),
      circuitBreakerPolicy: map['circuitBreakerPolicy'] == null ? null : (CircuitBreakerPolicy.fromMap((map['circuitBreakerPolicy'] as Map).cast<String, dynamic>())).input(),
      httpConnectionPool: map['httpConnectionPool'] == null ? null : (HttpConnectionPool.fromMap((map['httpConnectionPool'] as Map).cast<String, dynamic>())).input(),
      httpRetryPolicy: map['httpRetryPolicy'] == null ? null : (HttpRetryPolicy.fromMap((map['httpRetryPolicy'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tcpConnectionPool: map['tcpConnectionPool'] == null ? null : (TcpConnectionPool.fromMap((map['tcpConnectionPool'] as Map).cast<String, dynamic>())).input(),
      tcpRetryPolicy: map['tcpRetryPolicy'] == null ? null : (TcpRetryPolicy.fromMap((map['tcpRetryPolicy'] as Map).cast<String, dynamic>())).input(),
      timeoutPolicy: map['timeoutPolicy'] == null ? null : (TimeoutPolicy.fromMap((map['timeoutPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

