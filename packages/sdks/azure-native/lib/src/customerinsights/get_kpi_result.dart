// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kpi_alias_response.dart';
import 'kpi_extract_response.dart';
import 'kpi_group_by_metadata_response.dart';
import 'kpi_participant_profiles_metadata_response.dart';
import 'kpi_thresholds_response.dart';

/// Result data returned by getKpi.
class GetKpiResult {
  /// The aliases.
  final List<KpiAliasResponse>? aliases;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The calculation window.
  final String calculationWindow;
  /// Name of calculation window field.
  final String? calculationWindowFieldName;
  /// Localized description for the KPI.
  final Map<String, String>? description;
  /// Localized display name for the KPI.
  final Map<String, String>? displayName;
  /// The mapping entity type.
  final String entityType;
  /// The mapping entity name.
  final String entityTypeName;
  /// The computation expression for the KPI.
  final String expression;
  /// The KPI extracts.
  final List<KpiExtractResponse>? extracts;
  /// The filter expression for the KPI.
  final String? filter;
  /// The computation function for the KPI.
  final String function;
  /// the group by properties for the KPI.
  final List<String>? groupBy;
  /// The KPI GroupByMetadata.
  final List<KpiGroupByMetadataResponse> groupByMetadata;
  /// Resource ID.
  final String id;
  /// The KPI name.
  final String kpiName;
  /// Resource name.
  final String name;
  /// The participant profiles.
  final List<KpiParticipantProfilesMetadataResponse> participantProfilesMetadata;
  /// Provisioning state.
  final String provisioningState;
  /// The hub name.
  final String tenantId;
  /// The KPI thresholds.
  final KpiThresholdsResponse? thresHolds;
  /// Resource type.
  final String type;
  /// The unit of measurement for the KPI.
  final String? unit;

  /// Creates a new [GetKpiResult].
  /// [aliases] The aliases.
  /// [azureApiVersion] The Azure API version of the resource.
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
  /// [groupByMetadata] The KPI GroupByMetadata.
  /// [id] Resource ID.
  /// [kpiName] The KPI name.
  /// [name] Resource name.
  /// [participantProfilesMetadata] The participant profiles.
  /// [provisioningState] Provisioning state.
  /// [tenantId] The hub name.
  /// [thresHolds] The KPI thresholds.
  /// [type] Resource type.
  /// [unit] The unit of measurement for the KPI.
  const GetKpiResult({
    this.aliases,
    required this.azureApiVersion,
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
    required this.groupByMetadata,
    required this.id,
    required this.kpiName,
    required this.name,
    required this.participantProfilesMetadata,
    required this.provisioningState,
    required this.tenantId,
    this.thresHolds,
    required this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?(() { final guardedValue = aliases; if (guardedValue == null) return null; return pulumi.Input.encodeList<KpiAliasResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'calculationWindow': calculationWindow,
      'calculationWindowFieldName': ?calculationWindowFieldName,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': entityType,
      'entityTypeName': entityTypeName,
      'expression': expression,
      'extracts': ?(() { final guardedValue = extracts; if (guardedValue == null) return null; return pulumi.Input.encodeList<KpiExtractResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter,
      'function': function,
      'groupBy': ?groupBy,
      'groupByMetadata': pulumi.Input.encodeList<KpiGroupByMetadataResponse, Map<String, dynamic>>(groupByMetadata, (value) => value.toMap()),
      'id': id,
      'kpiName': kpiName,
      'name': name,
      'participantProfilesMetadata': pulumi.Input.encodeList<KpiParticipantProfilesMetadataResponse, Map<String, dynamic>>(participantProfilesMetadata, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'tenantId': tenantId,
      'thresHolds': ?thresHolds?.toMap(),
      'type': type,
      'unit': ?unit,
    };
  }

  factory GetKpiResult.fromMap(Map<String, dynamic> map) {
    return GetKpiResult(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KpiAliasResponse>(guardedValue, (value) => KpiAliasResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      calculationWindow: map['calculationWindow'] as String,
      calculationWindowFieldName: (() { final guardedValue = map['calculationWindowFieldName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      entityType: map['entityType'] as String,
      entityTypeName: map['entityTypeName'] as String,
      expression: map['expression'] as String,
      extracts: (() { final guardedValue = map['extracts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KpiExtractResponse>(guardedValue, (value) => KpiExtractResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      function: map['function'] as String,
      groupBy: (() { final guardedValue = map['groupBy']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      groupByMetadata: pulumi.Input.decodeList<KpiGroupByMetadataResponse>(map['groupByMetadata']!, (value) => KpiGroupByMetadataResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kpiName: map['kpiName'] as String,
      name: map['name'] as String,
      participantProfilesMetadata: pulumi.Input.decodeList<KpiParticipantProfilesMetadataResponse>(map['participantProfilesMetadata']!, (value) => KpiParticipantProfilesMetadataResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      tenantId: map['tenantId'] as String,
      thresHolds: (() { final guardedValue = map['thresHolds']; if (guardedValue == null) return null; return KpiThresholdsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

