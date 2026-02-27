import 'package:pulumi/pulumi.dart';
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
class Replicator extends CustomResource {
  /// ARN of the Replicator.
  late final Output<String> arn;
  late final Output<String> currentVersion;

  /// A summary description of the replicator.
  late final Output<String?> description;

  /// A list of Kafka clusters which are targets of the replicator.
  late final Output<List<ReplicatorKafkaCluster>> kafkaClusters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  late final Output<ReplicatorReplicationInfoList> replicationInfoList;

  /// The name of the replicator.
  late final Output<String> replicatorName;

  /// The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  late final Output<String> serviceExecutionRoleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Replicator(
    String name, {
    ReplicatorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/replicator:Replicator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
