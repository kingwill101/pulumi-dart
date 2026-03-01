// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_cloud_storage_target_conditions_cloud_storage_conditions.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetConditions {
  /// Cloud Storage conditions.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions?
  cloudStorageConditions;

  /// File store must have been created after this date. Used to avoid backfilling. A timestamp in RFC3339 UTC "Zulu" format with nanosecond resolution and upto nine fractional digits.
  final String? createdAfter;

  /// Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  final String? minAge;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetConditions].
  /// [cloudStorageConditions] Cloud Storage conditions.
  /// [createdAfter] File store must have been created after this date. Used to avoid backfilling. A timestamp in RFC3339 UTC "Zulu" format with nanosecond resolution and upto nine fractional digits.
  /// [minAge] Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  PreventionDiscoveryConfigTargetCloudStorageTargetConditions({
    this.cloudStorageConditions,
    this.createdAfter,
    this.minAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageConditions': ?cloudStorageConditions == null
          ? null
          : cloudStorageConditions!.toMap(),
      'createdAfter': ?createdAfter,
      'minAge': ?minAge,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetConditions.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetConditions(
      cloudStorageConditions: map['cloudStorageConditions'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions.fromMap(
              (map['cloudStorageConditions'] as Map).cast<String, dynamic>(),
            ),
      createdAfter: map['createdAfter'] == null
          ? null
          : map['createdAfter'] as String,
      minAge: map['minAge'] == null ? null : map['minAge'] as String,
    );
  }
}
