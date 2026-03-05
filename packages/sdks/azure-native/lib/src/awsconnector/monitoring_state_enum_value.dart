// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MonitoringStateEnumValue
class MonitoringStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [MonitoringStateEnumValue].
  /// [value] Property value
  MonitoringStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MonitoringStateEnumValue.fromMap(Map<String, dynamic> map) {
    return MonitoringStateEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

