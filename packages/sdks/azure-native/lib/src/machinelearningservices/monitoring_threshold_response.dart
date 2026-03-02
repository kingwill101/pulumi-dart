// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringThresholdResponse {
  /// The threshold value. If null, the set default is dependent on the metric type.
  final pulumi.Input<double>? value;

  /// Creates a new [MonitoringThresholdResponse].
  /// [value] The threshold value. If null, the set default is dependent on the metric type.
  MonitoringThresholdResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MonitoringThresholdResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringThresholdResponse(
      value: map['value'] == null ? null : (map['value'] as double).input(),
    );
  }
}

