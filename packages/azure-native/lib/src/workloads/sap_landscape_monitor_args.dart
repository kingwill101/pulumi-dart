// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_landscape_monitor_metric_thresholds.dart';
import 'sap_landscape_monitor_properties_grouping.dart';

/// {@template pulumi_workloads_sap_landscape_monitor_args_doc}
/// The set of arguments for SapLandscapeMonitor.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_landscape_monitor_args_doc}
class SapLandscapeMonitorArgs {
  /// Gets or sets the SID groupings by landscape and Environment.
  final pulumi.Input<SapLandscapeMonitorPropertiesGrouping>? grouping;
  /// Name of the SAP monitor resource.
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the list Top Metric Thresholds for SAP Landscape Monitor Dashboard
  final pulumi.Input<List<SapLandscapeMonitorMetricThresholds>>? topMetricsThresholds;

  /// Creates a new [SapLandscapeMonitorArgs].
  /// [grouping] Gets or sets the SID groupings by landscape and Environment.
  /// [monitorName] Name of the SAP monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topMetricsThresholds] Gets or sets the list Top Metric Thresholds for SAP Landscape Monitor Dashboard
  SapLandscapeMonitorArgs({
    SapLandscapeMonitorPropertiesGrouping? grouping,
    required String monitorName,
    required String resourceGroupName,
    List<SapLandscapeMonitorMetricThresholds>? topMetricsThresholds,
  }) :
      grouping = pulumi.Input.asOptionalInput<SapLandscapeMonitorPropertiesGrouping>(grouping),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topMetricsThresholds = pulumi.Input.asOptionalInput<List<SapLandscapeMonitorMetricThresholds>>(topMetricsThresholds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grouping': ?pulumi.Input.mapOptionalInputValue<SapLandscapeMonitorPropertiesGrouping, Map<String, dynamic>>(grouping, (value) => value.toMap()),
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
      'topMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<List<SapLandscapeMonitorMetricThresholds>, List<Map<String, dynamic>>>(topMetricsThresholds, (value) => pulumi.Input.encodeList<SapLandscapeMonitorMetricThresholds, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SapLandscapeMonitorArgs.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorArgs(
      grouping: map['grouping'] == null ? null : SapLandscapeMonitorPropertiesGrouping.fromMap((map['grouping'] as Map).cast<String, dynamic>()),
      monitorName: map['monitorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topMetricsThresholds: map['topMetricsThresholds'] == null ? null : pulumi.Input.decodeList<SapLandscapeMonitorMetricThresholds>(map['topMetricsThresholds'], (value) => SapLandscapeMonitorMetricThresholds.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

