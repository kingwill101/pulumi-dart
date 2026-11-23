// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_protocol.dart';

class TargetGroupHealthCheck {
  /// The gRPC codes to use when checking for a response from a target. Values can be comma-separated
  /// individual values (e.g., "12,13") or a range of values (e.g., "12-15"). Once the value has been
  /// set, removing it has no effect. To unset it, set it to an empty string `""`.
  ///
  /// Values can be between `0` and `99`.
  ///
  /// Default - `12`.
  final pulumi.Input<String?>? healthyGrpcCodes;
  /// The HTTP codes to use when checking for a successful response from a target. Values can be
  /// comma-separated individual values (e.g., "200,202") or a range of values (e.g., "200-299").
  /// Once the value has been set, removing it has no effect. To unset it, set it to an empty string
  /// `""`. Values can be between `200` and `499`
  ///
  /// Default - 200
  final pulumi.Input<String?>? healthyHttpCodes;
  /// Number of consecutive health check successes required before considering a target healthy. The
  /// range is 2-10.
  ///
  /// Default - 3
  final pulumi.Input<double?>? healthyThreshold;
  /// Approximate amount of time, in seconds, between health checks of an individual target. The
  /// range is 5-300.
  ///
  /// Default - 30.
  final pulumi.Input<double?>? intervalSeconds;
  /// Destination for the health check request. Once the value has been set, removing it has no
  /// effect. To unset it, set it to an empty string `""`.
  ///
  /// Default - `/` for HTTP/1 and HTTP/2, or `/AWS.ALB/healthcheck` for gRPC.
  final pulumi.Input<String?>? path;
  /// The port the load balancer uses when performing health checks on targets. Valid values are a
  /// valid port number between `1` and `65535`.
  ///
  /// Default - By default (when this is undefined) it uses the same port as the target group
  final pulumi.Input<double?>? port;
  /// Protocol the load balancer uses when performing health checks on targets. Must be one of
  /// `HTTP`, or `HTTPS`.
  ///
  /// Default - ApplicationProtocol.HTTP.
  final pulumi.Input<ApplicationProtocol?>? protocol;
  /// Amount of time in seconds to wait before a health check times out. Range: 2-120 seconds.
  ///
  /// Default - 5 seconds
  final pulumi.Input<double?>? timeoutSeconds;
  /// Number of consecutive health check failures required before considering a target unhealthy. The
  /// range is 2-10.
  ///
  /// Default - 3.
  final pulumi.Input<double?>? unhealthyThreshold;

  /// Creates a new [TargetGroupHealthCheck].
  /// [healthyGrpcCodes] The gRPC codes to use when checking for a response from a target. Values can be comma-separated
  /// [healthyHttpCodes] The HTTP codes to use when checking for a successful response from a target. Values can be
  /// [healthyThreshold] Number of consecutive health check successes required before considering a target healthy. The
  /// [intervalSeconds] Approximate amount of time, in seconds, between health checks of an individual target. The
  /// [path] Destination for the health check request. Once the value has been set, removing it has no
  /// [port] The port the load balancer uses when performing health checks on targets. Valid values are a
  /// [protocol] Protocol the load balancer uses when performing health checks on targets. Must be one of
  /// [timeoutSeconds] Amount of time in seconds to wait before a health check times out. Range: 2-120 seconds.
  /// [unhealthyThreshold] Number of consecutive health check failures required before considering a target unhealthy. The
  const TargetGroupHealthCheck({
    this.healthyGrpcCodes,
    this.healthyHttpCodes,
    this.healthyThreshold,
    this.intervalSeconds,
    this.path,
    this.port,
    this.protocol,
    this.timeoutSeconds,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthyGrpcCodes': ?healthyGrpcCodes,
      'healthyHttpCodes': ?healthyHttpCodes,
      'healthyThreshold': ?healthyThreshold,
      'intervalSeconds': ?intervalSeconds,
      'path': ?path,
      'port': ?port,
      'protocol': ?pulumi.Input.mapOptionalInputValue<ApplicationProtocol, String>(protocol, (value) => value.wireValue),
      'timeoutSeconds': ?timeoutSeconds,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory TargetGroupHealthCheck.fromMap(Map<String, dynamic> map) {
    return TargetGroupHealthCheck(
      healthyGrpcCodes: (() { final guardedValue = map['healthyGrpcCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthyHttpCodes: (() { final guardedValue = map['healthyHttpCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationProtocol.fromValue(guardedValue as String)); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
