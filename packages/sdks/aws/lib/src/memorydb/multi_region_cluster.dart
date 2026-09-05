import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_cluster_args.dart';
import 'multi_region_cluster_state.dart';
import 'multi_region_cluster_timeouts.dart';

/// Provides a MemoryDB Multi Region Cluster.
///
/// More information about MemoryDB can be found in the [Developer Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/what-is-memorydb-for-redis.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.MultiRegionCluster("example", {
///     multiRegionClusterNameSuffix: "example",
///     nodeType: "db.r7g.xlarge",
/// });
/// const exampleCluster = new aws.memorydb.Cluster("example", {
///     aclName: exampleAwsMemorydbAcl.id,
///     autoMinorVersionUpgrade: false,
///     name: "example",
///     nodeType: "db.t4g.small",
///     numShards: 2,
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     snapshotRetentionLimit: 7,
///     subnetGroupName: exampleAwsMemorydbSubnetGroup.id,
///     multiRegionClusterName: example.multiRegionClusterName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.MultiRegionCluster("example",
///     multi_region_cluster_name_suffix="example",
///     node_type="db.r7g.xlarge")
/// example_cluster = aws.memorydb.Cluster("example",
///     acl_name=example_aws_memorydb_acl["id"],
///     auto_minor_version_upgrade=False,
///     name="example",
///     node_type="db.t4g.small",
///     num_shards=2,
///     security_group_ids=[example_aws_security_group["id"]],
///     snapshot_retention_limit=7,
///     subnet_group_name=example_aws_memorydb_subnet_group["id"],
///     multi_region_cluster_name=example.multi_region_cluster_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MemoryDb.MultiRegionCluster("example", new()
///     {
///         MultiRegionClusterNameSuffix = "example",
///         NodeType = "db.r7g.xlarge",
///     });
///
///     var exampleCluster = new Aws.MemoryDb.Cluster("example", new()
///     {
///         AclName = exampleAwsMemorydbAcl.Id,
///         AutoMinorVersionUpgrade = false,
///         Name = "example",
///         NodeType = "db.t4g.small",
///         NumShards = 2,
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         SnapshotRetentionLimit = 7,
///         SubnetGroupName = exampleAwsMemorydbSubnetGroup.Id,
///         MultiRegionClusterName = example.MultiRegionClusterName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := memorydb.NewMultiRegionCluster(ctx, "example", &memorydb.MultiRegionClusterArgs{
/// 			MultiRegionClusterNameSuffix: pulumi.String("example"),
/// 			NodeType:                     pulumi.String("db.r7g.xlarge"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorydb.NewCluster(ctx, "example", &memorydb.ClusterArgs{
/// 			AclName:                 pulumi.Any(exampleAwsMemorydbAcl.Id),
/// 			AutoMinorVersionUpgrade: pulumi.Bool(false),
/// 			Name:                    pulumi.String("example"),
/// 			NodeType:                pulumi.String("db.t4g.small"),
/// 			NumShards:               pulumi.Int(2),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			SnapshotRetentionLimit: pulumi.Int(7),
/// 			SubnetGroupName:        pulumi.Any(exampleAwsMemorydbSubnetGroup.Id),
/// 			MultiRegionClusterName: example.MultiRegionClusterName,
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
/// resource "aws_memorydb_multiregioncluster" "example" {
///   multi_region_cluster_name_suffix = "example"
///   node_type                        = "db.r7g.xlarge"
/// }
/// resource "aws_memorydb_cluster" "example" {
///   acl_name                   = exampleAwsMemorydbAcl.id
///   auto_minor_version_upgrade = false
///   name                       = "example"
///   node_type                  = "db.t4g.small"
///   num_shards                 = 2
///   security_group_ids         = [exampleAwsSecurityGroup.id]
///   snapshot_retention_limit   = 7
///   subnet_group_name          = exampleAwsMemorydbSubnetGroup.id
///   multi_region_cluster_name  = aws_memorydb_multiregioncluster.example.multi_region_cluster_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.memorydb.MultiRegionCluster;
/// import com.pulumi.aws.memorydb.MultiRegionClusterArgs;
/// import com.pulumi.aws.memorydb.Cluster;
/// import com.pulumi.aws.memorydb.ClusterArgs;
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
///         var example = new MultiRegionCluster("example", MultiRegionClusterArgs.builder()
///             .multiRegionClusterNameSuffix("example")
///             .nodeType("db.r7g.xlarge")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .aclName(exampleAwsMemorydbAcl.id())
///             .autoMinorVersionUpgrade(false)
///             .name("example")
///             .nodeType("db.t4g.small")
///             .numShards(2)
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .snapshotRetentionLimit(7)
///             .subnetGroupName(exampleAwsMemorydbSubnetGroup.id())
///             .multiRegionClusterName(example.multiRegionClusterName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:memorydb:MultiRegionCluster
///     properties:
///       multiRegionClusterNameSuffix: example
///       nodeType: db.r7g.xlarge
///   exampleCluster:
///     type: aws:memorydb:Cluster
///     name: example
///     properties:
///       aclName: ${exampleAwsMemorydbAcl.id}
///       autoMinorVersionUpgrade: false
///       name: example
///       nodeType: db.t4g.small
///       numShards: 2
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       snapshotRetentionLimit: 7
///       subnetGroupName: ${exampleAwsMemorydbSubnetGroup.id}
///       multiRegionClusterName: ${example.multiRegionClusterName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a cluster using the `multiRegionClusterName`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/multiRegionCluster:MultiRegionCluster example virxk-example
/// ```
class MultiRegionCluster extends pulumi.CustomResource {
  /// The ARN of the multi-region cluster.
  late final pulumi.Output<String> arn;
  /// description for the multi-region cluster.
  late final pulumi.Output<String?> description;
  /// The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  late final pulumi.Output<String> engine;
  /// The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  late final pulumi.Output<String> engineVersion;
  /// The name of the multi-region cluster.
  late final pulumi.Output<String> multiRegionClusterName;
  /// A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  late final pulumi.Output<String> multiRegionClusterNameSuffix;
  /// The name of the multi-region parameter group to be associated with the cluster.
  late final pulumi.Output<String> multiRegionParameterGroupName;
  /// The node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> nodeType;
  /// The number of shards for the multi-region cluster.
  late final pulumi.Output<int> numShards;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<MultiRegionClusterTimeouts?> timeouts;
  /// A flag to enable in-transit encryption on the cluster.
  late final pulumi.Output<bool> tlsEnabled;
  late final pulumi.Output<String?> updateStrategy;

