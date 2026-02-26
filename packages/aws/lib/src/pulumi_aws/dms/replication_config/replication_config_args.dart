// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replication_config_compute_config/replication_config_compute_config.dart';

/// The set of arguments for ReplicationConfig.
class ReplicationConfigArgs {
  /// Configuration block for provisioning an DMS Serverless replication.
  final Input<ReplicationConfigComputeConfig> computeConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Unique identifier that you want to use to create the config.
  final Input<String> replicationConfigIdentifier;

  /// An escaped JSON string that are used to provision this replication configuration. For example, [Change processing tuning settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html)
  final Input<String>? replicationSettings;

  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final Input<String> replicationType;

  /// Unique value or name that you set for a given resource that can be used to construct an Amazon Resource Name (ARN) for that resource. For more information, see [Fine-grained access control using resource names and tags](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess)
  final Input<String>? resourceIdentifier;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  final Input<String> sourceEndpointArn;

  /// Whether to run or stop the serverless replication, default is false.
  final Input<bool>? startReplication;

  /// JSON settings for specifying supplemental data. For more information see [Specifying supplemental data for task settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
  final Input<String>? supplementalSettings;

  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final Input<String> tableMappings;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  final Input<String> targetEndpointArn;

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
    map['computeConfig'] = Input.mapInputValue<ReplicationConfigComputeConfig,
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
      computeConfig:
          Input.asInput<ReplicationConfigComputeConfig>(map['computeConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationConfigIdentifier:
          Input.asInput<String>(map['replicationConfigIdentifier']),
      replicationSettings:
          Input.asOptionalInput<String>(map['replicationSettings']),
      replicationType: Input.asInput<String>(map['replicationType']),
      resourceIdentifier:
          Input.asOptionalInput<String>(map['resourceIdentifier']),
      sourceEndpointArn: Input.asInput<String>(map['sourceEndpointArn']),
      startReplication: Input.asOptionalInput<bool>(map['startReplication']),
      supplementalSettings:
          Input.asOptionalInput<String>(map['supplementalSettings']),
      tableMappings: Input.asInput<String>(map['tableMappings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetEndpointArn: Input.asInput<String>(map['targetEndpointArn']),
    );
  }
}
