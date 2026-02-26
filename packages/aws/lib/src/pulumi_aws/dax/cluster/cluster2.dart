import 'package:pulumi/pulumi.dart';
import '../cluster_node/cluster_node.dart';
import '../cluster_server_side_encryption/cluster_server_side_encryption.dart';
import 'cluster_args2.dart';

/// Provides a DAX Cluster resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.dax.Cluster("bar", {
/// clusterName: "cluster-example",
/// iamRoleArn: example.arn,
/// nodeType: "dax.r4.large",
/// replicationFactor: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.dax.Cluster("bar",
/// cluster_name="cluster-example",
/// iam_role_arn=example["arn"],
/// node_type="dax.r4.large",
/// replication_factor=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bar = new Aws.Dax.Cluster("bar", new()
/// {
/// ClusterName = "cluster-example",
/// IamRoleArn = example.Arn,
/// NodeType = "dax.r4.large",
/// ReplicationFactor = 1,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dax"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dax.NewCluster(ctx, "bar", &dax.ClusterArgs{
/// ClusterName:       pulumi.String("cluster-example"),
/// IamRoleArn:        pulumi.Any(example.Arn),
/// NodeType:          pulumi.String("dax.r4.large"),
/// ReplicationFactor: pulumi.Int(1),
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
/// import com.pulumi.aws.dax.Cluster;
/// import com.pulumi.aws.dax.ClusterArgs;
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
/// var bar = new Cluster("bar", ClusterArgs.builder()
/// .clusterName("cluster-example")
/// .iamRoleArn(example.arn())
/// .nodeType("dax.r4.large")
/// .replicationFactor(1)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: aws:dax:Cluster
/// properties:
/// clusterName: cluster-example
/// iamRoleArn: ${example.arn}
/// nodeType: dax.r4.large
/// replicationFactor: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DAX Clusters using the <span pulumi-lang-nodejs="`clusterName`" pulumi-lang-dotnet="`ClusterName`" pulumi-lang-go="`clusterName`" pulumi-lang-python="`cluster_name`" pulumi-lang-yaml="`clusterName`" pulumi-lang-java="`clusterName`">`cluster_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dax/cluster:Cluster my_cluster my_cluster
/// ```
///
/// [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes
class Cluster2 extends CustomResource {
  /// The ARN of the DAX cluster
  late final Output<String> arn;

  /// List of Availability Zones in which the
  /// nodes will be created
  late final Output<List<String>?> availabilityZones;

  /// The DNS name of the DAX cluster without the port appended
  late final Output<String> clusterAddress;

  /// The type of encryption the
  /// cluster's endpoint should support. Valid values are: `NONE` and `TLS`.
  /// Default value is `NONE`.
  late final Output<String?> clusterEndpointEncryptionType;

  /// Group identifier. DAX converts this name to
  /// lowercase
  late final Output<String> clusterName;

  /// The configuration endpoint for this DAX cluster,
  /// consisting of a DNS name and a port number
  late final Output<String> configurationEndpoint;

  /// Description for the cluster
  late final Output<String?> description;

  /// A valid Amazon Resource Name (ARN) that identifies
  /// an IAM role. At runtime, DAX will assume this role and use the role's
  /// permissions to access DynamoDB on your behalf
  late final Output<String> iamRoleArn;

  /// Specifies the weekly time range for when
  /// maintenance on the cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi`
  /// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
  /// `sun:05:00-sun:09:00`
  late final Output<String> maintenanceWindow;

  /// The compute and memory capacity of the nodes. See
  /// [Nodes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes) for supported node types
  late final Output<String> nodeType;

  /// List of node objects including <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>, <span pulumi-lang-nodejs="`address`" pulumi-lang-dotnet="`Address`" pulumi-lang-go="`address`" pulumi-lang-python="`address`" pulumi-lang-yaml="`address`" pulumi-lang-java="`address`">`address`</span>, <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> and
  /// <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span>. Referenceable e.g., as
  /// `${aws_dax_cluster.test.nodes.0.address}`
  late final Output<List<ClusterNode>> nodes;

  /// An Amazon Resource Name (ARN) of an
  /// SNS topic to send DAX notifications to. Example:
  /// `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  late final Output<String?> notificationTopicArn;

  /// Name of the parameter group to associate
  /// with this DAX cluster
  late final Output<String> parameterGroupName;

  /// The port used by the configuration endpoint
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of nodes in the DAX cluster. A
  /// replication factor of 1 will create a single-node cluster, without any read
  /// replicas
  late final Output<int> replicationFactor;

  /// One or more VPC security groups associated
  /// with the cluster
  late final Output<List<String>> securityGroupIds;

  /// Encrypt at rest options
  late final Output<ClusterServerSideEncryption?> serverSideEncryption;

  /// Name of the subnet group to be used for the
  /// cluster
  late final Output<String> subnetGroupName;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Cluster2(
    String name, {
    ClusterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dax/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZones = Output.createUnknown<List<String>?>();
    this.clusterAddress = Output.createUnknown<String>();
    this.clusterEndpointEncryptionType = Output.createUnknown<String?>();
    this.clusterName = Output.createUnknown<String>();
    this.configurationEndpoint = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.iamRoleArn = Output.createUnknown<String>();
    this.maintenanceWindow = Output.createUnknown<String>();
    this.nodeType = Output.createUnknown<String>();
    this.nodes = Output.createUnknown<List<ClusterNode>>();
    this.notificationTopicArn = Output.createUnknown<String?>();
    this.parameterGroupName = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.replicationFactor = Output.createUnknown<int>();
    this.securityGroupIds = Output.createUnknown<List<String>>();
    this.serverSideEncryption =
        Output.createUnknown<ClusterServerSideEncryption?>();
    this.subnetGroupName = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
