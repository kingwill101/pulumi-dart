// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHybridMonitorDatasDataValue {
  /// The timestamp that indicates the time when the metric value is collected. Unit: seconds.
  final pulumi.Input<String> ts;
  /// The value of the monitoring indicator.
  final pulumi.Input<String> value;

  /// Creates a new [GetHybridMonitorDatasDataValue].
  /// [ts] The timestamp that indicates the time when the metric value is collected. Unit: seconds.
  /// [value] The value of the monitoring indicator.
  const GetHybridMonitorDatasDataValue({
    required this.ts,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ts': ts,
      'value': value,
    };
  }

  factory GetHybridMonitorDatasDataValue.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorDatasDataValue(
      ts: pulumi.Input.fromValue(map['ts'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

