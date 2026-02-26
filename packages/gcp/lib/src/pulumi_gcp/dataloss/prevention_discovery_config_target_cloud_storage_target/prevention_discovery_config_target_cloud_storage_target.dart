// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_cloud_storage_target_conditions/prevention_discovery_config_target_cloud_storage_target_conditions.dart';
import '../prevention_discovery_config_target_cloud_storage_target_filter/prevention_discovery_config_target_cloud_storage_target_filter.dart';
import '../prevention_discovery_config_target_cloud_storage_target_generation_cadence/prevention_discovery_config_target_cloud_storage_target_generation_cadence.dart';

class PreventionDiscoveryConfigTargetCloudStorageTarget {
  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetConditions? conditions;

  /// Disable profiling for buckets that match this filter.
  final Map<String, dynamic>? disabled;

  /// The buckets the<span pulumi-lang-nodejs=" generationCadence " pulumi-lang-dotnet=" GenerationCadence " pulumi-lang-go=" generationCadence " pulumi-lang-python=" generation_cadence " pulumi-lang-yaml=" generationCadence " pulumi-lang-java=" generationCadence "> generation_cadence </span>applies to. The first target with a matching filter will be the one to apply to a bucket.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetFilter filter;

  /// How often and when to update profiles. New buckets that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence?
      generationCadence;

  PreventionDiscoveryConfigTargetCloudStorageTarget({
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

  factory PreventionDiscoveryConfigTargetCloudStorageTarget.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTarget(
      conditions: map['conditions'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudStorageTargetConditions.fromMap(
              (map['conditions'] as Map).cast<String, dynamic>()),
      disabled: map['disabled'] == null
          ? null
          : (map['disabled'] as Map).cast<String, dynamic>(),
      filter: PreventionDiscoveryConfigTargetCloudStorageTargetFilter.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
      generationCadence: map['generationCadence'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence
              .fromMap(
                  (map['generationCadence'] as Map).cast<String, dynamic>()),
    );
  }
}
