import 'package:pulumi/pulumi.dart' as pulumi;
import '../replicator_kafka_cluster/replicator_kafka_cluster.dart';
import '../replicator_replication_info_list/replicator_replication_info_list.dart';
import 'replicator_args.dart';

/// Resource for managing an AWS Managed Streaming for Kafka Replicator.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK replicators using the replicator ARN. For example:
///
/// ```sh
/// $ pulumi import aws:msk/replicator:Replicator example arn:aws:kafka:us-west-2:123456789012:configuration/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class Replicator extends pulumi.CustomResource {
  /// ARN of the Replicator.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> currentVersion;

  /// A summary description of the replicator.
  late final pulumi.Output<String?> description;

  /// A list of Kafka clusters which are targets of the replicator.
  late final pulumi.Output<List<ReplicatorKafkaCluster>> kafkaClusters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  late final pulumi.Output<ReplicatorReplicationInfoList> replicationInfoList;

  /// The name of the replicator.
  late final pulumi.Output<String> replicatorName;

  /// The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  late final pulumi.Output<String> serviceExecutionRoleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Replicator(
    String name, {
    ReplicatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/replicator:Replicator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.currentVersion = registerOutput<String>('currentVersion');
    this.description = registerOutput<String?>('description');
    this.kafkaClusters =
        registerOutput<List<ReplicatorKafkaCluster>>('kafkaClusters');
    this.region = registerOutput<String>('region');
    this.replicationInfoList =
        registerOutput<ReplicatorReplicationInfoList>('replicationInfoList');
    this.replicatorName = registerOutput<String>('replicatorName');
    this.serviceExecutionRoleArn =
        registerOutput<String>('serviceExecutionRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
