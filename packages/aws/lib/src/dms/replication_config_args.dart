// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_config_compute_config.dart';

/// {@template pulumi_dms_replication_config_replication_config_args_doc}
/// The set of arguments for ReplicationConfig.
/// {@endtemplate}
/// {@macro pulumi_dms_replication_config_replication_config_args_doc}
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

  /// Creates a new [ReplicationConfigArgs].
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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetEndpointArn] The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  ReplicationConfigArgs({
    required ReplicationConfigComputeConfig computeConfig,
    String? region,
    required String replicationConfigIdentifier,
    String? replicationSettings,
    required String replicationType,
    String? resourceIdentifier,
    required String sourceEndpointArn,
    bool? startReplication,
    String? supplementalSettings,
    required String tableMappings,
    Map<String, String>? tags,
    required String targetEndpointArn,
  }) : computeConfig = pulumi.Input.asInput<ReplicationConfigComputeConfig>(
         computeConfig,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       replicationConfigIdentifier = pulumi.Input.asInput<String>(
         replicationConfigIdentifier,
       ),
       replicationSettings = pulumi.Input.asOptionalInput<String>(
         replicationSettings,
       ),
       replicationType = pulumi.Input.asInput<String>(replicationType),
       resourceIdentifier = pulumi.Input.asOptionalInput<String>(
         resourceIdentifier,
       ),
       sourceEndpointArn = pulumi.Input.asInput<String>(sourceEndpointArn),
       startReplication = pulumi.Input.asOptionalInput<bool>(startReplication),
       supplementalSettings = pulumi.Input.asOptionalInput<String>(
         supplementalSettings,
       ),
       tableMappings = pulumi.Input.asInput<String>(tableMappings),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       targetEndpointArn = pulumi.Input.asInput<String>(targetEndpointArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeConfig':
          pulumi.Input.mapInputValue<
            ReplicationConfigComputeConfig,
            Map<String, dynamic>
          >(computeConfig, (value) => value.toMap()),
      'region': ?region,
      'replicationConfigIdentifier': replicationConfigIdentifier,
      'replicationSettings': ?replicationSettings,
      'replicationType': replicationType,
      'resourceIdentifier': ?resourceIdentifier,
      'sourceEndpointArn': sourceEndpointArn,
      'startReplication': ?startReplication,
      'supplementalSettings': ?supplementalSettings,
      'tableMappings': tableMappings,
      'tags': ?tags,
      'targetEndpointArn': targetEndpointArn,
    };
  }

  factory ReplicationConfigArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigArgs(
      computeConfig: ReplicationConfigComputeConfig.fromMap(
        (map['computeConfig'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] == null ? null : map['region'] as String,
      replicationConfigIdentifier: map['replicationConfigIdentifier'] as String,
      replicationSettings: map['replicationSettings'] == null
          ? null
          : map['replicationSettings'] as String,
      replicationType: map['replicationType'] as String,
      resourceIdentifier: map['resourceIdentifier'] == null
          ? null
          : map['resourceIdentifier'] as String,
      sourceEndpointArn: map['sourceEndpointArn'] as String,
      startReplication: map['startReplication'] == null
          ? null
          : map['startReplication'] as bool,
      supplementalSettings: map['supplementalSettings'] == null
          ? null
          : map['supplementalSettings'] as String,
      tableMappings: map['tableMappings'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetEndpointArn: map['targetEndpointArn'] as String,
    );
  }
}
