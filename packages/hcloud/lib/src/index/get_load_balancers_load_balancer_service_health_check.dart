// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer_service_health_check_http.dart';

class GetLoadBalancersLoadBalancerServiceHealthCheck {
  final List<GetLoadBalancersLoadBalancerServiceHealthCheckHttp> https;
  final int interval;
  final int port;
  final String protocol;
  final int retries;
  final int timeout;

  /// Creates a new [GetLoadBalancersLoadBalancerServiceHealthCheck].
  /// [https] Required.
  /// [interval] Required.
  /// [port] Required.
  /// [protocol] Required.
  /// [retries] Required.
  /// [timeout] Required.
  GetLoadBalancersLoadBalancerServiceHealthCheck({
    required this.https,
    required this.interval,
    required this.port,
    required this.protocol,
    required this.retries,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'https': pulumi.Input.encodeList<GetLoadBalancersLoadBalancerServiceHealthCheckHttp, Map<String, dynamic>>(https, (value) => value.toMap()),
      'interval': interval,
      'port': port,
      'protocol': protocol,
      'retries': retries,
      'timeout': timeout,
    };
  }

  factory GetLoadBalancersLoadBalancerServiceHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerServiceHealthCheck(
      https: pulumi.Input.decodeList<GetLoadBalancersLoadBalancerServiceHealthCheckHttp>(map['https'], (value) => GetLoadBalancersLoadBalancerServiceHealthCheckHttp.fromMap((value as Map).cast<String, dynamic>())),
      interval: map['interval'] as int,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      retries: map['retries'] as int,
      timeout: map['timeout'] as int,
    );
  }
}

