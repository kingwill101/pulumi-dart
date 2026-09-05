import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_args.dart';
import 'replicator_kafka_cluster.dart';
import 'replicator_log_delivery.dart';
import 'replicator_replication_info_list.dart';
import 'replicator_state.dart';

/// Resource for managing an AWS Managed Streaming for Kafka Replicator.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.msk.Replicator("test", {
///     replicationInfoList: {
///         consumerGroupReplications: [{
///             consumerGroupsToReplicates: [".*"],
///         }],
///         topicReplications: [{
///             topicNameConfiguration: {
///                 type: "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
///             },
///             startingPosition: {
///                 type: "LATEST",
///             },
///             topicsToReplicates: [".*"],
///         }],
///         sourceKafkaClusterArn: source.arn,
///         targetKafkaClusterArn: target.arn,
///         targetCompressionType: "NONE",
///     },
///     kafkaClusters: [
///         {
///             amazonMskCluster: {
///                 mskClusterArn: source.arn,
///             },
///             vpcConfig: {
///                 subnetIds: sourceAwsSubnet.map(__item => __item.id),
///                 securityGroupsIds: [sourceAwsSecurityGroup.id],
///             },
///         },
///         {
///             amazonMskCluster: {
///                 mskClusterArn: target.arn,
///             },
///             vpcConfig: {
///                 subnetIds: targetAwsSubnet.map(__item => __item.id),
///                 securityGroupsIds: [targetAwsSecurityGroup.id],
///             },
///         },
///     ],
///     replicatorName: "test-name",
///     description: "test-description",
///     serviceExecutionRoleArn: sourceAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.msk.Replicator("test",
///     replication_info_list={
///         "consumer_group_replications": [{
///             "consumer_groups_to_replicates": [".*"],
///         }],
///         "topic_replications": [{
///             "topic_name_configuration": {
///                 "type": "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
///             },
///             "starting_position": {
///                 "type": "LATEST",
///             },
///             "topics_to_replicates": [".*"],
///         }],
///         "source_kafka_cluster_arn": source["arn"],
///         "target_kafka_cluster_arn": target["arn"],
///         "target_compression_type": "NONE",
///     },
///     kafka_clusters=[
///         {
///             "amazon_msk_cluster": {
///                 "msk_cluster_arn": source["arn"],
///             },
///             "vpc_config": {
///                 "subnet_ids": [__item["id"] for __item in source_aws_subnet],
///                 "security_groups_ids": [source_aws_security_group["id"]],
///             },
///         },
///         {
///             "amazon_msk_cluster": {
///                 "msk_cluster_arn": target["arn"],
///             },
///             "vpc_config": {
///                 "subnet_ids": [__item["id"] for __item in target_aws_subnet],
///                 "security_groups_ids": [target_aws_security_group["id"]],
///             },
///         },
///     ],
///     replicator_name="test-name",
///     description="test-description",
///     service_execution_role_arn=source_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Msk.Replicator("test", new()
///     {
///         ReplicationInfoList = new Aws.Msk.Inputs.ReplicatorReplicationInfoListArgs
///         {
///             ConsumerGroupReplications = new[]
///             {
///                 new Aws.Msk.Inputs.ReplicatorReplicationInfoListConsumerGroupReplicationArgs
///                 {
///                     ConsumerGroupsToReplicates = new[]
///                     {
///                         ".*",
///                     },
///                 },
///             },
///             TopicReplications = new[]
///             {
///                 new Aws.Msk.Inputs.ReplicatorReplicationInfoListTopicReplicationArgs
///                 {
///                     TopicNameConfiguration = new Aws.Msk.Inputs.ReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationArgs
///                     {
///                         Type = "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
///                     },
///                     StartingPosition = new Aws.Msk.Inputs.ReplicatorReplicationInfoListTopicReplicationStartingPositionArgs
///                     {
///                         Type = "LATEST",
///                     },
///                     TopicsToReplicates = new[]
///                     {
///                         ".*",
///                     },
///                 },
///             },
///             SourceKafkaClusterArn = source.Arn,
///             TargetKafkaClusterArn = target.Arn,
///             TargetCompressionType = "NONE",
///         },
///         KafkaClusters = new[]
///         {
///             new Aws.Msk.Inputs.ReplicatorKafkaClusterArgs
///             {
///                 AmazonMskCluster = new Aws.Msk.Inputs.ReplicatorKafkaClusterAmazonMskClusterArgs
///                 {
///                     MskClusterArn = source.Arn,
///                 },
///                 VpcConfig = new Aws.Msk.Inputs.ReplicatorKafkaClusterVpcConfigArgs
///                 {
///                     SubnetIds = sourceAwsSubnet.Select(__item => __item.Id).ToList(),
///                     SecurityGroupsIds = new[]
///                     {
///                         sourceAwsSecurityGroup.Id,
///                     },
///                 },
///             },
///             new Aws.Msk.Inputs.ReplicatorKafkaClusterArgs
///             {
///                 AmazonMskCluster = new Aws.Msk.Inputs.ReplicatorKafkaClusterAmazonMskClusterArgs
///                 {
///                     MskClusterArn = target.Arn,
///                 },
///                 VpcConfig = new Aws.Msk.Inputs.ReplicatorKafkaClusterVpcConfigArgs
///                 {
///                     SubnetIds = targetAwsSubnet.Select(__item => __item.Id).ToList(),
///                     SecurityGroupsIds = new[]
///                     {
///                         targetAwsSecurityGroup.Id,
///                     },
///                 },
///             },
///         },
///         ReplicatorName = "test-name",
///         Description = "test-description",
///         ServiceExecutionRoleArn = sourceAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := msk.NewReplicator(ctx, "test", &msk.ReplicatorArgs{
/// ReplicationInfoList: &msk.ReplicatorReplicationInfoListArgs{
/// ConsumerGroupReplications: msk.ReplicatorReplicationInfoListConsumerGroupReplicationArray{
/// &msk.ReplicatorReplicationInfoListConsumerGroupReplicationArgs{
/// ConsumerGroupsToReplicates: pulumi.StringArray{
/// pulumi.String(".*"),
/// },
/// },
/// },
/// TopicReplications: msk.ReplicatorReplicationInfoListTopicReplicationArray{
/// &msk.ReplicatorReplicationInfoListTopicReplicationArgs{
/// TopicNameConfiguration: &msk.ReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationArgs{
/// Type: pulumi.String("PREFIXED_WITH_SOURCE_CLUSTER_ALIAS"),
/// },
/// StartingPosition: &msk.ReplicatorReplicationInfoListTopicReplicationStartingPositionArgs{
/// Type: pulumi.String("LATEST"),
/// },
/// TopicsToReplicates: pulumi.StringArray{
/// pulumi.String(".*"),
/// },
/// },
/// },
/// SourceKafkaClusterArn: pulumi.Any(source.Arn),
/// TargetKafkaClusterArn: pulumi.Any(target.Arn),
/// TargetCompressionType: pulumi.String("NONE"),
/// },
/// KafkaClusters: msk.ReplicatorKafkaClusterArray{
/// &msk.ReplicatorKafkaClusterArgs{
/// AmazonMskCluster: &msk.ReplicatorKafkaClusterAmazonMskClusterArgs{
/// MskClusterArn: pulumi.Any(source.Arn),
/// },
/// VpcConfig: &msk.ReplicatorKafkaClusterVpcConfigArgs{
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:23,27-48)),
/// SecurityGroupsIds: pulumi.StringArray{
/// sourceAwsSecurityGroup.Id,
/// },
/// },
/// },
/// &msk.ReplicatorKafkaClusterArgs{
/// AmazonMskCluster: &msk.ReplicatorKafkaClusterAmazonMskClusterArgs{
/// MskClusterArn: pulumi.Any(target.Arn),
/// },
/// VpcConfig: &msk.ReplicatorKafkaClusterVpcConfigArgs{
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:31,27-48)),
/// SecurityGroupsIds: pulumi.StringArray{
/// targetAwsSecurityGroup.Id,
/// },
/// },
/// },
/// },
/// ReplicatorName: pulumi.String("test-name"),
/// Description: pulumi.String("test-description"),
/// ServiceExecutionRoleArn: pulumi.Any(sourceAwsIamRole.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_msk_replicator" "test" {
///   replication_info_list = {
///     consumer_group_replications = [{
///       "consumerGroupsToReplicates" = [".*"]
///     }]
///     topic_replications = [{
///       "topicNameConfiguration" = {
///         "type" = "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS"
///       }
///       "startingPosition" = {
///         "type" = "LATEST"
///       }
///       "topicsToReplicates" = [".*"]
///     }]
///     source_kafka_cluster_arn = source.arn
///     target_kafka_cluster_arn = target.arn
///     target_compression_type  = "NONE"
///   }
///   kafka_clusters {
///     amazon_msk_cluster = {
///       msk_cluster_arn = source.arn
///     }
///     vpc_config = {
///       subnet_ids          = sourceAwsSubnet[*].id
///       security_groups_ids = [sourceAwsSecurityGroup.id]
///     }
///   }
///   kafka_clusters {
///     amazon_msk_cluster = {
///       msk_cluster_arn = target.arn
///     }
///     vpc_config = {
///       subnet_ids          = targetAwsSubnet[*].id
///       security_groups_ids = [targetAwsSecurityGroup.id]
///     }
///   }
///   replicator_name            = "test-name"
///   description                = "test-description"
///   service_execution_role_arn = sourceAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.Replicator;
/// import com.pulumi.aws.msk.ReplicatorArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorReplicationInfoListArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorReplicationInfoListConsumerGroupReplicationArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorReplicationInfoListTopicReplicationArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorReplicationInfoListTopicReplicationStartingPositionArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorKafkaClusterArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorKafkaClusterAmazonMskClusterArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorKafkaClusterVpcConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Replicator("test", ReplicatorArgs.builder()
///             .replicationInfoList(ReplicatorReplicationInfoListArgs.builder()
///                 .consumerGroupReplications(ReplicatorReplicationInfoListConsumerGroupReplicationArgs.builder()
///                     .consumerGroupsToReplicates(".*")
///                     .build())
///                 .topicReplications(ReplicatorReplicationInfoListTopicReplicationArgs.builder()
///                     .topicNameConfiguration(ReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationArgs.builder()
///                         .type("PREFIXED_WITH_SOURCE_CLUSTER_ALIAS")
///                         .build())
///                     .startingPosition(ReplicatorReplicationInfoListTopicReplicationStartingPositionArgs.builder()
///                         .type("LATEST")
///                         .build())
///                     .topicsToReplicates(".*")
///                     .build())
///                 .sourceKafkaClusterArn(source.arn())
///                 .targetKafkaClusterArn(target.arn())
///                 .targetCompressionType("NONE")
///                 .build())
///             .kafkaClusters(
///                 ReplicatorKafkaClusterArgs.builder()
///                     .amazonMskCluster(ReplicatorKafkaClusterAmazonMskClusterArgs.builder()
///                         .mskClusterArn(source.arn())
///                         .build())
///                     .vpcConfig(ReplicatorKafkaClusterVpcConfigArgs.builder()
///                         .subnetIds(sourceAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                         .securityGroupsIds(sourceAwsSecurityGroup.id())
///                         .build())
///                     .build(),
///                 ReplicatorKafkaClusterArgs.builder()
///                     .amazonMskCluster(ReplicatorKafkaClusterAmazonMskClusterArgs.builder()
///                         .mskClusterArn(target.arn())
///                         .build())
///                     .vpcConfig(ReplicatorKafkaClusterVpcConfigArgs.builder()
///                         .subnetIds(targetAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                         .securityGroupsIds(targetAwsSecurityGroup.id())
///                         .build())
///                     .build())
///             .replicatorName("test-name")
///             .description("test-description")
///             .serviceExecutionRoleArn(sourceAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the MSK replicator.
///
///
/// Using `pulumi import`, import MSK replicators using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/replicator:Replicator example arn:aws:kafka:us-west-2:123456789012:replicator/example-replicator/b3a16098-f408-4995-8e36-482db4f1b46b
/// ```
class Replicator extends pulumi.CustomResource {
  /// ARN of the Replicator.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> currentVersion;
  /// A summary description of the replicator.
  late final pulumi.Output<String?> description;
  /// A list of Kafka clusters which are targets of the replicator.
  late final pulumi.Output<List<ReplicatorKafkaCluster>> kafkaClusters;
  /// Configuration block for delivering replicator logs to customer destinations. Detailed below.
  late final pulumi.Output<ReplicatorLogDelivery?> logDelivery;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  late final pulumi.Output<ReplicatorReplicationInfoList> replicationInfoList;
  /// The name of the replicator.
  late final pulumi.Output<String> replicatorName;
  /// The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  late final pulumi.Output<String> serviceExecutionRoleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Replicator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Replicator]. {@macro pulumi_msk_replicator_replicator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Replicator(
    String name, {
    ReplicatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/replicator:Replicator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    currentVersion = registerOutput<String>('currentVersion');
    description = registerOutput<String?>('description');
    kafkaClusters = registerOutput<List<ReplicatorKafkaCluster>>('kafkaClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicatorKafkaCluster>(guardedValue, (value) => ReplicatorKafkaCluster.fromMap((value as Map).cast<String, dynamic>())); });
    logDelivery = registerOutput<ReplicatorLogDelivery?>('logDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicatorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationInfoList = registerOutput<ReplicatorReplicationInfoList>('replicationInfoList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicatorReplicationInfoList.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicatorName = registerOutput<String>('replicatorName');
    serviceExecutionRoleArn = registerOutput<String>('serviceExecutionRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Replicator] resource's state with the given [name] and [id].
  static Replicator get(
    String name,
    pulumi.Input<String> id, {
    ReplicatorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Replicator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Replicator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/replicator:Replicator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    currentVersion = registerOutput<String>('currentVersion');
    description = registerOutput<String?>('description');
    kafkaClusters = registerOutput<List<ReplicatorKafkaCluster>>('kafkaClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicatorKafkaCluster>(guardedValue, (value) => ReplicatorKafkaCluster.fromMap((value as Map).cast<String, dynamic>())); });
    logDelivery = registerOutput<ReplicatorLogDelivery?>('logDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicatorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationInfoList = registerOutput<ReplicatorReplicationInfoList>('replicationInfoList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicatorReplicationInfoList.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicatorName = registerOutput<String>('replicatorName');
    serviceExecutionRoleArn = registerOutput<String>('serviceExecutionRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Replicator] resource.
  Replicator.reference(String urn)
    : super(
        'aws:msk/replicator:Replicator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    currentVersion = registerOutput<String>('currentVersion');
    description = registerOutput<String?>('description');
    kafkaClusters = registerOutput<List<ReplicatorKafkaCluster>>('kafkaClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicatorKafkaCluster>(guardedValue, (value) => ReplicatorKafkaCluster.fromMap((value as Map).cast<String, dynamic>())); });
    logDelivery = registerOutput<ReplicatorLogDelivery?>('logDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicatorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationInfoList = registerOutput<ReplicatorReplicationInfoList>('replicationInfoList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicatorReplicationInfoList.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicatorName = registerOutput<String>('replicatorName');
    serviceExecutionRoleArn = registerOutput<String>('serviceExecutionRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
