// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_config_compute_config.dart';

/// Input properties used for looking up and filtering ReplicationConfig resources.
class ReplicationConfigState {
  /// The Amazon Resource Name (ARN) for the serverless replication config.
  final pulumi.Input<String>? arn;
  /// Configuration block for provisioning an DMS Serverless replication.
  final pulumi.Input<ReplicationConfigComputeConfig>? computeConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Unique identifier that you want to use to create the config.
  final pulumi.Input<String>? replicationConfigIdentifier;
  /// An escaped JSON string that are used to provision this replication configuration. For example, [Change processing tuning settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html)
  final pulumi.Input<String>? replicationSettings;
  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final pulumi.Input<String>? replicationType;
  /// Unique value or name that you set for a given resource that can be used to construct an Amazon Resource Name (ARN) for that resource. For more information, see [Fine-grained access control using resource names and tags](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess)
  final pulumi.Input<String>? resourceIdentifier;
  /// The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  final pulumi.Input<String>? sourceEndpointArn;
  /// Whether to run or stop the serverless replication, default is false.
  final pulumi.Input<bool>? startReplication;
  /// JSON settings for specifying supplemental data. For more information see [Specifying supplemental data for task settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
  final pulumi.Input<String>? supplementalSettings;
  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final pulumi.Input<String>? tableMappings;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  final pulumi.Input<String>? targetEndpointArn;

  /// Creates a new [ReplicationConfigState].
  /// [arn] The Amazon Resource Name (ARN) for the serverless replication config.
  /// [computeConfig] Configuration block for provisioning an DMS Serverless replication.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfigIdentifier] Unique identifier that you want to use to create the config.
  /// [replicationSettings] An escaped JSON string that are used to provision this replication configuration. For example, [Change processing tuning settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html)
  /// [replicationType] The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  /// [resourceIdentifier] Unique value or name that you set for a given resource that can be used to construct an Amazon Resource Name (ARN) for that resource. For more information, see [Fine-grained access control using resource names and tags](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess)
  /// [sourceEndpointArn] The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  /// [startReplication] Whether to run or stop the serverless replication, default is false.
  /// [supplementalSettings] JSON settings for specifying supplemental data. For more information see [Specifying supplemental data for task settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
  /// [tableMappings] An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetEndpointArn] The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  const ReplicationConfigState({
    this.arn,
    this.computeConfig,
    this.region,
    this.replicationConfigIdentifier,
    this.replicationSettings,
    this.replicationType,
    this.resourceIdentifier,
    this.sourceEndpointArn,
    this.startReplication,
    this.supplementalSettings,
    this.tableMappings,
    this.tags,
    this.tagsAll,
    this.targetEndpointArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'computeConfig': ?pulumi.Input.mapOptionalInputValue<ReplicationConfigComputeConfig, Map<String, dynamic>>(computeConfig, (value) => value.toMap()),
      'region': ?region,
      'replicationConfigIdentifier': ?replicationConfigIdentifier,
      'replicationSettings': ?replicationSettings,
      'replicationType': ?replicationType,
      'resourceIdentifier': ?resourceIdentifier,
      'sourceEndpointArn': ?sourceEndpointArn,
      'startReplication': ?startReplication,
      'supplementalSettings': ?supplementalSettings,
      'tableMappings': ?tableMappings,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetEndpointArn': ?targetEndpointArn,
    };
  }

  factory ReplicationConfigState.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeConfig: (() { final guardedValue = map['computeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationConfigComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationConfigIdentifier: (() { final guardedValue = map['replicationConfigIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationSettings: (() { final guardedValue = map['replicationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationType: (() { final guardedValue = map['replicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceIdentifier: (() { final guardedValue = map['resourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointArn: (() { final guardedValue = map['sourceEndpointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startReplication: (() { final guardedValue = map['startReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      supplementalSettings: (() { final guardedValue = map['supplementalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableMappings: (() { final guardedValue = map['tableMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetEndpointArn: (() { final guardedValue = map['targetEndpointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
