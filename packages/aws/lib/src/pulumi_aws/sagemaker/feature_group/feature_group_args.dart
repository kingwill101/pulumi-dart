// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_group_feature_definition/feature_group_feature_definition.dart';
import '../feature_group_offline_store_config/feature_group_offline_store_config.dart';
import '../feature_group_online_store_config/feature_group_online_store_config.dart';
import '../feature_group_throughput_config/feature_group_throughput_config.dart';

/// The set of arguments for FeatureGroup.
class FeatureGroupArgs {
  /// A free-form description of a Feature Group.
  final Input<String>? description;

  /// The name of the feature that stores the EventTime of a Record in a Feature Group.
  final Input<String> eventTimeFeatureName;

  /// A list of Feature names and types. See Feature Definition Below.
  final Input<List<FeatureGroupFeatureDefinition>> featureDefinitions;

  /// The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  final Input<String> featureGroupName;

  /// The Offline Feature Store Configuration. See Offline Store Config Below.
  final Input<FeatureGroupOfflineStoreConfig>? offlineStoreConfig;

  /// The Online Feature Store Configuration. See Online Store Config Below.
  final Input<FeatureGroupOnlineStoreConfig>? onlineStoreConfig;

  /// The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  final Input<String> recordIdentifierFeatureName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an <span pulumi-lang-nodejs="`offlineStoreConfig`" pulumi-lang-dotnet="`OfflineStoreConfig`" pulumi-lang-go="`offlineStoreConfig`" pulumi-lang-python="`offline_store_config`" pulumi-lang-yaml="`offlineStoreConfig`" pulumi-lang-java="`offlineStoreConfig`">`offline_store_config`</span> is provided.
  final Input<String> roleArn;

  /// Map of resource tags for the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<FeatureGroupThroughputConfig>? throughputConfig;

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
    map['featureDefinitions'] = Input.mapInputValue<
            List<FeatureGroupFeatureDefinition>, List<Map<String, dynamic>>>(
        featureDefinitions,
        (value) => Input.encodeList<FeatureGroupFeatureDefinition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['featureGroupName'] = featureGroupName;
    final offlineStoreConfigValue = offlineStoreConfig;
    if (offlineStoreConfigValue != null) {
      map['offlineStoreConfig'] = Input.mapOptionalInputValue<
              FeatureGroupOfflineStoreConfig, Map<String, dynamic>>(
          offlineStoreConfigValue, (value) => value.toMap());
    }
    final onlineStoreConfigValue = onlineStoreConfig;
    if (onlineStoreConfigValue != null) {
      map['onlineStoreConfig'] = Input.mapOptionalInputValue<
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
      map['throughputConfig'] = Input.mapOptionalInputValue<
              FeatureGroupThroughputConfig, Map<String, dynamic>>(
          throughputConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return FeatureGroupArgs(
      description: Input.asOptionalInput<String>(map['description']),
      eventTimeFeatureName: Input.asInput<String>(map['eventTimeFeatureName']),
      featureDefinitions: Input.asInput<List<FeatureGroupFeatureDefinition>>(
          map['featureDefinitions']),
      featureGroupName: Input.asInput<String>(map['featureGroupName']),
      offlineStoreConfig: Input.asOptionalInput<FeatureGroupOfflineStoreConfig>(
          map['offlineStoreConfig']),
      onlineStoreConfig: Input.asOptionalInput<FeatureGroupOnlineStoreConfig>(
          map['onlineStoreConfig']),
      recordIdentifierFeatureName:
          Input.asInput<String>(map['recordIdentifierFeatureName']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughputConfig: Input.asOptionalInput<FeatureGroupThroughputConfig>(
          map['throughputConfig']),
    );
  }
}
