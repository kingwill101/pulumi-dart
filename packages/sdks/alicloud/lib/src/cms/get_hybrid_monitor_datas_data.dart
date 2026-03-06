// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_datas_data_label.dart';
import 'get_hybrid_monitor_datas_data_value.dart';

class GetHybridMonitorDatasData {
  /// The label of the time dimension.
  final pulumi.Input<List<GetHybridMonitorDatasDataLabel>> labels;
  /// The name of the monitoring indicator.
  final pulumi.Input<String> metricName;
  /// The metric values that are collected at different timestamps.
  final pulumi.Input<List<GetHybridMonitorDatasDataValue>> values;

  /// Creates a new [GetHybridMonitorDatasData].
  /// [labels] The label of the time dimension.
  /// [metricName] The name of the monitoring indicator.
  /// [values] The metric values that are collected at different timestamps.
  const GetHybridMonitorDatasData({
    required this.labels,
    required this.metricName,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': pulumi.Input.mapInputValue<List<GetHybridMonitorDatasDataLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<GetHybridMonitorDatasDataLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': metricName,
      'values': pulumi.Input.mapInputValue<List<GetHybridMonitorDatasDataValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<GetHybridMonitorDatasDataValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetHybridMonitorDatasData.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorDatasData(
      labels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHybridMonitorDatasDataLabel>(map['labels']!, (value) => GetHybridMonitorDatasDataLabel.fromMap((value as Map).cast<String, dynamic>()))),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHybridMonitorDatasDataValue>(map['values']!, (value) => GetHybridMonitorDatasDataValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

