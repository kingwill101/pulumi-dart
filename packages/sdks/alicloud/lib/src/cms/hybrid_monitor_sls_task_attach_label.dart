// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HybridMonitorSlsTaskAttachLabel {
  /// The tag key of the metric.
  final pulumi.Input<String>? name;

  /// The tag value of the metric.
  final pulumi.Input<String>? value;

  /// Creates a new [HybridMonitorSlsTaskAttachLabel].
  /// [name] The tag key of the metric.
  /// [value] The tag value of the metric.
  HybridMonitorSlsTaskAttachLabel({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory HybridMonitorSlsTaskAttachLabel.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskAttachLabel(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
