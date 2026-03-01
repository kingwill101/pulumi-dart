// ignore_for_file: unused_element, unnecessary_cast


/// The JSON object that contains the properties to send health probes to origin.
class HealthProbeParametersResponse {
  /// The number of seconds between health probes.Default is 240sec.
  final int? probeIntervalInSeconds;
  /// The path relative to the origin that is used to determine the health of the origin.
  final String? probePath;
  /// Protocol to use for health probe.
  final String? probeProtocol;
  /// The type of health probe request that is made.
  final String? probeRequestType;

  /// Creates a new [HealthProbeParametersResponse].
  /// [probeIntervalInSeconds] The number of seconds between health probes.Default is 240sec.
  /// [probePath] The path relative to the origin that is used to determine the health of the origin.
  /// [probeProtocol] Protocol to use for health probe.
  /// [probeRequestType] The type of health probe request that is made.
  HealthProbeParametersResponse({
    this.probeIntervalInSeconds,
    this.probePath,
    this.probeProtocol,
    this.probeRequestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'probeIntervalInSeconds': ?probeIntervalInSeconds,
      'probePath': ?probePath,
      'probeProtocol': ?probeProtocol,
      'probeRequestType': ?probeRequestType,
    };
  }

  factory HealthProbeParametersResponse.fromMap(Map<String, dynamic> map) {
    return HealthProbeParametersResponse(
      probeIntervalInSeconds: map['probeIntervalInSeconds'] == null ? null : map['probeIntervalInSeconds'] as int,
      probePath: map['probePath'] == null ? null : map['probePath'] as String,
      probeProtocol: map['probeProtocol'] == null ? null : map['probeProtocol'] as String,
      probeRequestType: map['probeRequestType'] == null ? null : map['probeRequestType'] as String,
    );
  }
}

