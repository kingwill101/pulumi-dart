// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_cloud_sql_target_conditions.dart';
import 'prevention_discovery_config_target_cloud_sql_target_filter.dart';
import 'prevention_discovery_config_target_cloud_sql_target_generation_cadence.dart';

class PreventionDiscoveryConfigTargetCloudSqlTarget {
  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudSqlTargetConditions? conditions;

  /// Disable profiling for database resources that match this filter.
  final Map<String, dynamic>? disabled;

  /// Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudSqlTargetFilter filter;

  /// How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence?
      generationCadence;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTarget].
  /// [conditions] In addition to matching the filter, these conditions must be true before a profile is generated.
  /// [disabled] Disable profiling for database resources that match this filter.
  /// [filter] Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  /// [generationCadence] How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  PreventionDiscoveryConfigTargetCloudSqlTarget({
    this.conditions,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = conditionsValue.toMap();
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter.toMap();
    final generationCadenceValue = generationCadence;
    if (generationCadenceValue != null) {
      map['generationCadence'] = generationCadenceValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTarget.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTarget(
      conditions: map['conditions'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudSqlTargetConditions.fromMap(
              (map['conditions'] as Map).cast<String, dynamic>()),
      disabled: map['disabled'] == null
          ? null
          : (map['disabled'] as Map).cast<String, dynamic>(),
      filter: PreventionDiscoveryConfigTargetCloudSqlTargetFilter.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
      generationCadence: map['generationCadence'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence
              .fromMap(
                  (map['generationCadence'] as Map).cast<String, dynamic>()),
    );
  }
}
