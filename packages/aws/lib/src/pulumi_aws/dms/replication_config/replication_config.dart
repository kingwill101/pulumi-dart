import 'package:pulumi/pulumi.dart';
import '../replication_config_compute_config/replication_config_compute_config.dart';
import 'replication_config_args.dart';

/// Provides a DMS Serverless replication config resource.
///
/// > **NOTE:** Changing most arguments will stop the replication if it is running. You can set `start_replication` to resume the replication afterwards.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DMS replication configuration.
///
///
/// Using `pulumi import`, import a replication config using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationConfig:ReplicationConfig example arn:aws:dms:us-east-1:123456789012:replication-config:UX6OL6MHMMJKFFOXE3H7LLJCMEKBDUG4ZV7DRSI
/// ```
class ReplicationConfig extends CustomResource {
  /// The Amazon Resource Name (ARN) for the serverless replication config.
  late final Output<String> arn;

  /// Configuration block for provisioning an DMS Serverless replication.
  late final Output<ReplicationConfigComputeConfig> computeConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Unique identifier that you want to use to create the config.
  late final Output<String> replicationConfigIdentifier;

  /// An escaped JSON string that are used to provision this replication configuration. For example, [Change processing tuning settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html)
  late final Output<String> replicationSettings;

  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  late final Output<String> replicationType;

  /// Unique value or name that you set for a given resource that can be used to construct an Amazon Resource Name (ARN) for that resource. For more information, see [Fine-grained access control using resource names and tags](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess)
  late final Output<String> resourceIdentifier;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  late final Output<String> sourceEndpointArn;

  /// Whether to run or stop the serverless replication, default is false.
  late final Output<bool?> startReplication;

  /// JSON settings for specifying supplemental data. For more information see [Specifying supplemental data for task settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
  late final Output<String?> supplementalSettings;

  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  late final Output<String> tableMappings;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  late final Output<String> targetEndpointArn;

  ReplicationConfig(
    String name, {
    ReplicationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationConfig:ReplicationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.computeConfig =
        registerOutput<ReplicationConfigComputeConfig>('computeConfig');
    this.region = registerOutput<String>('region');
    this.replicationConfigIdentifier =
        registerOutput<String>('replicationConfigIdentifier');
    this.replicationSettings = registerOutput<String>('replicationSettings');
    this.replicationType = registerOutput<String>('replicationType');
    this.resourceIdentifier = registerOutput<String>('resourceIdentifier');
    this.sourceEndpointArn = registerOutput<String>('sourceEndpointArn');
    this.startReplication = registerOutput<bool?>('startReplication');
    this.supplementalSettings = registerOutput<String?>('supplementalSettings');
    this.tableMappings = registerOutput<String>('tableMappings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetEndpointArn = registerOutput<String>('targetEndpointArn');
  }
}
