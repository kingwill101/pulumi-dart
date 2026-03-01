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
    pulumi.Output<List<KpiAlias>>? aliases,
    required pulumi.Output<CalculationWindowTypes> calculationWindow,
    pulumi.Output<String>? calculationWindowFieldName,
    pulumi.Output<Map<String, String>>? description,
    pulumi.Output<Map<String, String>>? displayName,
    required pulumi.Output<EntityTypes> entityType,
    required pulumi.Output<String> entityTypeName,
    required pulumi.Output<String> expression,
    pulumi.Output<List<KpiExtract>>? extracts,
    pulumi.Output<String>? filter,
    required pulumi.Output<KpiFunctions> function,
    pulumi.Output<List<String>>? groupBy,
    required pulumi.Output<String> hubName,
    pulumi.Output<String>? kpiName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<KpiThresholds>? thresHolds,
    pulumi.Output<String>? unit,
  }) :
      aliases = pulumi.Input.asOptionalInput<List<KpiAlias>>(aliases),
      calculationWindow = pulumi.Input.asInput<CalculationWindowTypes>(calculationWindow),
      calculationWindowFieldName = pulumi.Input.asOptionalInput<String>(calculationWindowFieldName),
      description = pulumi.Input.asOptionalInput<Map<String, String>>(description),
      displayName = pulumi.Input.asOptionalInput<Map<String, String>>(displayName),
      entityType = pulumi.Input.asInput<EntityTypes>(entityType),
      entityTypeName = pulumi.Input.asInput<String>(entityTypeName),
      expression = pulumi.Input.asInput<String>(expression),
      extracts = pulumi.Input.asOptionalInput<List<KpiExtract>>(extracts),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      function = pulumi.Input.asInput<KpiFunctions>(function),
      groupBy = pulumi.Input.asOptionalInput<List<String>>(groupBy),
      hubName = pulumi.Input.asInput<String>(hubName),
      kpiName = pulumi.Input.asOptionalInput<String>(kpiName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      thresHolds = pulumi.Input.asOptionalInput<KpiThresholds>(thresHolds),
      unit = pulumi.Input.asOptionalInput<String>(unit);

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
      aliases: map['aliases'] == null ? null : pulumi.Output.create<List<KpiAlias>>(pulumi.Input.decodeList<KpiAlias>(map['aliases'], (value) => KpiAlias.fromMap((value as Map).cast<String, dynamic>()))),
      calculationWindow: pulumi.Output.create<CalculationWindowTypes>(CalculationWindowTypes.fromValue(map['calculationWindow'] as String)),
      calculationWindowFieldName: map['calculationWindowFieldName'] == null ? null : pulumi.Output.create<String>(map['calculationWindowFieldName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<Map<String, String>>((map['description'] as Map).cast<String, String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<Map<String, String>>((map['displayName'] as Map).cast<String, String>()),
      entityType: pulumi.Output.create<EntityTypes>(EntityTypes.fromValue(map['entityType'] as String)),
      entityTypeName: pulumi.Output.create<String>(map['entityTypeName'] as String),
      expression: pulumi.Output.create<String>(map['expression'] as String),
      extracts: map['extracts'] == null ? null : pulumi.Output.create<List<KpiExtract>>(pulumi.Input.decodeList<KpiExtract>(map['extracts'], (value) => KpiExtract.fromMap((value as Map).cast<String, dynamic>()))),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      function: pulumi.Output.create<KpiFunctions>(KpiFunctions.fromValue(map['function'] as String)),
      groupBy: map['groupBy'] == null ? null : pulumi.Output.create<List<String>>((map['groupBy'] as List).cast<String>()),
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      kpiName: map['kpiName'] == null ? null : pulumi.Output.create<String>(map['kpiName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      thresHolds: map['thresHolds'] == null ? null : pulumi.Output.create<KpiThresholds>(KpiThresholds.fromMap((map['thresHolds'] as Map).cast<String, dynamic>())),
      unit: map['unit'] == null ? null : pulumi.Output.create<String>(map['unit'] as String),
    );
  }
}

