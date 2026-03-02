// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringThreshold {
  /// The threshold value. If null, the set default is dependent on the metric type.
  final pulumi.Input<double>? value;

  /// Creates a new [MonitoringThreshold].
  /// [value] The threshold value. If null, the set default is dependent on the metric type.
  MonitoringThreshold({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MonitoringThreshold.fromMap(Map<String, dynamic> map) {
    return MonitoringThreshold(
      value: map['value'] == null ? null : (map['value'] as double).input(),
    );
  }
}

