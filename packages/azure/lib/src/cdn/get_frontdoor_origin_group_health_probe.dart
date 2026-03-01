// ignore_for_file: unused_element, unnecessary_cast


class GetFrontdoorOriginGroupHealthProbe {
  /// Specifies the number of seconds between health probes.
  final int intervalInSeconds;
  /// Specifies the path relative to the origin that is used to determine the health of the origin.
  final String path;
  /// Specifies the protocol to use for health probe.
  final String protocol;
  /// Specifies the type of health probe request that is made.
  final String requestType;

  /// Creates a new [GetFrontdoorOriginGroupHealthProbe].
  /// [intervalInSeconds] Specifies the number of seconds between health probes.
  /// [path] Specifies the path relative to the origin that is used to determine the health of the origin.
  /// [protocol] Specifies the protocol to use for health probe.
  /// [requestType] Specifies the type of health probe request that is made.
  GetFrontdoorOriginGroupHealthProbe({
    required this.intervalInSeconds,
    required this.path,
    required this.protocol,
    required this.requestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInSeconds': intervalInSeconds,
      'path': path,
      'protocol': protocol,
      'requestType': requestType,
    };
  }

  factory GetFrontdoorOriginGroupHealthProbe.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorOriginGroupHealthProbe(
      intervalInSeconds: map['intervalInSeconds'] as int,
      path: map['path'] as String,
      protocol: map['protocol'] as String,
      requestType: map['requestType'] as String,
    );
  }
}

