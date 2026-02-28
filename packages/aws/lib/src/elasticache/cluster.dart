import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_cache_node.dart';
import 'cluster_log_delivery_configuration.dart';

/// Provides an ElastiCache Cluster resource, which manages a Memcached cluster, a single-node Redis instance,
/// or a read replica in a Redis (Cluster Mode Enabled) replication group. For more information, refer to
/// the AWS document [What is Amazon ElastiCache?](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/WhatIs.html).
///
/// For working with Redis (Cluster Mode Enabled) replication groups, see the
/// `aws.elasticache.ReplicationGroup` resource.
///
/// > **Note:** When you change an attribute, such as `num_cache_nodes`, by default
/// it is applied in the next maintenance window. Because of this, this provider may report
/// a difference in its planning phase because the actual modification has not yet taken
/// place. You can use the `apply_immediately` flag to instruct the service to apply the
/// change immediately. Using `apply_immediately` can result in a brief downtime as the server reboots.
/// See the "Changes take effect" section of the "Details" column in the AWS Documentation on Engine specific parameters for
/// [ElastiCache for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ParameterGroups.Engine.html#ParameterGroups.Memcached) or
/// [ElastiCache for Valkey and Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ParameterGroups.Engine.html#ParameterGroups.Redis)
/// for more information.
///
/// > **Note:** Any attribute changes that re-create the resource will be applied immediately, regardless of the value of `apply_immediately`.
///
/// ## Example Usage
///
/// ### Memcached Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.Cluster("example", {
///     clusterId: "cluster-example",
///     engine: "memcached",
///     nodeType: "cache.m4.large",
///     numCacheNodes: 2,
///     parameterGroupName: "default.memcached1.4",
///     port: 11211,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.Cluster("example",
///     cluster_id="cluster-example",
///     engine="memcached",
///     node_type="cache.m4.large",
///     num_cache_nodes=2,
///     parameter_group_name="default.memcached1.4",
///     port=11211)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.Cluster("example", new()
///     {
///         ClusterId = "cluster-example",
///         Engine = "memcached",
///         NodeType = "cache.m4.large",
///         NumCacheNodes = 2,
///         ParameterGroupName = "default.memcached1.4",
///         Port = 11211,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewCluster(ctx, "example", &elasticache.ClusterArgs{
/// 			ClusterId:          pulumi.String("cluster-example"),
/// 			Engine:             pulumi.String("memcached"),
/// 			NodeType:           pulumi.String("cache.m4.large"),
/// 			NumCacheNodes:      pulumi.Int(2),
/// 			ParameterGroupName: pulumi.String("default.memcached1.4"),
/// 			Port:               pulumi.Int(11211),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.Cluster;
/// import com.pulumi.aws.elasticache.ClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterId("cluster-example")
///             .engine("memcached")
///             .nodeType("cache.m4.large")
///             .numCacheNodes(2)
///             .parameterGroupName("default.memcached1.4")
///             .port(11211)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:Cluster
///     properties:
///       clusterId: cluster-example
///       engine: memcached
///       nodeType: cache.m4.large
///       numCacheNodes: 2
///       parameterGroupName: default.memcached1.4
///       port: 11211
/// ```
///
///
/// ### Redis Instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.Cluster("example", {
///     clusterId: "cluster-example",
///     engine: "redis",
///     nodeType: "cache.m4.large",
///     numCacheNodes: 1,
///     parameterGroupName: "default.redis3.2",
///     engineVersion: "3.2.10",
///     port: 6379,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.Cluster("example",
///     cluster_id="cluster-example",
///     engine="redis",
///     node_type="cache.m4.large",
///     num_cache_nodes=1,
///     parameter_group_name="default.redis3.2",
///     engine_version="3.2.10",
///     port=6379)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.Cluster("example", new()
///     {
///         ClusterId = "cluster-example",
///         Engine = "redis",
///         NodeType = "cache.m4.large",
///         NumCacheNodes = 1,
///         ParameterGroupName = "default.redis3.2",
///         EngineVersion = "3.2.10",
///         Port = 6379,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewCluster(ctx, "example", &elasticache.ClusterArgs{
/// 			ClusterId:          pulumi.String("cluster-example"),
/// 			Engine:             pulumi.String("redis"),
/// 			NodeType:           pulumi.String("cache.m4.large"),
/// 			NumCacheNodes:      pulumi.Int(1),
/// 			ParameterGroupName: pulumi.String("default.redis3.2"),
/// 			EngineVersion:      pulumi.String("3.2.10"),
/// 			Port:               pulumi.Int(6379),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.Cluster;
/// import com.pulumi.aws.elasticache.ClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterId("cluster-example")
///             .engine("redis")
///             .nodeType("cache.m4.large")
///             .numCacheNodes(1)
///             .parameterGroupName("default.redis3.2")
///             .engineVersion("3.2.10")
///             .port(6379)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:Cluster
///     properties:
///       clusterId: cluster-example
///       engine: redis
///       nodeType: cache.m4.large
///       numCacheNodes: 1
///       parameterGroupName: default.redis3.2
///       engineVersion: 3.2.10
///       port: 6379
/// ```
///
///
/// ### Redis Cluster Mode Disabled Read Replica Instance
///
/// These inherit their settings from the replication group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replica = new aws.elasticache.Cluster("replica", {
///     clusterId: "cluster-example",
///     replicationGroupId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replica = aws.elasticache.Cluster("replica",
///     cluster_id="cluster-example",
///     replication_group_id=example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replica = new Aws.ElastiCache.Cluster("replica", new()
///     {
///         ClusterId = "cluster-example",
///         ReplicationGroupId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewCluster(ctx, "replica", &elasticache.ClusterArgs{
/// 			ClusterId:          pulumi.String("cluster-example"),
/// 			ReplicationGroupId: pulumi.Any(example.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.Cluster;
/// import com.pulumi.aws.elasticache.ClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var replica = new Cluster("replica", ClusterArgs.builder()
///             .clusterId("cluster-example")
///             .replicationGroupId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replica:
///     type: aws:elasticache:Cluster
///     properties:
///       clusterId: cluster-example
///       replicationGroupId: ${example.id}
/// ```
///
///
/// ### Redis Log Delivery configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.Cluster("test", {
///     clusterId: "mycluster",
///     engine: "redis",
///     nodeType: "cache.t3.micro",
///     numCacheNodes: 1,
///     port: 6379,
///     applyImmediately: true,
///     logDeliveryConfigurations: [
///         {
///             destination: example.name,
///             destinationType: "cloudwatch-logs",
///             logFormat: "text",
///             logType: "slow-log",
///         },
///         {
///             destination: exampleAwsKinesisFirehoseDeliveryStream.name,
///             destinationType: "kinesis-firehose",
///             logFormat: "json",
///             logType: "engine-log",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.Cluster("test",
///     cluster_id="mycluster",
///     engine="redis",
///     node_type="cache.t3.micro",
///     num_cache_nodes=1,
///     port=6379,
///     apply_immediately=True,
///     log_delivery_configurations=[
///         {
///             "destination": example["name"],
///             "destination_type": "cloudwatch-logs",
///             "log_format": "text",
///             "log_type": "slow-log",
///         },
///         {
///             "destination": example_aws_kinesis_firehose_delivery_stream["name"],
///             "destination_type": "kinesis-firehose",
///             "log_format": "json",
///             "log_type": "engine-log",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.ElastiCache.Cluster("test", new()
///     {
///         ClusterId = "mycluster",
///         Engine = "redis",
///         NodeType = "cache.t3.micro",
///         NumCacheNodes = 1,
///         Port = 6379,
///         ApplyImmediately = true,
///         LogDeliveryConfigurations = new[]
///         {
///             new Aws.ElastiCache.Inputs.ClusterLogDeliveryConfigurationArgs
///             {
///                 Destination = example.Name,
///                 DestinationType = "cloudwatch-logs",
///                 LogFormat = "text",
///                 LogType = "slow-log",
///             },
///             new Aws.ElastiCache.Inputs.ClusterLogDeliveryConfigurationArgs
///             {
///                 Destination = exampleAwsKinesisFirehoseDeliveryStream.Name,
///                 DestinationType = "kinesis-firehose",
///                 LogFormat = "json",
///                 LogType = "engine-log",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewCluster(ctx, "test", &elasticache.ClusterArgs{
/// 			ClusterId:        pulumi.String("mycluster"),
/// 			Engine:           pulumi.String("redis"),
/// 			NodeType:         pulumi.String("cache.t3.micro"),
/// 			NumCacheNodes:    pulumi.Int(1),
/// 			Port:             pulumi.Int(6379),
/// 			ApplyImmediately: pulumi.Bool(true),
/// 			LogDeliveryConfigurations: elasticache.ClusterLogDeliveryConfigurationArray{
/// 				&elasticache.ClusterLogDeliveryConfigurationArgs{
/// 					Destination:     pulumi.Any(example.Name),
/// 					DestinationType: pulumi.String("cloudwatch-logs"),
/// 					LogFormat:       pulumi.String("text"),
/// 					LogType:         pulumi.String("slow-log"),
/// 				},
/// 				&elasticache.ClusterLogDeliveryConfigurationArgs{
/// 					Destination:     pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Name),
/// 					DestinationType: pulumi.String("kinesis-firehose"),
/// 					LogFormat:       pulumi.String("json"),
/// 					LogType:         pulumi.String("engine-log"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.Cluster;
/// import com.pulumi.aws.elasticache.ClusterArgs;
/// import com.pulumi.aws.elasticache.inputs.ClusterLogDeliveryConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var test = new Cluster("test", ClusterArgs.builder()
///             .clusterId("mycluster")
///             .engine("redis")
///             .nodeType("cache.t3.micro")
///             .numCacheNodes(1)
///             .port(6379)
///             .applyImmediately(true)
///             .logDeliveryConfigurations(
///                 ClusterLogDeliveryConfigurationArgs.builder()
///                     .destination(example.name())
///                     .destinationType("cloudwatch-logs")
///                     .logFormat("text")
///                     .logType("slow-log")
///                     .build(),
///                 ClusterLogDeliveryConfigurationArgs.builder()
///                     .destination(exampleAwsKinesisFirehoseDeliveryStream.name())
///                     .destinationType("kinesis-firehose")
///                     .logFormat("json")
///                     .logType("engine-log")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:elasticache:Cluster
///     properties:
///       clusterId: mycluster
///       engine: redis
///       nodeType: cache.t3.micro
///       numCacheNodes: 1
///       port: 6379
///       applyImmediately: true
///       logDeliveryConfigurations:
///         - destination: ${example.name}
///           destinationType: cloudwatch-logs
///           logFormat: text
///           logType: slow-log
///         - destination: ${exampleAwsKinesisFirehoseDeliveryStream.name}
///           destinationType: kinesis-firehose
///           logFormat: json
///           logType: engine-log
/// ```
///
///
/// ### Elasticache Cluster in Outpost
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutposts({});
/// const exampleGetOutpost = example.then(example => aws.outposts.getOutpost({
///     id: example.ids?.[0],
/// }));
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet = new aws.ec2.Subnet("example", {
///     vpcId: exampleVpc.id,
///     cidrBlock: "10.0.1.0/24",
///     tags: {
///         Name: "my-subnet",
///     },
/// });
/// const exampleSubnetGroup = new aws.elasticache.SubnetGroup("example", {
///     name: "my-cache-subnet",
///     subnetIds: [exampleSubnet.id],
/// });
/// const exampleCluster = new aws.elasticache.Cluster("example", {
///     clusterId: "cluster-example",
///     outpostMode: "single-outpost",
///     preferredOutpostArn: exampleGetOutpost.then(exampleGetOutpost => exampleGetOutpost.arn),
///     engine: "memcached",
///     nodeType: "cache.r5.large",
///     numCacheNodes: 2,
///     parameterGroupName: "default.memcached1.4",
///     port: 11211,
///     subnetGroupName: exampleSubnetGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outposts()
/// example_get_outpost = aws.outposts.get_outpost(id=example.ids[0])
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = aws.ec2.Subnet("example",
///     vpc_id=example_vpc.id,
///     cidr_block="10.0.1.0/24",
///     tags={
///         "Name": "my-subnet",
///     })
/// example_subnet_group = aws.elasticache.SubnetGroup("example",
///     name="my-cache-subnet",
///     subnet_ids=[example_subnet.id])
/// example_cluster = aws.elasticache.Cluster("example",
///     cluster_id="cluster-example",
///     outpost_mode="single-outpost",
///     preferred_outpost_arn=example_get_outpost.arn,
///     engine="memcached",
///     node_type="cache.r5.large",
///     num_cache_nodes=2,
///     parameter_group_name="default.memcached1.4",
///     port=11211,
///     subnet_group_name=example_subnet_group.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetOutposts.Invoke();
///
///     var exampleGetOutpost = Aws.Outposts.GetOutpost.Invoke(new()
///     {
///         Id = example.Apply(getOutpostsResult => getOutpostsResult.Ids[0]),
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleSubnet = new Aws.Ec2.Subnet("example", new()
///     {
///         VpcId = exampleVpc.Id,
///         CidrBlock = "10.0.1.0/24",
///         Tags =
///         {
///             { "Name", "my-subnet" },
///         },
///     });
///
///     var exampleSubnetGroup = new Aws.ElastiCache.SubnetGroup("example", new()
///     {
///         Name = "my-cache-subnet",
///         SubnetIds = new[]
///         {
///             exampleSubnet.Id,
///         },
///     });
///
///     var exampleCluster = new Aws.ElastiCache.Cluster("example", new()
///     {
///         ClusterId = "cluster-example",
///         OutpostMode = "single-outpost",
///         PreferredOutpostArn = exampleGetOutpost.Apply(getOutpostResult => getOutpostResult.Arn),
///         Engine = "memcached",
///         NodeType = "cache.r5.large",
///         NumCacheNodes = 2,
///         ParameterGroupName = "default.memcached1.4",
///         Port = 11211,
///         SubnetGroupName = exampleSubnetGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := outposts.GetOutposts(ctx, &outposts.GetOutpostsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetOutpost, err := outposts.GetOutpost(ctx, &outposts.GetOutpostArgs{
/// 			Id: pulumi.StringRef(example.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// 			VpcId:     exampleVpc.ID(),
/// 			CidrBlock: pulumi.String("10.0.1.0/24"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("my-subnet"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnetGroup, err := elasticache.NewSubnetGroup(ctx, "example", &elasticache.SubnetGroupArgs{
/// 			Name: pulumi.String("my-cache-subnet"),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleSubnet.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewCluster(ctx, "example", &elasticache.ClusterArgs{
/// 			ClusterId:           pulumi.String("cluster-example"),
/// 			OutpostMode:         pulumi.String("single-outpost"),
/// 			PreferredOutpostArn: pulumi.String(exampleGetOutpost.Arn),
/// 			Engine:              pulumi.String("memcached"),
/// 			NodeType:            pulumi.String("cache.r5.large"),
/// 			NumCacheNodes:       pulumi.Int(2),
/// 			ParameterGroupName:  pulumi.String("default.memcached1.4"),
/// 			Port:                pulumi.Int(11211),
/// 			SubnetGroupName:     exampleSubnetGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostsArgs;
/// import com.pulumi.aws.outposts.inputs.GetOutpostArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.elasticache.SubnetGroup;
/// import com.pulumi.aws.elasticache.SubnetGroupArgs;
/// import com.pulumi.aws.elasticache.Cluster;
/// import com.pulumi.aws.elasticache.ClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = OutpostsFunctions.getOutposts(GetOutpostsArgs.builder()
///             .build());
///
///         final var exampleGetOutpost = OutpostsFunctions.getOutpost(GetOutpostArgs.builder()
///             .id(example.ids()[0])
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .vpcId(exampleVpc.id())
///             .cidrBlock("10.0.1.0/24")
///             .tags(Map.of("Name", "my-subnet"))
///             .build());
///
///         var exampleSubnetGroup = new SubnetGroup("exampleSubnetGroup", SubnetGroupArgs.builder()
///             .name("my-cache-subnet")
///             .subnetIds(exampleSubnet.id())
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .clusterId("cluster-example")
///             .outpostMode("single-outpost")
///             .preferredOutpostArn(exampleGetOutpost.arn())
///             .engine("memcached")
///             .nodeType("cache.r5.large")
///             .numCacheNodes(2)
///             .parameterGroupName("default.memcached1.4")
///             .port(11211)
///             .subnetGroupName(exampleSubnetGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleSubnet:
///     type: aws:ec2:Subnet
///     name: example
///     properties:
///       vpcId: ${exampleVpc.id}
///       cidrBlock: 10.0.1.0/24
///       tags:
///         Name: my-subnet
///   exampleSubnetGroup:
///     type: aws:elasticache:SubnetGroup
///     name: example
///     properties:
///       name: my-cache-subnet
///       subnetIds:
///         - ${exampleSubnet.id}
///   exampleCluster:
///     type: aws:elasticache:Cluster
///     name: example
///     properties:
///       clusterId: cluster-example
///       outpostMode: single-outpost
///       preferredOutpostArn: ${exampleGetOutpost.arn}
///       engine: memcached
///       nodeType: cache.r5.large
///       numCacheNodes: 2
///       parameterGroupName: default.memcached1.4
///       port: 11211
///       subnetGroupName: ${exampleSubnetGroup.name}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getOutposts
///       arguments: {}
///   exampleGetOutpost:
///     fn::invoke:
///       function: aws:outposts:getOutpost
///       arguments:
///         id: ${example.ids[0]}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Clusters using the `cluster_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/cluster:Cluster my_cluster my_cluster
/// ```
class Cluster extends pulumi.CustomResource {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon ElastiCache Documentation for more information](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheCluster.html).
  late final pulumi.Output<bool> applyImmediately;
  /// The ARN of the created ElastiCache Cluster.
  late final pulumi.Output<String> arn;
  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine type `"redis"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  late final pulumi.Output<String?> autoMinorVersionUpgrade;
  /// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferred_availability_zones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  late final pulumi.Output<String> availabilityZone;
  /// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are `single-az` or `cross-az`, default is `single-az`. If you want to choose `cross-az`, `num_cache_nodes` must be greater than `1`.
  late final pulumi.Output<String> azMode;
  /// List of node objects including `id`, `address`, `port` and `availability_zone`.
  late final pulumi.Output<List<ClusterCacheNode>> cacheNodes;
  /// (Memcached only) DNS name of the cache cluster without the port appended.
  late final pulumi.Output<String> clusterAddress;
  /// Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource.
  late final pulumi.Output<String> clusterId;
  /// (Memcached only) Configuration endpoint to allow host discovery.
  late final pulumi.Output<String> configurationEndpoint;
  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` and `valkey`.
  late final pulumi.Output<String> engine;
  /// Version number of the cache engine to be used.
  /// If not set, defaults to the latest version.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  /// When `engine` is `redis` and the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. Cannot be provided with `replication_group_id.`
  late final pulumi.Output<String> engineVersion;
  /// Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
  late final pulumi.Output<String> engineVersionActual;
  /// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  late final pulumi.Output<String> ipDiscovery;
  /// Specifies the destination and format of Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html). See Log Delivery Configuration below for more details.
  late final pulumi.Output<List<ClusterLogDeliveryConfiguration>?> logDeliveryConfigurations;
  /// Specifies the weekly time range for when maintenance
  /// on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC).
  /// The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`.
  late final pulumi.Output<String> maintenanceWindow;
  /// The IP versions for cache cluster connections. IPv6 is supported with Redis engine `6.2` onword or Memcached version `1.6.6` for all [Nitro system](https://aws.amazon.com/ec2/nitro/) instances. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  late final pulumi.Output<String> networkType;
  /// The instance class used.
  /// See AWS documentation for information on [supported node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen) and [guidance on selecting node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.redis).
  /// See AWS documentation for information on [supported node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen-Memcached) and [guidance on selecting node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.Mem).
  /// For Memcached, changing this value will re-create the resource.
  late final pulumi.Output<String> nodeType;
  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`.
  late final pulumi.Output<String?> notificationTopicArn;
  /// The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
  late final pulumi.Output<int> numCacheNodes;
  /// Specify the outpost mode that will apply to the cache cluster creation. Valid values are `"single-outpost"` and `"cross-outpost"`, however AWS currently only supports `"single-outpost"` mode.
  late final pulumi.Output<String?> outpostMode;
  /// The name of the parameter group to associate with this cache cluster.
  late final pulumi.Output<String> parameterGroupName;
  /// The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replication_group_id`. Changing this value will re-create the resource.
  late final pulumi.Output<int> port;
  /// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of `num_cache_nodes`. If you want all the nodes in the same Availability Zone, use `availability_zone` instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
  late final pulumi.Output<List<String>?> preferredAvailabilityZones;
  /// The outpost ARN in which the cache cluster will be created.
  late final pulumi.Output<String> preferredOutpostArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
  late final pulumi.Output<String> replicationGroupId;
  /// One or more VPC security groups associated with the cache cluster. Cannot be provided with `replication_group_id.`
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing `snapshot_arns` forces a new resource.
  late final pulumi.Output<String?> snapshotArns;
  /// Name of a snapshot from which to restore data into the new node group. Changing `snapshot_name` forces a new resource.
  late final pulumi.Output<String?> snapshotName;
  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  late final pulumi.Output<int?> snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
  late final pulumi.Output<String> snapshotWindow;
  /// Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. Cannot be provided with `replication_group_id.`
  late final pulumi.Output<String> subnetGroupName;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Enable encryption in-transit. Supported with Memcached versions `1.6.12` and later, Valkey `7.2` and later, Redis OSS versions `3.2.6`, `4.0.10` and later, running in a VPC. See the [ElastiCache in-transit encryption documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/in-transit-encryption.html#in-transit-encryption-constraints) for more details.
  late final pulumi.Output<bool> transitEncryptionEnabled;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_elasticache_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade = registerOutput<String?>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.azMode = registerOutput<String>('azMode');
    this.cacheNodes = registerOutput<List<ClusterCacheNode>>('cacheNodes');
    this.clusterAddress = registerOutput<String>('clusterAddress');
    this.clusterId = registerOutput<String>('clusterId');
    this.configurationEndpoint = registerOutput<String>('configurationEndpoint');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    this.ipDiscovery = registerOutput<String>('ipDiscovery');
    this.logDeliveryConfigurations = registerOutput<List<ClusterLogDeliveryConfiguration>?>('logDeliveryConfigurations');
    this.maintenanceWindow = registerOutput<String>('maintenanceWindow');
    this.networkType = registerOutput<String>('networkType');
    this.nodeType = registerOutput<String>('nodeType');
    this.notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    this.numCacheNodes = registerOutput<int>('numCacheNodes');
    this.outpostMode = registerOutput<String?>('outpostMode');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
    this.port = registerOutput<int>('port');
    this.preferredAvailabilityZones = registerOutput<List<String>?>('preferredAvailabilityZones');
    this.preferredOutpostArn = registerOutput<String>('preferredOutpostArn');
    this.region = registerOutput<String>('region');
    this.replicationGroupId = registerOutput<String>('replicationGroupId');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.snapshotArns = registerOutput<String?>('snapshotArns');
    this.snapshotName = registerOutput<String?>('snapshotName');
    this.snapshotRetentionLimit = registerOutput<int?>('snapshotRetentionLimit');
    this.snapshotWindow = registerOutput<String>('snapshotWindow');
    this.subnetGroupName = registerOutput<String>('subnetGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitEncryptionEnabled = registerOutput<bool>('transitEncryptionEnabled');
  }
}