  /// Creates a new [MultiRegionCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiRegionCluster]. {@macro pulumi_memorydb_multi_region_cluster_multi_region_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiRegionCluster(
    String name, {
    MultiRegionClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/multiRegionCluster:MultiRegionCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    multiRegionClusterName = registerOutput<String>('multiRegionClusterName');
    multiRegionClusterNameSuffix = registerOutput<String>('multiRegionClusterNameSuffix');
    multiRegionParameterGroupName = registerOutput<String>('multiRegionParameterGroupName');
    nodeType = registerOutput<String>('nodeType');
    numShards = registerOutput<int>('numShards');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MultiRegionClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsEnabled = registerOutput<bool>('tlsEnabled');
    updateStrategy = registerOutput<String?>('updateStrategy');
  }

  /// Gets an existing [MultiRegionCluster] resource's state with the given [name] and [id].
  static MultiRegionCluster get(
    String name,
    pulumi.Input<String> id, {
    MultiRegionClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MultiRegionCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MultiRegionCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/multiRegionCluster:MultiRegionCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    multiRegionClusterName = registerOutput<String>('multiRegionClusterName');
    multiRegionClusterNameSuffix = registerOutput<String>('multiRegionClusterNameSuffix');
    multiRegionParameterGroupName = registerOutput<String>('multiRegionParameterGroupName');
    nodeType = registerOutput<String>('nodeType');
    numShards = registerOutput<int>('numShards');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MultiRegionClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsEnabled = registerOutput<bool>('tlsEnabled');
    updateStrategy = registerOutput<String?>('updateStrategy');
  }

  /// Creates a typed reference to an existing [MultiRegionCluster] resource.
  MultiRegionCluster.reference(String urn)
    : super(
        'aws:memorydb/multiRegionCluster:MultiRegionCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    multiRegionClusterName = registerOutput<String>('multiRegionClusterName');
    multiRegionClusterNameSuffix = registerOutput<String>('multiRegionClusterNameSuffix');
    multiRegionParameterGroupName = registerOutput<String>('multiRegionParameterGroupName');
    nodeType = registerOutput<String>('nodeType');
    numShards = registerOutput<int>('numShards');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MultiRegionClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsEnabled = registerOutput<bool>('tlsEnabled');
    updateStrategy = registerOutput<String?>('updateStrategy');
  }
}
