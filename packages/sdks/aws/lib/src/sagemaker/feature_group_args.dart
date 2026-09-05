// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_definition.dart';
import 'feature_group_offline_store_config.dart';
import 'feature_group_online_store_config.dart';
import 'feature_group_throughput_config.dart';

/// {@template pulumi_sagemaker_feature_group_feature_group_args_doc}
/// The set of arguments for FeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_feature_group_feature_group_args_doc}
class FeatureGroupArgs {
  /// A free-form description of a Feature Group.
  final pulumi.Input<String?>? description;
  /// The name of the feature that stores the EventTime of a Record in a Feature Group.
  final pulumi.Input<String> eventTimeFeatureName;
  /// A list of Feature names and types. See Feature Definition Below.
  final pulumi.Input<List<FeatureGroupFeatureDefinition>> featureDefinitions;
  /// The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  final pulumi.Input<String> featureGroupName;
  /// The Offline Feature Store Configuration. See Offline Store Config Below.
  final pulumi.Input<FeatureGroupOfflineStoreConfig?>? offlineStoreConfig;
  /// The Online Feature Store Configuration. See Online Store Config Below.
  final pulumi.Input<FeatureGroupOnlineStoreConfig?>? onlineStoreConfig;
  /// The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  final pulumi.Input<String> recordIdentifierFeatureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ARN of the IAM execution role used to persist data into the Offline Store if an `offlineStoreConfig` is provided.
  final pulumi.Input<String> roleArn;
  /// Map of resource tags for the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<FeatureGroupThroughputConfig?>? throughputConfig;

  /// Creates a new [FeatureGroupArgs].
  /// [description] A free-form description of a Feature Group.
  /// [eventTimeFeatureName] The name of the feature that stores the EventTime of a Record in a Feature Group.
  /// [featureDefinitions] A list of Feature names and types. See Feature Definition Below.
  /// [featureGroupName] The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  /// [offlineStoreConfig] The Offline Feature Store Configuration. See Offline Store Config Below.
  /// [onlineStoreConfig] The Online Feature Store Configuration. See Online Store Config Below.
  /// [recordIdentifierFeatureName] The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM execution role used to persist data into the Offline Store if an `offlineStoreConfig` is provided.
  /// [tags] Map of resource tags for the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughputConfig] Optional.
  const FeatureGroupArgs({
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
    return <String, dynamic>{
      'description': ?description,
      'eventTimeFeatureName': eventTimeFeatureName,
      'featureDefinitions': pulumi.Input.mapInputValue<List<FeatureGroupFeatureDefinition>, List<Map<String, dynamic>>>(featureDefinitions, (value) => pulumi.Input.encodeList<FeatureGroupFeatureDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'featureGroupName': featureGroupName,
      'offlineStoreConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupOfflineStoreConfig, Map<String, dynamic>>(offlineStoreConfig, (value) => value.toMap()),
      'onlineStoreConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupOnlineStoreConfig, Map<String, dynamic>>(onlineStoreConfig, (value) => value.toMap()),
      'recordIdentifierFeatureName': recordIdentifierFeatureName,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'throughputConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupThroughputConfig, Map<String, dynamic>>(throughputConfig, (value) => value.toMap()),
    };
  }

  factory FeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return FeatureGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventTimeFeatureName: pulumi.Input.fromValue(map['eventTimeFeatureName'] as String),
      featureDefinitions: pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureGroupFeatureDefinition>(map['featureDefinitions']!, (value) => FeatureGroupFeatureDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      featureGroupName: pulumi.Input.fromValue(map['featureGroupName'] as String),
      offlineStoreConfig: (() { final guardedValue = map['offlineStoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupOfflineStoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onlineStoreConfig: (() { final guardedValue = map['onlineStoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupOnlineStoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordIdentifierFeatureName: pulumi.Input.fromValue(map['recordIdentifierFeatureName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputConfig: (() { final guardedValue = map['throughputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupThroughputConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
