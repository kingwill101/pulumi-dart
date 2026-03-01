// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_kpi_args_doc}
/// Arguments for getKpi.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_kpi_args_doc}
class GetKpiArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the KPI.
  final pulumi.Input<String> kpiName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKpiArgs].
  /// [hubName] The name of the hub.
  /// [kpiName] The name of the KPI.
  /// [resourceGroupName] The name of the resource group.
  GetKpiArgs({
    required String hubName,
    required String kpiName,
    required String resourceGroupName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      kpiName = pulumi.Input.asInput<String>(kpiName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'kpiName': kpiName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKpiArgs.fromMap(Map<String, dynamic> map) {
    return GetKpiArgs(
      hubName: map['hubName'] as String,
      kpiName: map['kpiName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

