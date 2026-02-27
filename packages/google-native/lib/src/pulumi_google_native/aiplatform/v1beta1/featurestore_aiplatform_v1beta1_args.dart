// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_online_serving_config.dart';

/// The set of arguments for Featurestore.
class FeaturestoreAiplatformV1beta1Args {
  /// Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>?
      encryptionSpec;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// Required. The ID to use for this Featurestore, which will become the final component of the Featurestore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final pulumi.Input<String> featurestoreId;

  /// Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  final pulumi
      .Input<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig>?
      onlineServingConfig;

  /// Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  final pulumi.Input<int>? onlineStorageTtlDays;
  final pulumi.Input<String>? project;

  FeaturestoreAiplatformV1beta1Args({
    this.encryptionSpec,
    this.etag,
    required this.featurestoreId,
    this.labels,
    this.location,
    this.onlineServingConfig,
    this.onlineStorageTtlDays,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
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
    final onlineServingConfigValue = onlineServingConfig;
    if (onlineServingConfigValue != null) {
      map['onlineServingConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig,
              Map<String, dynamic>>(
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
    return map;
  }

  factory FeaturestoreAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FeaturestoreAiplatformV1beta1Args(
      encryptionSpec: pulumi.Input.asOptionalInput<
          GoogleCloudAiplatformV1beta1EncryptionSpec>(map['encryptionSpec']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      featurestoreId: pulumi.Input.asInput<String>(map['featurestoreId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      onlineServingConfig: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig>(
          map['onlineServingConfig']),
      onlineStorageTtlDays:
          pulumi.Input.asOptionalInput<int>(map['onlineStorageTtlDays']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
