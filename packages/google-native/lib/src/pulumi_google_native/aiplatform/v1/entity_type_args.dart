// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_featurestore_monitoring_config.dart';

/// The set of arguments for EntityType.
class EntityTypeArgs {
  /// Optional. Description of the EntityType.
  final Input<String>? description;

  /// Required. The ID to use for the EntityType, which will become the final component of the EntityType's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a featurestore.
  final Input<String> entityTypeId;

  /// Optional. Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;
  final Input<String> featurestoreId;

  /// Optional. The labels with user-defined metadata to organize your EntityTypes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one EntityType (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. The default monitoring configuration for all Features with value type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 under this EntityType. If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  final Input<GoogleCloudAiplatformV1FeaturestoreMonitoringConfig>?
      monitoringConfig;

  /// Immutable. Name of the EntityType. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}` The last part entity_type is assigned by the client. The entity_type can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z and underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given a featurestore.
  final Input<String>? name;

  /// Optional. Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than `offline_storage_ttl_days` since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  final Input<int>? offlineStorageTtlDays;
  final Input<String>? project;

  EntityTypeArgs({
    this.description,
    required this.entityTypeId,
    this.etag,
    required this.featurestoreId,
    this.labels,
    this.location,
    this.monitoringConfig,
    this.name,
    this.offlineStorageTtlDays,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['entityTypeId'] = entityTypeId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featurestoreId'] = featurestoreId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1FeaturestoreMonitoringConfig,
              Map<String, dynamic>>(
          monitoringConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final offlineStorageTtlDaysValue = offlineStorageTtlDays;
    if (offlineStorageTtlDaysValue != null) {
      map['offlineStorageTtlDays'] = offlineStorageTtlDaysValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs(
      description: Input.asOptionalInput<String>(map['description']),
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      featurestoreId: Input.asInput<String>(map['featurestoreId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      monitoringConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1FeaturestoreMonitoringConfig>(
          map['monitoringConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      offlineStorageTtlDays:
          Input.asOptionalInput<int>(map['offlineStorageTtlDays']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
