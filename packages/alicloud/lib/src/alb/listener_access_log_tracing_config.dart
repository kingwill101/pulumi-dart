// ignore_for_file: unused_element, unnecessary_cast


class ListenerAccessLogTracingConfig {
  /// Xtrace Function. Valid values: `true`, `false`. Default Value: `false`.
  ///
  /// > **NOTE:**  Only Instances outside the Security Group to Access the Log Switch `accesslogenabled` Open, in Order to Set This Parameter to the value `true`.
  final bool tracingEnabled;
  /// Xtrace Sampling Rate. Value: 1~10000. `tracingenabled` valued True When Effective.
  final int? tracingSample;
  /// Xtrace Type Value Is `Zipkin`.
  ///
  /// > **NOTE:**  `tracingenabled` valued True When Effective.
  final String? tracingType;

  /// Creates a new [ListenerAccessLogTracingConfig].
  /// [tracingEnabled] Xtrace Function. Valid values: `true`, `false`. Default Value: `false`.
  /// [tracingSample] Xtrace Sampling Rate. Value: 1~10000. `tracingenabled` valued True When Effective.
  /// [tracingType] Xtrace Type Value Is `Zipkin`.
  ListenerAccessLogTracingConfig({
    required this.tracingEnabled,
    this.tracingSample,
    this.tracingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tracingEnabled': tracingEnabled,
      'tracingSample': ?tracingSample,
      'tracingType': ?tracingType,
    };
  }

  factory ListenerAccessLogTracingConfig.fromMap(Map<String, dynamic> map) {
    return ListenerAccessLogTracingConfig(
      tracingEnabled: map['tracingEnabled'] as bool,
      tracingSample: map['tracingSample'] == null ? null : map['tracingSample'] as int,
      tracingType: map['tracingType'] == null ? null : map['tracingType'] as String,
    );
  }
}

