// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_definition.dart';
import 'feature_group_offline_store_config.dart';
import 'feature_group_online_store_config.dart';
import 'feature_group_throughput_config.dart';

/// Input properties used for looking up and filtering FeatureGroup resources.
class FeatureGroupState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this feature_group.
  final pulumi.Input<String>? arn;
  /// A free-form description of a Feature Group.
  final pulumi.Input<String>? description;
  /// The name of the feature that stores the EventTime of a Record in a Feature Group.
  final pulumi.Input<String>? eventTimeFeatureName;
  /// A list of Feature names and types. See Feature Definition Below.
  final pulumi.Input<List<FeatureGroupFeatureDefinition>>? featureDefinitions;
  /// The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  final pulumi.Input<String>? featureGroupName;
  /// The Offline Feature Store Configuration. See Offline Store Config Below.
  final pulumi.Input<FeatureGroupOfflineStoreConfig>? offlineStoreConfig;
  /// The Online Feature Store Configuration. See Online Store Config Below.
  final pulumi.Input<FeatureGroupOnlineStoreConfig>? onlineStoreConfig;
  /// The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  final pulumi.Input<String>? recordIdentifierFeatureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an `offlineStoreConfig` is provided.
  final pulumi.Input<String>? roleArn;
  /// Map of resource tags for the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<FeatureGroupThroughputConfig>? throughputConfig;

  /// Creates a new [FeatureGroupState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this feature_group.
  /// [description] A free-form description of a Feature Group.
  /// [eventTimeFeatureName] The name of the feature that stores the EventTime of a Record in a Feature Group.
  /// [featureDefinitions] A list of Feature names and types. See Feature Definition Below.
  /// [featureGroupName] The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  /// [offlineStoreConfig] The Offline Feature Store Configuration. See Offline Store Config Below.
  /// [onlineStoreConfig] The Online Feature Store Configuration. See Online Store Config Below.
  /// [recordIdentifierFeatureName] The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an `offlineStoreConfig` is provided.
  /// [tags] Map of resource tags for the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [throughputConfig] Optional.
  const FeatureGroupState({
    this.arn,
    this.description,
    this.eventTimeFeatureName,
    this.featureDefinitions,
    this.featureGroupName,
    this.offlineStoreConfig,
    this.onlineStoreConfig,
    this.recordIdentifierFeatureName,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.throughputConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'eventTimeFeatureName': ?eventTimeFeatureName,
      'featureDefinitions': ?pulumi.Input.mapOptionalInputValue<List<FeatureGroupFeatureDefinition>, List<Map<String, dynamic>>>(featureDefinitions, (value) => pulumi.Input.encodeList<FeatureGroupFeatureDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'featureGroupName': ?featureGroupName,
      'offlineStoreConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupOfflineStoreConfig, Map<String, dynamic>>(offlineStoreConfig, (value) => value.toMap()),
      'onlineStoreConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupOnlineStoreConfig, Map<String, dynamic>>(onlineStoreConfig, (value) => value.toMap()),
      'recordIdentifierFeatureName': ?recordIdentifierFeatureName,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'throughputConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupThroughputConfig, Map<String, dynamic>>(throughputConfig, (value) => value.toMap()),
    };
  }

  factory FeatureGroupState.fromMap(Map<String, dynamic> map) {
    return FeatureGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventTimeFeatureName: (() { final guardedValue = map['eventTimeFeatureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureDefinitions: (() { final guardedValue = map['featureDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureGroupFeatureDefinition>(guardedValue, (value) => FeatureGroupFeatureDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      featureGroupName: (() { final guardedValue = map['featureGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offlineStoreConfig: (() { final guardedValue = map['offlineStoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupOfflineStoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onlineStoreConfig: (() { final guardedValue = map['onlineStoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupOnlineStoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordIdentifierFeatureName: (() { final guardedValue = map['recordIdentifierFeatureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputConfig: (() { final guardedValue = map['throughputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupThroughputConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
