// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_feature_online_store_bigtable/ai_feature_online_store_bigtable.dart';
import '../ai_feature_online_store_dedicated_serving_endpoint/ai_feature_online_store_dedicated_serving_endpoint.dart';
import '../ai_feature_online_store_embedding_management/ai_feature_online_store_embedding_management.dart';
import '../ai_feature_online_store_encryption_spec/ai_feature_online_store_encryption_spec.dart';

/// The set of arguments for AiFeatureOnlineStore.
class AiFeatureOnlineStoreArgs {
  /// Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreBigtable>? bigtable;

  /// The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to be set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreDedicatedServingEndpoint>?
      dedicatedServingEndpoint;

  /// The settings for embedding management in FeatureOnlineStore. Embedding management can only be set for BigTable. It is enabled by default for optimized storagetype.
  /// Structure is documented below.
  ///
  /// > **Warning:** `embedding_management` is deprecated. This field is no longer needed anymore and embedding management is automatically enabled when specifying Optimized storage type
  final pulumi.Input<AiFeatureOnlineStoreEmbeddingManagement>?
      embeddingManagement;

  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreEncryptionSpec>? encryptionSpec;

  /// If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted.
  final pulumi.Input<bool>? forceDestroy;

  /// The labels with user-defined metadata to organize your feature online stores.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;

  /// Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore
  final pulumi.Input<Map<String, dynamic>>? optimized;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of feature online store. eg us-central1
  final pulumi.Input<String>? region;

  AiFeatureOnlineStoreArgs({
    this.bigtable,
    this.dedicatedServingEndpoint,
    this.embeddingManagement,
    this.encryptionSpec,
    this.forceDestroy,
    this.labels,
    this.name,
    this.optimized,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigtableValue = bigtable;
    if (bigtableValue != null) {
      map['bigtable'] = pulumi.Input.mapOptionalInputValue<
          AiFeatureOnlineStoreBigtable,
          Map<String, dynamic>>(bigtableValue, (value) => value.toMap());
    }
    final dedicatedServingEndpointValue = dedicatedServingEndpoint;
    if (dedicatedServingEndpointValue != null) {
      map['dedicatedServingEndpoint'] = pulumi.Input.mapOptionalInputValue<
              AiFeatureOnlineStoreDedicatedServingEndpoint,
              Map<String, dynamic>>(
          dedicatedServingEndpointValue, (value) => value.toMap());
    }
    final embeddingManagementValue = embeddingManagement;
    if (embeddingManagementValue != null) {
      map['embeddingManagement'] = pulumi.Input.mapOptionalInputValue<
              AiFeatureOnlineStoreEmbeddingManagement, Map<String, dynamic>>(
          embeddingManagementValue, (value) => value.toMap());
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          AiFeatureOnlineStoreEncryptionSpec,
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
    final optimizedValue = optimized;
    if (optimizedValue != null) {
      map['optimized'] = optimizedValue;
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

  factory AiFeatureOnlineStoreArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreArgs(
      bigtable: pulumi.Input.asOptionalInput<AiFeatureOnlineStoreBigtable>(
          map['bigtable']),
      dedicatedServingEndpoint: pulumi.Input.asOptionalInput<
              AiFeatureOnlineStoreDedicatedServingEndpoint>(
          map['dedicatedServingEndpoint']),
      embeddingManagement:
          pulumi.Input.asOptionalInput<AiFeatureOnlineStoreEmbeddingManagement>(
              map['embeddingManagement']),
      encryptionSpec:
          pulumi.Input.asOptionalInput<AiFeatureOnlineStoreEncryptionSpec>(
              map['encryptionSpec']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      optimized:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['optimized']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
