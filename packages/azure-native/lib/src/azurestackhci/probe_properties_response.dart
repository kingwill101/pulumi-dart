// ignore_for_file: unused_element, unnecessary_cast


/// properties for LoadBalancer health probes
class ProbePropertiesResponse {
  /// Probe interval in seconds (5-300) default 15
  final int? intervalInSeconds;
  /// number of consecutive probe failures before marking unhealthy (1-20) default 2
  final int? numberOfProbes;
  /// Port on the backend address to probe
  final int port;
  /// Protocol for this probe: Can be Tcp or Http - Diverges from Azure where Https is also an option
  final String protocol;
  /// For http probes, specify the request path e.g. /health
  final String? requestPath;

  /// Creates a new [ProbePropertiesResponse].
  /// [intervalInSeconds] Probe interval in seconds (5-300) default 15
  /// [numberOfProbes] number of consecutive probe failures before marking unhealthy (1-20) default 2
  /// [port] Port on the backend address to probe
  /// [protocol] Protocol for this probe: Can be Tcp or Http - Diverges from Azure where Https is also an option
  /// [requestPath] For http probes, specify the request path e.g. /health
  ProbePropertiesResponse({
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
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      numberOfProbes: map['numberOfProbes'] == null ? null : map['numberOfProbes'] as int,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      requestPath: map['requestPath'] == null ? null : map['requestPath'] as String,
    );
  }
}

