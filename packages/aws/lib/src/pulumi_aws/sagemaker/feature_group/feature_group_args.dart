// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../feature_group_feature_definition/feature_group_feature_definition.dart';
import '../feature_group_offline_store_config/feature_group_offline_store_config.dart';
import '../feature_group_online_store_config/feature_group_online_store_config.dart';
import '../feature_group_throughput_config/feature_group_throughput_config.dart';

/// The set of arguments for FeatureGroup.
class FeatureGroupArgs {
  /// A free-form description of a Feature Group.
  final pulumi.Input<String>? description;

  /// The name of the feature that stores the EventTime of a Record in a Feature Group.
  final pulumi.Input<String> eventTimeFeatureName;

  /// A list of Feature names and types. See Feature Definition Below.
  final pulumi.Input<List<FeatureGroupFeatureDefinition>> featureDefinitions;

  /// The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  final pulumi.Input<String> featureGroupName;

  /// The Offline Feature Store Configuration. See Offline Store Config Below.
  final pulumi.Input<FeatureGroupOfflineStoreConfig>? offlineStoreConfig;

  /// The Online Feature Store Configuration. See Online Store Config Below.
  final pulumi.Input<FeatureGroupOnlineStoreConfig>? onlineStoreConfig;

  /// The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  final pulumi.Input<String> recordIdentifierFeatureName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an `offline_store_config` is provided.
  final pulumi.Input<String> roleArn;

  /// Map of resource tags for the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<FeatureGroupThroughputConfig>? throughputConfig;

  FeatureGroupArgs({
    this.description,
    required this.eventTimeFeatureName,
    required this.featureDefinitions,
    required this.featureGroupName,
    this.offlineStoreConfig,
    this.onlineStoreConfig,
    required this.recordIdentifierFeatureName,
    this.region,
    required this.roleArn,
    this.tags,
    this.throughputConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['eventTimeFeatureName'] = eventTimeFeatureName;
    map['featureDefinitions'] = pulumi.Input.mapInputValue<
            List<FeatureGroupFeatureDefinition>, List<Map<String, dynamic>>>(
        featureDefinitions,
        (value) => pulumi.Input.encodeList<FeatureGroupFeatureDefinition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['featureGroupName'] = featureGroupName;
    final offlineStoreConfigValue = offlineStoreConfig;
    if (offlineStoreConfigValue != null) {
      map['offlineStoreConfig'] = pulumi.Input.mapOptionalInputValue<
              FeatureGroupOfflineStoreConfig, Map<String, dynamic>>(
          offlineStoreConfigValue, (value) => value.toMap());
    }
    final onlineStoreConfigValue = onlineStoreConfig;
    if (onlineStoreConfigValue != null) {
      map['onlineStoreConfig'] = pulumi.Input.mapOptionalInputValue<
              FeatureGroupOnlineStoreConfig, Map<String, dynamic>>(
          onlineStoreConfigValue, (value) => value.toMap());
    }
    map['recordIdentifierFeatureName'] = recordIdentifierFeatureName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final throughputConfigValue = throughputConfig;
    if (throughputConfigValue != null) {
      map['throughputConfig'] = pulumi.Input.mapOptionalInputValue<
              FeatureGroupThroughputConfig, Map<String, dynamic>>(
          throughputConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return FeatureGroupArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      eventTimeFeatureName:
          pulumi.Input.asInput<String>(map['eventTimeFeatureName']),
      featureDefinitions:
          pulumi.Input.asInput<List<FeatureGroupFeatureDefinition>>(
              map['featureDefinitions']),
      featureGroupName: pulumi.Input.asInput<String>(map['featureGroupName']),
      offlineStoreConfig:
          pulumi.Input.asOptionalInput<FeatureGroupOfflineStoreConfig>(
              map['offlineStoreConfig']),
      onlineStoreConfig:
          pulumi.Input.asOptionalInput<FeatureGroupOnlineStoreConfig>(
              map['onlineStoreConfig']),
      recordIdentifierFeatureName:
          pulumi.Input.asInput<String>(map['recordIdentifierFeatureName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughputConfig:
          pulumi.Input.asOptionalInput<FeatureGroupThroughputConfig>(
              map['throughputConfig']),
    );
  }
}
