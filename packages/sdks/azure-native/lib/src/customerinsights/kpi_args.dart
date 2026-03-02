// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'calculation_window_types.dart';
import 'entity_types.dart';
import 'kpi_alias.dart';
import 'kpi_extract.dart';
import 'kpi_functions.dart';
import 'kpi_thresholds.dart';

/// {@template pulumi_customerinsights_kpi_args_doc}
/// The set of arguments for Kpi.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_kpi_args_doc}
class KpiArgs {
  /// The aliases.
  final pulumi.Input<List<KpiAlias>>? aliases;
  /// The calculation window.
  final pulumi.Input<CalculationWindowTypes> calculationWindow;
  /// Name of calculation window field.
  final pulumi.Input<String>? calculationWindowFieldName;
  /// Localized description for the KPI.
  final pulumi.Input<Map<String, String>>? description;
  /// Localized display name for the KPI.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The mapping entity type.
  final pulumi.Input<EntityTypes> entityType;
  /// The mapping entity name.
  final pulumi.Input<String> entityTypeName;
  /// The computation expression for the KPI.
  final pulumi.Input<String> expression;
  /// The KPI extracts.
  final pulumi.Input<List<KpiExtract>>? extracts;
  /// The filter expression for the KPI.
  final pulumi.Input<String>? filter;
  /// The computation function for the KPI.
  final pulumi.Input<KpiFunctions> function;
  /// the group by properties for the KPI.
  final pulumi.Input<List<String>>? groupBy;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the KPI.
  final pulumi.Input<String>? kpiName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The KPI thresholds.
  final pulumi.Input<KpiThresholds>? thresHolds;
  /// The unit of measurement for the KPI.
  final pulumi.Input<String>? unit;

  /// Creates a new [KpiArgs].
  /// [aliases] The aliases.
  /// [calculationWindow] The calculation window.
  /// [calculationWindowFieldName] Name of calculation window field.
  /// [description] Localized description for the KPI.
  /// [displayName] Localized display name for the KPI.
  /// [entityType] The mapping entity type.
  /// [entityTypeName] The mapping entity name.
  /// [expression] The computation expression for the KPI.
  /// [extracts] The KPI extracts.
  /// [filter] The filter expression for the KPI.
  /// [function] The computation function for the KPI.
  /// [groupBy] the group by properties for the KPI.
  /// [hubName] The name of the hub.
  /// [kpiName] The name of the KPI.
  /// [resourceGroupName] The name of the resource group.
  /// [thresHolds] The KPI thresholds.
  /// [unit] The unit of measurement for the KPI.
  KpiArgs({
    this.aliases,
    required this.calculationWindow,
    this.calculationWindowFieldName,
    this.description,
    this.displayName,
    required this.entityType,
    required this.entityTypeName,
    required this.expression,
    this.extracts,
    this.filter,
    required this.function,
    this.groupBy,
    required this.hubName,
    this.kpiName,
    required this.resourceGroupName,
    this.thresHolds,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?pulumi.Input.mapOptionalInputValue<List<KpiAlias>, List<Map<String, dynamic>>>(aliases, (value) => pulumi.Input.encodeList<KpiAlias, Map<String, dynamic>>(value, (value) => value.toMap())),
      'calculationWindow': pulumi.Input.mapInputValue<CalculationWindowTypes, String>(calculationWindow, (value) => value.value),
      'calculationWindowFieldName': ?calculationWindowFieldName,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': pulumi.Input.mapInputValue<EntityTypes, String>(entityType, (value) => value.value),
      'entityTypeName': entityTypeName,
      'expression': expression,
      'extracts': ?pulumi.Input.mapOptionalInputValue<List<KpiExtract>, List<Map<String, dynamic>>>(extracts, (value) => pulumi.Input.encodeList<KpiExtract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'function': pulumi.Input.mapInputValue<KpiFunctions, String>(function, (value) => value.value),
      'groupBy': ?groupBy,
      'hubName': hubName,
      'kpiName': ?kpiName,
      'resourceGroupName': resourceGroupName,
      'thresHolds': ?pulumi.Input.mapOptionalInputValue<KpiThresholds, Map<String, dynamic>>(thresHolds, (value) => value.toMap()),
      'unit': ?unit,
    };
  }

  factory KpiArgs.fromMap(Map<String, dynamic> map) {
    return KpiArgs(
      aliases: map['aliases'] == null ? null : (pulumi.Input.decodeList<KpiAlias>(map['aliases']!, (value) => KpiAlias.fromMap((value as Map).cast<String, dynamic>()))).input(),
      calculationWindow: (CalculationWindowTypes.fromValue(map['calculationWindow'] as String)).input(),
      calculationWindowFieldName: map['calculationWindowFieldName'] == null ? null : (map['calculationWindowFieldName']! as String).input(),
      description: map['description'] == null ? null : ((map['description']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName']! as Map).cast<String, String>()).input(),
      entityType: (EntityTypes.fromValue(map['entityType'] as String)).input(),
      entityTypeName: (map['entityTypeName'] as String).input(),
      expression: (map['expression'] as String).input(),
      extracts: map['extracts'] == null ? null : (pulumi.Input.decodeList<KpiExtract>(map['extracts']!, (value) => KpiExtract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      function: (KpiFunctions.fromValue(map['function'] as String)).input(),
      groupBy: map['groupBy'] == null ? null : ((map['groupBy']! as List).cast<String>()).input(),
      hubName: (map['hubName'] as String).input(),
      kpiName: map['kpiName'] == null ? null : (map['kpiName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      thresHolds: map['thresHolds'] == null ? null : (KpiThresholds.fromMap((map['thresHolds']! as Map).cast<String, dynamic>())).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

