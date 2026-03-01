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
  /// The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an `offline_store_config` is provided.
  final pulumi.Input<String>? roleArn;
  /// Map of resource tags for the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an `offline_store_config` is provided.
  /// [tags] Map of resource tags for the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throughputConfig] Optional.
  FeatureGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? eventTimeFeatureName,
    pulumi.Output<List<FeatureGroupFeatureDefinition>>? featureDefinitions,
    pulumi.Output<String>? featureGroupName,
    pulumi.Output<FeatureGroupOfflineStoreConfig>? offlineStoreConfig,
    pulumi.Output<FeatureGroupOnlineStoreConfig>? onlineStoreConfig,
    pulumi.Output<String>? recordIdentifierFeatureName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<FeatureGroupThroughputConfig>? throughputConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventTimeFeatureName = pulumi.Input.asOptionalInput<String>(eventTimeFeatureName),
      featureDefinitions = pulumi.Input.asOptionalInput<List<FeatureGroupFeatureDefinition>>(featureDefinitions),
      featureGroupName = pulumi.Input.asOptionalInput<String>(featureGroupName),
      offlineStoreConfig = pulumi.Input.asOptionalInput<FeatureGroupOfflineStoreConfig>(offlineStoreConfig),
      onlineStoreConfig = pulumi.Input.asOptionalInput<FeatureGroupOnlineStoreConfig>(onlineStoreConfig),
      recordIdentifierFeatureName = pulumi.Input.asOptionalInput<String>(recordIdentifierFeatureName),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      throughputConfig = pulumi.Input.asOptionalInput<FeatureGroupThroughputConfig>(throughputConfig);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventTimeFeatureName: map['eventTimeFeatureName'] == null ? null : pulumi.Output.create<String>(map['eventTimeFeatureName'] as String),
      featureDefinitions: map['featureDefinitions'] == null ? null : pulumi.Output.create<List<FeatureGroupFeatureDefinition>>(pulumi.Input.decodeList<FeatureGroupFeatureDefinition>(map['featureDefinitions'], (value) => FeatureGroupFeatureDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      featureGroupName: map['featureGroupName'] == null ? null : pulumi.Output.create<String>(map['featureGroupName'] as String),
      offlineStoreConfig: map['offlineStoreConfig'] == null ? null : pulumi.Output.create<FeatureGroupOfflineStoreConfig>(FeatureGroupOfflineStoreConfig.fromMap((map['offlineStoreConfig'] as Map).cast<String, dynamic>())),
      onlineStoreConfig: map['onlineStoreConfig'] == null ? null : pulumi.Output.create<FeatureGroupOnlineStoreConfig>(FeatureGroupOnlineStoreConfig.fromMap((map['onlineStoreConfig'] as Map).cast<String, dynamic>())),
      recordIdentifierFeatureName: map['recordIdentifierFeatureName'] == null ? null : pulumi.Output.create<String>(map['recordIdentifierFeatureName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      throughputConfig: map['throughputConfig'] == null ? null : pulumi.Output.create<FeatureGroupThroughputConfig>(FeatureGroupThroughputConfig.fromMap((map['throughputConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

