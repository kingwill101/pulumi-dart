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
      appName: pulumi.Input.fromValue(map['appName'] as String),
      circuitBreakerPolicy: (() { final guardedValue = map['circuitBreakerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CircuitBreakerPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpConnectionPool: (() { final guardedValue = map['httpConnectionPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpConnectionPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpRetryPolicy: (() { final guardedValue = map['httpRetryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tcpConnectionPool: (() { final guardedValue = map['tcpConnectionPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TcpConnectionPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcpRetryPolicy: (() { final guardedValue = map['tcpRetryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TcpRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutPolicy: (() { final guardedValue = map['timeoutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimeoutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

