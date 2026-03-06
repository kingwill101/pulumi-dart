// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// properties for LoadBalancer health probes
class ProbePropertiesResponse {
  /// Probe interval in seconds (5-300) default 15
  final pulumi.Input<int>? intervalInSeconds;
  /// number of consecutive probe failures before marking unhealthy (1-20) default 2
  final pulumi.Input<int>? numberOfProbes;
  /// Port on the backend address to probe
  final pulumi.Input<int> port;
  /// Protocol for this probe: Can be Tcp or Http - Diverges from Azure where Https is also an option
  final pulumi.Input<String> protocol;
  /// For http probes, specify the request path e.g. /health
  final pulumi.Input<String>? requestPath;

  /// Creates a new [ProbePropertiesResponse].
  /// [intervalInSeconds] Probe interval in seconds (5-300) default 15
  /// [numberOfProbes] number of consecutive probe failures before marking unhealthy (1-20) default 2
  /// [port] Port on the backend address to probe
  /// [protocol] Protocol for this probe: Can be Tcp or Http - Diverges from Azure where Https is also an option
  /// [requestPath] For http probes, specify the request path e.g. /health
  const ProbePropertiesResponse({
    this.intervalInSeconds,
    this.numberOfProbes,
    required this.port,
    required this.protocol,
    this.requestPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInSeconds': ?intervalInSeconds,
      'numberOfProbes': ?numberOfProbes,
      'port': port,
      'protocol': protocol,
      'requestPath': ?requestPath,
    };
  }

  factory ProbePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProbePropertiesResponse(
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberOfProbes: (() { final guardedValue = map['numberOfProbes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      requestPath: (() { final guardedValue = map['requestPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

