// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../replication_config_compute_config/replication_config_compute_config.dart';

/// The set of arguments for ReplicationConfig.
class ReplicationConfigArgs {
  /// Configuration block for provisioning an DMS Serverless replication.
  final pulumi.Input<ReplicationConfigComputeConfig> computeConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Unique identifier that you want to use to create the config.
  final pulumi.Input<String> replicationConfigIdentifier;

  /// An escaped JSON string that are used to provision this replication configuration. For example, [Change processing tuning settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html)
  final pulumi.Input<String>? replicationSettings;

  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final pulumi.Input<String> replicationType;

  /// Unique value or name that you set for a given resource that can be used to construct an Amazon Resource Name (ARN) for that resource. For more information, see [Fine-grained access control using resource names and tags](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess)
  final pulumi.Input<String>? resourceIdentifier;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  final pulumi.Input<String> sourceEndpointArn;

  /// Whether to run or stop the serverless replication, default is false.
  final pulumi.Input<bool>? startReplication;

  /// JSON settings for specifying supplemental data. For more information see [Specifying supplemental data for task settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
  final pulumi.Input<String>? supplementalSettings;

  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final pulumi.Input<String> tableMappings;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  final pulumi.Input<String> targetEndpointArn;

  ReplicationConfigArgs({
    required this.computeConfig,
    this.region,
    required this.replicationConfigIdentifier,
    this.replicationSettings,
    required this.replicationType,
    this.resourceIdentifier,
    required this.sourceEndpointArn,
    this.startReplication,
    this.supplementalSettings,
    required this.tableMappings,
    this.tags,
    required this.targetEndpointArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeConfig'] = pulumi.Input.mapInputValue<
        ReplicationConfigComputeConfig,
        Map<String, dynamic>>(computeConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationConfigIdentifier'] = replicationConfigIdentifier;
    final replicationSettingsValue = replicationSettings;
    if (replicationSettingsValue != null) {
      map['replicationSettings'] = replicationSettingsValue;
    }
    map['replicationType'] = replicationType;
    final resourceIdentifierValue = resourceIdentifier;
    if (resourceIdentifierValue != null) {
      map['resourceIdentifier'] = resourceIdentifierValue;
    }
    map['sourceEndpointArn'] = sourceEndpointArn;
    final startReplicationValue = startReplication;
    if (startReplicationValue != null) {
      map['startReplication'] = startReplicationValue;
    }
    final supplementalSettingsValue = supplementalSettings;
    if (supplementalSettingsValue != null) {
      map['supplementalSettings'] = supplementalSettingsValue;
    }
    map['tableMappings'] = tableMappings;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetEndpointArn'] = targetEndpointArn;
    return map;
  }

  factory ReplicationConfigArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigArgs(
      computeConfig: pulumi.Input.asInput<ReplicationConfigComputeConfig>(
          map['computeConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationConfigIdentifier:
          pulumi.Input.asInput<String>(map['replicationConfigIdentifier']),
      replicationSettings:
          pulumi.Input.asOptionalInput<String>(map['replicationSettings']),
      replicationType: pulumi.Input.asInput<String>(map['replicationType']),
      resourceIdentifier:
          pulumi.Input.asOptionalInput<String>(map['resourceIdentifier']),
      sourceEndpointArn: pulumi.Input.asInput<String>(map['sourceEndpointArn']),
      startReplication:
          pulumi.Input.asOptionalInput<bool>(map['startReplication']),
      supplementalSettings:
          pulumi.Input.asOptionalInput<String>(map['supplementalSettings']),
      tableMappings: pulumi.Input.asInput<String>(map['tableMappings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetEndpointArn: pulumi.Input.asInput<String>(map['targetEndpointArn']),
    );
  }
}
