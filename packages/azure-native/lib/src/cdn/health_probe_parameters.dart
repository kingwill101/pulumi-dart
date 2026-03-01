// ignore_for_file: unused_element, unnecessary_cast

import 'health_probe_request_type.dart';
import 'probe_protocol.dart';

/// The JSON object that contains the properties to send health probes to origin.
class HealthProbeParameters {
  /// The number of seconds between health probes.Default is 240sec.
  final int? probeIntervalInSeconds;
  /// The path relative to the origin that is used to determine the health of the origin.
  final String? probePath;
  /// Protocol to use for health probe.
  final ProbeProtocol? probeProtocol;
  /// The type of health probe request that is made.
  final HealthProbeRequestType? probeRequestType;

  /// Creates a new [HealthProbeParameters].
  /// [probeIntervalInSeconds] The number of seconds between health probes.Default is 240sec.
  /// [probePath] The path relative to the origin that is used to determine the health of the origin.
  /// [probeProtocol] Protocol to use for health probe.
  /// [probeRequestType] The type of health probe request that is made.
  HealthProbeParameters({
    this.probeIntervalInSeconds,
    this.probePath,
    this.probeProtocol,
    this.probeRequestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'probeIntervalInSeconds': ?probeIntervalInSeconds,
      'probePath': ?probePath,
      'probeProtocol': ?probeProtocol == null ? null : probeProtocol!.value,
      'probeRequestType': ?probeRequestType == null ? null : probeRequestType!.value,
    };
  }

  factory HealthProbeParameters.fromMap(Map<String, dynamic> map) {
    return HealthProbeParameters(
      probeIntervalInSeconds: map['probeIntervalInSeconds'] == null ? null : map['probeIntervalInSeconds'] as int,
      probePath: map['probePath'] == null ? null : map['probePath'] as String,
      probeProtocol: map['probeProtocol'] == null ? null : ProbeProtocol.fromValue(map['probeProtocol'] as String),
      probeRequestType: map['probeRequestType'] == null ? null : HealthProbeRequestType.fromValue(map['probeRequestType'] as String),
    );
  }
}

