// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_feature_store_entity_type_monitoring_config/ai_feature_store_entity_type_monitoring_config.dart';

/// The set of arguments for AiFeatureStoreEntityType.
class AiFeatureStoreEntityTypeArgs {
  /// Optional. Description of the EntityType.
  final Input<String>? description;

  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  final Input<String> featurestore;

  /// A set of key/value label pairs to assign to this EntityType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The default monitoring configuration for all Features under this EntityType.
  /// If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  /// Structure is documented below.
  final Input<AiFeatureStoreEntityTypeMonitoringConfig>? monitoringConfig;

  /// The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final Input<String>? name;

  /// Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than offlineStorageTtlDays since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  final Input<int>? offlineStorageTtlDays;

  AiFeatureStoreEntityTypeArgs({
    this.description,
    required this.featurestore,
    this.labels,
    this.monitoringConfig,
    this.name,
    this.offlineStorageTtlDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['featurestore'] = featurestore;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] = Input.mapOptionalInputValue<
              AiFeatureStoreEntityTypeMonitoringConfig, Map<String, dynamic>>(
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
    return map;
  }

  factory AiFeatureStoreEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeArgs(
      description: Input.asOptionalInput<String>(map['description']),
      featurestore: Input.asInput<String>(map['featurestore']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      monitoringConfig:
          Input.asOptionalInput<AiFeatureStoreEntityTypeMonitoringConfig>(
              map['monitoringConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      offlineStorageTtlDays:
          Input.asOptionalInput<int>(map['offlineStorageTtlDays']),
    );
  }
}
