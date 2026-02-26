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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.msk.Replicator("test", {
/// replicatorName: "test-name",
/// description: "test-description",
/// serviceExecutionRoleArn: sourceAwsIamRole.arn,
/// kafkaClusters: [
/// {
/// amazonMskCluster: {
/// mskClusterArn: source.arn,
/// },
/// vpcConfig: {
/// subnetIds: sourceAwsSubnet.map(__item => __item.id),
/// securityGroupsIds: [sourceAwsSecurityGroup.id],
/// },
/// },
/// {
/// amazonMskCluster: {
/// mskClusterArn: target.arn,
/// },
/// vpcConfig: {
/// subnetIds: targetAwsSubnet.map(__item => __item.id),
/// securityGroupsIds: [targetAwsSecurityGroup.id],
/// },
/// },
/// ],
/// replicationInfoList: {
/// sourceKafkaClusterArn: source.arn,
/// targetKafkaClusterArn: target.arn,
/// targetCompressionType: "NONE",
/// topicReplications: [{
/// topicNameConfiguration: {
/// type: "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
/// },
/// topicsToReplicates: [".*"],
/// startingPosition: {
/// type: "LATEST",
/// },
/// }],
/// consumerGroupReplications: [{
/// consumerGroupsToReplicates: [".*"],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.msk.Replicator("test",
/// replicator_name="test-name",
/// description="test-description",
/// service_execution_role_arn=source_aws_iam_role["arn"],
/// kafka_clusters=[
/// {
/// "amazon_msk_cluster": {
/// "msk_cluster_arn": source["arn"],
/// },
/// "vpc_config": {
/// "subnet_ids": [__item["id"] for __item in source_aws_subnet],
/// "security_groups_ids": [source_aws_security_group["id"]],
/// },
/// },
/// {
/// "amazon_msk_cluster": {
/// "msk_cluster_arn": target["arn"],
/// },
/// "vpc_config": {
/// "subnet_ids": [__item["id"] for __item in target_aws_subnet],
/// "security_groups_ids": [target_aws_security_group["id"]],
/// },
/// },
/// ],
/// replication_info_list={
/// "source_kafka_cluster_arn": source["arn"],
/// "target_kafka_cluster_arn": target["arn"],
/// "target_compression_type": "NONE",
/// "topic_replications": [{
/// "topic_name_configuration": {
/// "type": "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
/// },
/// "topics_to_replicates": [".*"],
/// "starting_position": {
/// "type": "LATEST",
/// },
/// }],
/// "consumer_group_replications": [{
/// "consumer_groups_to_replicates": [".*"],
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Msk.Replicator("test", new()
/// {
/// ReplicatorName = "test-name",
/// Description = "test-description",
/// ServiceExecutionRoleArn = sourceAwsIamRole.Arn,
/// KafkaClusters = new[]
/// {
/// new Aws.Msk.Inputs.ReplicatorKafkaClusterArgs
/// {
/// AmazonMskCluster = new Aws.Msk.Inputs.ReplicatorKafkaClusterAmazonMskClusterArgs
/// {
/// MskClusterArn = source.Arn,
/// },
/// VpcConfig = new Aws.Msk.Inputs.ReplicatorKafkaClusterVpcConfigArgs
/// {
/// SubnetIds = sourceAwsSubnet.Select(__item => __item.Id).ToList(),
/// SecurityGroupsIds = new[]
/// {
/// sourceAwsSecurityGroup.Id,
/// },
/// },
/// },
/// new Aws.Msk.Inputs.ReplicatorKafkaClusterArgs
/// {
/// AmazonMskCluster = new Aws.Msk.Inputs.ReplicatorKafkaClusterAmazonMskClusterArgs
/// {
/// MskClusterArn = target.Arn,
/// },
/// VpcConfig = new Aws.Msk.Inputs.ReplicatorKafkaClusterVpcConfigArgs
/// {
/// SubnetIds = targetAwsSubnet.Select(__item => __item.Id).ToList(),
/// SecurityGroupsIds = new[]
/// {
/// targetAwsSecurityGroup.Id,
/// },
/// },
/// },
/// },
/// ReplicationInfoList = new Aws.Msk.Inputs.ReplicatorReplicationInfoListArgs
/// {
/// SourceKafkaClusterArn = source.Arn,
/// TargetKafkaClusterArn = target.Arn,
/// TargetCompressionType = "NONE",
/// TopicReplications = new[]
/// {
/// new Aws.Msk.Inputs.ReplicatorReplicationInfoListTopicReplicationArgs
/// {
/// TopicNameConfiguration = new Aws.Msk.Inputs.ReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationArgs
/// {
/// Type = "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
/// },
/// TopicsToReplicates = new[]
/// {
/// ".*",
/// },
/// StartingPosition = new Aws.Msk.Inputs.ReplicatorReplicationInfoListTopicReplicationStartingPositionArgs
/// {
/// Type = "LATEST",
/// },
/// },
/// },
/// ConsumerGroupReplications = new[]
/// {
/// new Aws.Msk.Inputs.ReplicatorReplicationInfoListConsumerGroupReplicationArgs
/// {
/// ConsumerGroupsToReplicates = new[]
/// {
/// ".*",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := msk.NewReplicator(ctx, "test", &msk.ReplicatorArgs{
/// ReplicatorName: pulumi.String("test-name"),
/// Description: pulumi.String("test-description"),
/// ServiceExecutionRoleArn: pulumi.Any(sourceAwsIamRole.Arn),
/// KafkaClusters: msk.ReplicatorKafkaClusterArray{
/// &msk.ReplicatorKafkaClusterArgs{
/// AmazonMskCluster: &msk.ReplicatorKafkaClusterAmazonMskClusterArgs{
/// MskClusterArn: pulumi.Any(source.Arn),
/// },
/// VpcConfig: &msk.ReplicatorKafkaClusterVpcConfigArgs{
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:9,27-48)),
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
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:17,27-48)),
/// SecurityGroupsIds: pulumi.StringArray{
/// targetAwsSecurityGroup.Id,
/// },
/// },
/// },
/// },
/// ReplicationInfoList: &msk.ReplicatorReplicationInfoListArgs{
/// SourceKafkaClusterArn: pulumi.Any(source.Arn),
/// TargetKafkaClusterArn: pulumi.Any(target.Arn),
/// TargetCompressionType: pulumi.String("NONE"),
/// TopicReplications: msk.ReplicatorReplicationInfoListTopicReplicationArray{
/// &msk.ReplicatorReplicationInfoListTopicReplicationArgs{
/// TopicNameConfiguration: &msk.ReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationArgs{
/// Type: pulumi.String("PREFIXED_WITH_SOURCE_CLUSTER_ALIAS"),
/// },
/// TopicsToReplicates: pulumi.StringArray{
/// pulumi.String(".*"),
/// },
/// StartingPosition: &msk.ReplicatorReplicationInfoListTopicReplicationStartingPositionArgs{
/// Type: pulumi.String("LATEST"),
/// },
/// },
/// },
/// ConsumerGroupReplications: msk.ReplicatorReplicationInfoListConsumerGroupReplicationArray{
/// &msk.ReplicatorReplicationInfoListConsumerGroupReplicationArgs{
/// ConsumerGroupsToReplicates: pulumi.StringArray{
/// pulumi.String(".*"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.msk.inputs.ReplicatorKafkaClusterArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorKafkaClusterAmazonMskClusterArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorKafkaClusterVpcConfigArgs;
/// import com.pulumi.aws.msk.inputs.ReplicatorReplicationInfoListArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Replicator("test", ReplicatorArgs.builder()
/// .replicatorName("test-name")
/// .description("test-description")
/// .serviceExecutionRoleArn(sourceAwsIamRole.arn())
/// .kafkaClusters(
/// ReplicatorKafkaClusterArgs.builder()
/// .amazonMskCluster(ReplicatorKafkaClusterAmazonMskClusterArgs.builder()
/// .mskClusterArn(source.arn())
/// .build())
/// .vpcConfig(ReplicatorKafkaClusterVpcConfigArgs.builder()
/// .subnetIds(sourceAwsSubnet.stream().map(element -> element.id()).collect(toList()))
/// .securityGroupsIds(sourceAwsSecurityGroup.id())
/// .build())
/// .build(),
/// ReplicatorKafkaClusterArgs.builder()
/// .amazonMskCluster(ReplicatorKafkaClusterAmazonMskClusterArgs.builder()
/// .mskClusterArn(target.arn())
/// .build())
/// .vpcConfig(ReplicatorKafkaClusterVpcConfigArgs.builder()
/// .subnetIds(targetAwsSubnet.stream().map(element -> element.id()).collect(toList()))
/// .securityGroupsIds(targetAwsSecurityGroup.id())
/// .build())
/// .build())
/// .replicationInfoList(ReplicatorReplicationInfoListArgs.builder()
/// .sourceKafkaClusterArn(source.arn())
/// .targetKafkaClusterArn(target.arn())
/// .targetCompressionType("NONE")
/// .topicReplications(ReplicatorReplicationInfoListTopicReplicationArgs.builder()
/// .topicNameConfiguration(ReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationArgs.builder()
/// .type("PREFIXED_WITH_SOURCE_CLUSTER_ALIAS")
/// .build())
/// .topicsToReplicates(".*")
/// .startingPosition(ReplicatorReplicationInfoListTopicReplicationStartingPositionArgs.builder()
/// .type("LATEST")
/// .build())
/// .build())
/// .consumerGroupReplications(ReplicatorReplicationInfoListConsumerGroupReplicationArgs.builder()
/// .consumerGroupsToReplicates(".*")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
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

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
