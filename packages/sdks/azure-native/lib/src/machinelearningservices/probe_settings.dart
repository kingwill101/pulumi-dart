// ignore_for_file: unused_element, unnecessary_cast


/// Deployment container liveness/readiness probe configuration.
class ProbeSettings {
  /// The number of failures to allow before returning an unhealthy status.
  final int? failureThreshold;
  /// The delay before the first probe in ISO 8601 format.
  final String? initialDelay;
  /// The length of time between probes in ISO 8601 format.
  final String? period;
  /// The number of successful probes before returning a healthy status.
  final int? successThreshold;
  /// The probe timeout in ISO 8601 format.
  final String? timeout;

  /// Creates a new [ProbeSettings].
  /// [failureThreshold] The number of failures to allow before returning an unhealthy status.
  /// [initialDelay] The delay before the first probe in ISO 8601 format.
  /// [period] The length of time between probes in ISO 8601 format.
  /// [successThreshold] The number of successful probes before returning a healthy status.
  /// [timeout] The probe timeout in ISO 8601 format.
  ProbeSettings({
    this.failureThreshold,
    this.initialDelay,
    this.period,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'initialDelay': ?initialDelay,
      'period': ?period,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory ProbeSettings.fromMap(Map<String, dynamic> map) {
    return ProbeSettings(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      initialDelay: map['initialDelay'] == null ? null : map['initialDelay'] as String,
      period: map['period'] == null ? null : map['period'] as String,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

