// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The JSON object that contains the properties to send health probes to origin.
class HealthProbeParametersResponse {
  /// The number of seconds between health probes.Default is 240sec.
  final pulumi.Input<int>? probeIntervalInSeconds;

  /// The path relative to the origin that is used to determine the health of the origin.
  final pulumi.Input<String>? probePath;

  /// Protocol to use for health probe.
  final pulumi.Input<String>? probeProtocol;

  /// The type of health probe request that is made.
  final pulumi.Input<String>? probeRequestType;

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
      probeIntervalInSeconds: (() {
        final guardedValue = map['probeIntervalInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      probePath: (() {
        final guardedValue = map['probePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      probeProtocol: (() {
        final guardedValue = map['probeProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      probeRequestType: (() {
        final guardedValue = map['probeRequestType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
