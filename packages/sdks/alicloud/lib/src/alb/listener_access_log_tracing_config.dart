// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerAccessLogTracingConfig {
  /// Xtrace Function. Valid values: `true`, `false`. Default Value: `false`.
  ///
  /// &gt; **NOTE:**  Only Instances outside the Security Group to Access the Log Switch `accesslogenabled` Open, in Order to Set This Parameter to the value `true`.
  final pulumi.Input<bool> tracingEnabled;
  /// Xtrace Sampling Rate. Value: 1~10000. `tracingenabled` valued True When Effective.
  final pulumi.Input<int>? tracingSample;
  /// Xtrace Type Value Is `Zipkin`.
  ///
  /// &gt; **NOTE:**  `tracingenabled` valued True When Effective.
  final pulumi.Input<String>? tracingType;

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
      tracingEnabled: pulumi.Input.fromValue(map['tracingEnabled'] as bool),
      tracingSample: (() { final guardedValue = map['tracingSample']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tracingType: (() { final guardedValue = map['tracingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

