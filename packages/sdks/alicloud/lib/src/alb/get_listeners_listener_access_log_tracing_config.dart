// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListenerAccessLogTracingConfig {
  /// Xtrace Function. Value: True Or False. Default Value: False.
  ///
  /// > **NOTE:** Only Instances outside the Security Group to Access the Log Switch **accesslogenabled** Open, in Order to Set This Parameter to the **True**.
  final pulumi.Input<bool> tracingEnabled;
  /// Xtrace Sampling Rate. Value: **1~10000**.
  ///
  /// > **NOTE:** This attribute is valid when **tracingenabled** is **true**.
  final pulumi.Input<int> tracingSample;
  /// Xtrace Type Value Is **Zipkin**.
  ///
  /// > **NOTE:** This attribute is valid when **tracingenabled** is **true**.
  final pulumi.Input<String> tracingType;

  /// Creates a new [GetListenersListenerAccessLogTracingConfig].
  /// [tracingEnabled] Xtrace Function. Value: True Or False. Default Value: False.
  /// [tracingSample] Xtrace Sampling Rate. Value: **1~10000**.
  /// [tracingType] Xtrace Type Value Is **Zipkin**.
  GetListenersListenerAccessLogTracingConfig({
    required this.tracingEnabled,
    required this.tracingSample,
    required this.tracingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tracingEnabled': tracingEnabled,
      'tracingSample': tracingSample,
      'tracingType': tracingType,
    };
  }

  factory GetListenersListenerAccessLogTracingConfig.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerAccessLogTracingConfig(
      tracingEnabled: (map['tracingEnabled'] as bool).input(),
      tracingSample: (map['tracingSample'] as int).input(),
      tracingType: (map['tracingType'] as String).input(),
    );
  }
}

