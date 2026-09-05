import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_node.dart';
import 'cluster_server_side_encryption.dart';
import 'cluster_state.dart';

/// Provides a DAX Cluster resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.dax.Cluster("bar", {
///     clusterName: "cluster-example",
///     iamRoleArn: example.arn,
///     nodeType: "dax.r4.large",
///     replicationFactor: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.dax.Cluster("bar",
///     cluster_name="cluster-example",
///     iam_role_arn=example["arn"],
///     node_type="dax.r4.large",
///     replication_factor=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Aws.Dax.Cluster("bar", new()
///     {
///         ClusterName = "cluster-example",
///         IamRoleArn = example.Arn,
///         NodeType = "dax.r4.large",
///         ReplicationFactor = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dax"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dax.NewCluster(ctx, "bar", &dax.ClusterArgs{
/// 			ClusterName:       pulumi.String("cluster-example"),
/// 			IamRoleArn:        pulumi.Any(example.Arn),
/// 			NodeType:          pulumi.String("dax.r4.large"),
/// 			ReplicationFactor: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// resource "aws_dax_cluster" "bar" {
///   cluster_name       = "cluster-example"
///   iam_role_arn       = example.arn
///   node_type          = "dax.r4.large"
///   replication_factor = 1
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
///         var bar = new Cluster("bar", ClusterArgs.builder()
///             .clusterName("cluster-example")
///             .iamRoleArn(example.arn())
///             .nodeType("dax.r4.large")
///             .replicationFactor(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:dax:Cluster
///     properties:
///       clusterName: cluster-example
///       iamRoleArn: ${example.arn}
///       nodeType: dax.r4.large
///       replicationFactor: 1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DAX Clusters using the `clusterName`. For example:
///
/// ```sh
/// $ pulumi import aws:dax/cluster:Cluster my_cluster my_cluster
/// ```
class Cluster extends pulumi.CustomResource {
  /// The ARN of the DAX cluster
  late final pulumi.Output<String> arn;
  /// List of Availability Zones in which the
  /// nodes will be created
  late final pulumi.Output<List<String>?> availabilityZones;
  /// The DNS name of the DAX cluster without the port appended
  late final pulumi.Output<String> clusterAddress;
  /// The type of encryption the
  /// cluster's endpoint should support. Valid values are: `NONE` and `TLS`.
  /// Default value is `NONE`.
  late final pulumi.Output<String?> clusterEndpointEncryptionType;
  /// Group identifier. DAX converts this name to
  /// lowercase
  late final pulumi.Output<String> clusterName;
  /// The configuration endpoint for this DAX cluster,
  /// consisting of a DNS name and a port number
  late final pulumi.Output<String> configurationEndpoint;
  /// Description for the cluster
  late final pulumi.Output<String?> description;
  /// Valid ARN that identifies
  /// an IAM role. At runtime, DAX will assume this role and use the role's
  /// permissions to access DynamoDB on your behalf
  late final pulumi.Output<String> iamRoleArn;
  /// Specifies the weekly time range for when
  /// maintenance on the cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi`
  /// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
  /// `sun:05:00-sun:09:00`
  late final pulumi.Output<String> maintenanceWindow;
  /// The compute and memory capacity of the nodes. See
  /// [Nodes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes) for supported node types
  late final pulumi.Output<String> nodeType;
  /// List of node objects including `id`, `address`, `port` and
  /// `availabilityZone`. Referenceable e.g., as
  /// `${aws_dax_cluster.test.nodes.0.address}`
  late final pulumi.Output<List<ClusterNode>> nodes;
  /// ARN of an
  /// SNS topic to send DAX notifications to. Example:
  /// `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  late final pulumi.Output<String?> notificationTopicArn;
  /// Name of the parameter group to associate
  /// with this DAX cluster
  late final pulumi.Output<String> parameterGroupName;
  /// The port used by the configuration endpoint
  late final pulumi.Output<int> port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The number of nodes in the DAX cluster. A
  /// replication factor of 1 will create a single-node cluster, without any read
  /// replicas
  late final pulumi.Output<int> replicationFactor;
  /// One or more VPC security groups associated
  /// with the cluster
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Encrypt at rest options
  late final pulumi.Output<ClusterServerSideEncryption?> serverSideEncryption;
  /// Name of the subnet group to be used for the
  /// cluster
  late final pulumi.Output<String> subnetGroupName;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_dax_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dax/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>?>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clusterAddress = registerOutput<String>('clusterAddress');
    clusterEndpointEncryptionType = registerOutput<String?>('clusterEndpointEncryptionType');
    clusterName = registerOutput<String>('clusterName');
    configurationEndpoint = registerOutput<String>('configurationEndpoint');
    description = registerOutput<String?>('description');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    nodeType = registerOutput<String>('nodeType');
    nodes = registerOutput<List<ClusterNode>>('nodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterNode>(guardedValue, (value) => ClusterNode.fromMap((value as Map).cast<String, dynamic>())); });
    notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    replicationFactor = registerOutput<int>('replicationFactor');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    serverSideEncryption = registerOutput<ClusterServerSideEncryption?>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetGroupName = registerOutput<String>('subnetGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dax/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>?>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clusterAddress = registerOutput<String>('clusterAddress');
    clusterEndpointEncryptionType = registerOutput<String?>('clusterEndpointEncryptionType');
    clusterName = registerOutput<String>('clusterName');
    configurationEndpoint = registerOutput<String>('configurationEndpoint');
    description = registerOutput<String?>('description');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    nodeType = registerOutput<String>('nodeType');
    nodes = registerOutput<List<ClusterNode>>('nodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterNode>(guardedValue, (value) => ClusterNode.fromMap((value as Map).cast<String, dynamic>())); });
    notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    replicationFactor = registerOutput<int>('replicationFactor');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    serverSideEncryption = registerOutput<ClusterServerSideEncryption?>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetGroupName = registerOutput<String>('subnetGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'aws:dax/cluster:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>?>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clusterAddress = registerOutput<String>('clusterAddress');
    clusterEndpointEncryptionType = registerOutput<String?>('clusterEndpointEncryptionType');
    clusterName = registerOutput<String>('clusterName');
    configurationEndpoint = registerOutput<String>('configurationEndpoint');
    description = registerOutput<String?>('description');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    nodeType = registerOutput<String>('nodeType');
    nodes = registerOutput<List<ClusterNode>>('nodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterNode>(guardedValue, (value) => ClusterNode.fromMap((value as Map).cast<String, dynamic>())); });
    notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    replicationFactor = registerOutput<int>('replicationFactor');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    serverSideEncryption = registerOutput<ClusterServerSideEncryption?>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetGroupName = registerOutput<String>('subnetGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
