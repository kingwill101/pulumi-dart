// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_feature_store_encryption_spec/ai_feature_store_encryption_spec.dart';
import '../ai_feature_store_online_serving_config/ai_feature_store_online_serving_config.dart';

/// The set of arguments for AiFeatureStore.
class AiFeatureStoreArgs {
  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEncryptionSpec>? encryptionSpec;

  /// If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  final pulumi.Input<bool>? forceDestroy;

  /// A set of key/value label pairs to assign to this Featurestore.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;

  /// Config for online serving resources.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreOnlineServingConfig>? onlineServingConfig;

  /// TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than onlineStorageTtlDays since the feature generation time. Note that onlineStorageTtlDays should be less than or equal to offlineStorageTtlDays for each EntityType under a featurestore. If not set, default to 4000 days
  final pulumi.Input<int>? onlineStorageTtlDays;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the dataset. eg us-central1
  final pulumi.Input<String>? region;

  AiFeatureStoreArgs({
    this.encryptionSpec,
    this.forceDestroy,
    this.labels,
    this.name,
    this.onlineServingConfig,
    this.onlineStorageTtlDays,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          AiFeatureStoreEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final onlineServingConfigValue = onlineServingConfig;
    if (onlineServingConfigValue != null) {
      map['onlineServingConfig'] = pulumi.Input.mapOptionalInputValue<
              AiFeatureStoreOnlineServingConfig, Map<String, dynamic>>(
          onlineServingConfigValue, (value) => value.toMap());
    }
    final onlineStorageTtlDaysValue = onlineStorageTtlDays;
    if (onlineStorageTtlDaysValue != null) {
      map['onlineStorageTtlDays'] = onlineStorageTtlDaysValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AiFeatureStoreArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreArgs(
      encryptionSpec:
          pulumi.Input.asOptionalInput<AiFeatureStoreEncryptionSpec>(
              map['encryptionSpec']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      onlineServingConfig:
          pulumi.Input.asOptionalInput<AiFeatureStoreOnlineServingConfig>(
              map['onlineServingConfig']),
      onlineStorageTtlDays:
          pulumi.Input.asOptionalInput<int>(map['onlineStorageTtlDays']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
