// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_encryption_spec.dart';
import 'ai_feature_store_online_serving_config.dart';

/// {@template pulumi_vertex_ai_feature_store_ai_feature_store_args_doc}
/// The set of arguments for AiFeatureStore.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_store_ai_feature_store_args_doc}
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

  /// Creates a new [AiFeatureStoreArgs].
  /// [encryptionSpec] If set, both of the online and offline data storage will be secured by this key.
  /// [forceDestroy] If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  /// [labels] A set of key/value label pairs to assign to this Featurestore.
  /// [name] The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [onlineServingConfig] Config for online serving resources.
  /// [onlineStorageTtlDays] TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than onlineStorageTtlDays since the feature generation time. Note that onlineStorageTtlDays should be less than or equal to offlineStorageTtlDays for each EntityType under a featurestore. If not set, default to 4000 days
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the dataset. eg us-central1
  AiFeatureStoreArgs({
    AiFeatureStoreEncryptionSpec? encryptionSpec,
    bool? forceDestroy,
    Map<String, String>? labels,
    String? name,
    AiFeatureStoreOnlineServingConfig? onlineServingConfig,
    int? onlineStorageTtlDays,
    String? project,
    String? region,
  }) : encryptionSpec = pulumi
           .Input.asOptionalInput<AiFeatureStoreEncryptionSpec>(encryptionSpec),
       forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       onlineServingConfig =
           pulumi.Input.asOptionalInput<AiFeatureStoreOnlineServingConfig>(
             onlineServingConfig,
           ),
       onlineStorageTtlDays = pulumi.Input.asOptionalInput<int>(
         onlineStorageTtlDays,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureStoreEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'labels': ?labels,
      'name': ?name,
      'onlineServingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureStoreOnlineServingConfig,
            Map<String, dynamic>
          >(onlineServingConfig, (value) => value.toMap()),
      'onlineStorageTtlDays': ?onlineStorageTtlDays,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiFeatureStoreArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreArgs(
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : AiFeatureStoreEncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>(),
            ),
      forceDestroy: map['forceDestroy'] == null
          ? null
          : map['forceDestroy'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      onlineServingConfig: map['onlineServingConfig'] == null
          ? null
          : AiFeatureStoreOnlineServingConfig.fromMap(
              (map['onlineServingConfig'] as Map).cast<String, dynamic>(),
            ),
      onlineStorageTtlDays: map['onlineStorageTtlDays'] == null
          ? null
          : map['onlineStorageTtlDays'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
