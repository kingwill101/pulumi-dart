import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_group_args.dart';
import 'replication_group_state.dart';

/// Provides an ElastiCache Replication Group resource.
///
/// For working with a [Memcached cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/WhatIs.html) or a
/// [single-node Redis instance (Cluster Mode Disabled)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/WhatIs.html),
/// see the `aws.elasticache.Cluster` resource.
///
/// &gt; **Note:** When you change an attribute, such as `engineVersion`, by
/// default the ElastiCache API applies it in the next maintenance window. Because
/// of this, this provider may report a difference in its planning phase because the
/// actual modification has not yet taken place. You can use the
/// `applyImmediately` flag to instruct the service to apply the change
/// immediately. Using `applyImmediately` can result in a brief downtime as
/// servers reboots.
/// See the AWS Documentation on
/// [Modifying an ElastiCache Cache Cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Modify.html)
/// for more information.
///
/// &gt; **Note:** Any attribute changes that re-create the resource will be applied immediately, regardless of the value of `applyImmediately`.
///
/// &gt; **Note:** Be aware of the terminology collision around "cluster" for `aws.elasticache.ReplicationGroup`. For example, it is possible to create a ["Cluster Mode Disabled [Redis] Cluster"](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Create.CON.Redis.html). With "Cluster Mode Enabled", the data will be stored in shards (called "node groups"). See [Redis Cluster Configuration](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/cluster-create-determine-requirements.html#redis-cluster-configuration) for a diagram of the differences. To enable cluster mode, use a parameter group that has cluster mode enabled. The default parameter groups provided by AWS end with ".cluster.on", for example `default.redis6.x.cluster.on`.
///
/// ## Example Usage
///
/// ### Redis OSS/Valkey Cluster Mode Disabled
///
/// To create a single shard primary with single read replica:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ReplicationGroup("example", {
///     automaticFailoverEnabled: true,
///     preferredCacheClusterAzs: [
///         "us-west-2a",
///         "us-west-2b",
///     ],
///     replicationGroupId: "tf-rep-group-1",
///     description: "example description",
///     nodeType: "cache.m4.large",
///     numCacheClusters: 2,
///     parameterGroupName: "default.redis3.2",
///     port: 6379,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ReplicationGroup("example",
///     automatic_failover_enabled=True,
///     preferred_cache_cluster_azs=[
///         "us-west-2a",
///         "us-west-2b",
///     ],
///     replication_group_id="tf-rep-group-1",
///     description="example description",
///     node_type="cache.m4.large",
///     num_cache_clusters=2,
///     parameter_group_name="default.redis3.2",
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
///     var example = new Aws.ElastiCache.ReplicationGroup("example", new()
///     {
///         AutomaticFailoverEnabled = true,
///         PreferredCacheClusterAzs = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///         },
///         ReplicationGroupId = "tf-rep-group-1",
///         Description = "example description",
///         NodeType = "cache.m4.large",
///         NumCacheClusters = 2,
///         ParameterGroupName = "default.redis3.2",
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
/// 		_, err := elasticache.NewReplicationGroup(ctx, "example", &elasticache.ReplicationGroupArgs{
/// 			AutomaticFailoverEnabled: pulumi.Bool(true),
/// 			PreferredCacheClusterAzs: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 			},
/// 			ReplicationGroupId: pulumi.String("tf-rep-group-1"),
/// 			Description:        pulumi.String("example description"),
/// 			NodeType:           pulumi.String("cache.m4.large"),
/// 			NumCacheClusters:   pulumi.Int(2),
/// 			ParameterGroupName: pulumi.String("default.redis3.2"),
/// 			Port:               pulumi.Int(6379),
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
/// resource "aws_elasticache_replicationgroup" "example" {
///   automatic_failover_enabled  = true
///   preferred_cache_cluster_azs = ["us-west-2a", "us-west-2b"]
///   replication_group_id        = "tf-rep-group-1"
///   description                 = "example description"
///   node_type                   = "cache.m4.large"
///   num_cache_clusters          = 2
///   parameter_group_name        = "default.redis3.2"
///   port                        = 6379
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
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
///         var example = new ReplicationGroup("example", ReplicationGroupArgs.builder()
///             .automaticFailoverEnabled(true)
///             .preferredCacheClusterAzs(
///                 "us-west-2a",
///                 "us-west-2b")
///             .replicationGroupId("tf-rep-group-1")
///             .description("example description")
///             .nodeType("cache.m4.large")
///             .numCacheClusters(2)
///             .parameterGroupName("default.redis3.2")
///             .port(6379)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       automaticFailoverEnabled: true
///       preferredCacheClusterAzs:
///         - us-west-2a
///         - us-west-2b
///       replicationGroupId: tf-rep-group-1
///       description: example description
///       nodeType: cache.m4.large
///       numCacheClusters: 2
///       parameterGroupName: default.redis3.2
///       port: 6379
/// ```
///
///
/// You have two options for adjusting the number of replicas:
///
/// * Adjusting `numCacheClusters` directly. This will attempt to automatically add or remove replicas, but provides no granular control (e.g., preferred availability zone, cache cluster ID) for the added or removed replicas. This also currently expects cache cluster IDs in the form of `replication_group_id-00#`.
/// * Otherwise for fine grained control of the underlying cache clusters, they can be added or removed with the `aws.elasticache.Cluster` resource and its `replicationGroupId` attribute. In this situation, you will need to utilize [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to prevent perpetual differences with the `numberCacheCluster` attribute.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ReplicationGroup("example", {
///     automaticFailoverEnabled: true,
///     preferredCacheClusterAzs: [
///         "us-west-2a",
///         "us-west-2b",
///     ],
///     replicationGroupId: "tf-rep-group-1",
///     description: "example description",
///     nodeType: "cache.m4.large",
///     numCacheClusters: 2,
///     parameterGroupName: "default.redis3.2",
///     port: 6379,
/// });
/// const replica: aws.elasticache.Cluster[] = [];
/// for (let range = 0; range < 1; range++) {
///     replica.push(new aws.elasticache.Cluster(`replica-${range}`, {
///         clusterId: `tf-rep-group-1-${range}`,
///         replicationGroupId: example.id,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ReplicationGroup("example",
///     automatic_failover_enabled=True,
///     preferred_cache_cluster_azs=[
///         "us-west-2a",
///         "us-west-2b",
///     ],
///     replication_group_id="tf-rep-group-1",
///     description="example description",
///     node_type="cache.m4.large",
///     num_cache_clusters=2,
///     parameter_group_name="default.redis3.2",
///     port=6379)
/// replica: list[aws.elasticache.Cluster] = []
/// for replica_range in [{"value": i} for i in range(0, 1)]:
///     replica.append(aws.elasticache.Cluster(f"replica-{replica_range['value']}",
///         cluster_id=f"tf-rep-group-1-{replica_range['value']}",
///         replication_group_id=example.id))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.ReplicationGroup("example", new()
///     {
///         AutomaticFailoverEnabled = true,
///         PreferredCacheClusterAzs = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///         },
///         ReplicationGroupId = "tf-rep-group-1",
///         Description = "example description",
///         NodeType = "cache.m4.large",
///         NumCacheClusters = 2,
///         ParameterGroupName = "default.redis3.2",
///         Port = 6379,
///     });
///
///     var replica = new List<Aws.ElastiCache.Cluster>();
///     for (var rangeIndex = 0; rangeIndex < 1; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         replica.Add(new Aws.ElastiCache.Cluster($"replica-{range.Value}", new()
///         {
///             ClusterId = $"tf-rep-group-1-{range.Value}",
///             ReplicationGroupId = example.Id,
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticache.NewReplicationGroup(ctx, "example", &elasticache.ReplicationGroupArgs{
/// 			AutomaticFailoverEnabled: pulumi.Bool(true),
/// 			PreferredCacheClusterAzs: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 			},
/// 			ReplicationGroupId: pulumi.String("tf-rep-group-1"),
/// 			Description:        pulumi.String("example description"),
/// 			NodeType:           pulumi.String("cache.m4.large"),
/// 			NumCacheClusters:   pulumi.Int(2),
/// 			ParameterGroupName: pulumi.String("default.redis3.2"),
/// 			Port:               pulumi.Int(6379),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var replica []*elasticache.Cluster
/// 		for index := 0; index < 1; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := elasticache.NewCluster(ctx, fmt.Sprintf("replica-%v", key0), &elasticache.ClusterArgs{
/// 				ClusterId:          pulumi.Sprintf("tf-rep-group-1-%v", val0),
/// 				ReplicationGroupId: example.ID().ToIDOutput().ToStringOutput(),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			replica = append(replica, __res)
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
/// resource "aws_elasticache_replicationgroup" "example" {
///   automatic_failover_enabled  = true
///   preferred_cache_cluster_azs = ["us-west-2a", "us-west-2b"]
///   replication_group_id        = "tf-rep-group-1"
///   description                 = "example description"
///   node_type                   = "cache.m4.large"
///   num_cache_clusters          = 2
///   parameter_group_name        = "default.redis3.2"
///   port                        = 6379
/// }
/// resource "aws_elasticache_cluster" "replica" {
///   count                = 1
///   cluster_id           ="tf-rep-group-1-${count.index}"
///   replication_group_id = aws_elasticache_replicationgroup.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
/// import com.pulumi.aws.elasticache.Cluster;
/// import com.pulumi.aws.elasticache.ClusterArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var example = new ReplicationGroup("example", ReplicationGroupArgs.builder()
///             .automaticFailoverEnabled(true)
///             .preferredCacheClusterAzs(
///                 "us-west-2a",
///                 "us-west-2b")
///             .replicationGroupId("tf-rep-group-1")
///             .description("example description")
///             .nodeType("cache.m4.large")
///             .numCacheClusters(2)
///             .parameterGroupName("default.redis3.2")
///             .port(6379)
///             .build());
///
///         for (var i = 0; i < 1; i++) {
///             new Cluster("replica-" + i, ClusterArgs.builder()
///                 .clusterId(String.format("tf-rep-group-1-%s", range.value()))
///                 .replicationGroupId(example.id())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       automaticFailoverEnabled: true
///       preferredCacheClusterAzs:
///         - us-west-2a
///         - us-west-2b
///       replicationGroupId: tf-rep-group-1
///       description: example description
///       nodeType: cache.m4.large
///       numCacheClusters: 2
///       parameterGroupName: default.redis3.2
///       port: 6379
///   replica:
///     type: aws:elasticache:Cluster
///     properties:
///       clusterId: tf-rep-group-1-${range.value}
///       replicationGroupId: ${example.id}
///     options: {}
/// ```
///
///
/// ### Redis OSS/Valkey Cluster Mode Enabled
///
/// To create two shards with a primary and a single read replica each:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const baz = new aws.elasticache.ReplicationGroup("baz", {
///     replicationGroupId: "tf-redis-cluster",
///     description: "example description",
///     nodeType: "cache.t2.small",
///     port: 6379,
///     parameterGroupName: "default.redis3.2.cluster.on",
///     automaticFailoverEnabled: true,
///     numNodeGroups: 2,
///     replicasPerNodeGroup: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// baz = aws.elasticache.ReplicationGroup("baz",
///     replication_group_id="tf-redis-cluster",
///     description="example description",
///     node_type="cache.t2.small",
///     port=6379,
///     parameter_group_name="default.redis3.2.cluster.on",
///     automatic_failover_enabled=True,
///     num_node_groups=2,
///     replicas_per_node_group=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var baz = new Aws.ElastiCache.ReplicationGroup("baz", new()
///     {
///         ReplicationGroupId = "tf-redis-cluster",
///         Description = "example description",
///         NodeType = "cache.t2.small",
///         Port = 6379,
///         ParameterGroupName = "default.redis3.2.cluster.on",
///         AutomaticFailoverEnabled = true,
///         NumNodeGroups = 2,
///         ReplicasPerNodeGroup = 1,
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
/// 		_, err := elasticache.NewReplicationGroup(ctx, "baz", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId:       pulumi.String("tf-redis-cluster"),
/// 			Description:              pulumi.String("example description"),
/// 			NodeType:                 pulumi.String("cache.t2.small"),
/// 			Port:                     pulumi.Int(6379),
/// 			ParameterGroupName:       pulumi.String("default.redis3.2.cluster.on"),
/// 			AutomaticFailoverEnabled: pulumi.Bool(true),
/// 			NumNodeGroups:            pulumi.Int(2),
/// 			ReplicasPerNodeGroup:     pulumi.Int(1),
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
/// resource "aws_elasticache_replicationgroup" "baz" {
///   replication_group_id       = "tf-redis-cluster"
///   description                = "example description"
///   node_type                  = "cache.t2.small"
///   port                       = 6379
///   parameter_group_name       = "default.redis3.2.cluster.on"
///   automatic_failover_enabled = true
///   num_node_groups            = 2
///   replicas_per_node_group    = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
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
///         var baz = new ReplicationGroup("baz", ReplicationGroupArgs.builder()
///             .replicationGroupId("tf-redis-cluster")
///             .description("example description")
///             .nodeType("cache.t2.small")
///             .port(6379)
///             .parameterGroupName("default.redis3.2.cluster.on")
///             .automaticFailoverEnabled(true)
///             .numNodeGroups(2)
///             .replicasPerNodeGroup(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   baz:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: tf-redis-cluster
///       description: example description
///       nodeType: cache.t2.small
///       port: 6379
///       parameterGroupName: default.redis3.2.cluster.on
///       automaticFailoverEnabled: true
///       numNodeGroups: 2
///       replicasPerNodeGroup: 1
/// ```
///
///
/// ### Redis OSS/Valkey Cluster Mode Enabled with Node Group Configuration
///
/// To create a cluster with specific availability zone placement and keyspace distribution:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ReplicationGroup("example", {
///     replicationGroupId: "tf-redis-cluster",
///     description: "example description",
///     nodeType: "cache.t2.small",
///     port: 6379,
///     parameterGroupName: "default.redis3.2.cluster.on",
///     automaticFailoverEnabled: true,
///     numNodeGroups: 2,
///     nodeGroupConfigurations: [
///         {
///             nodeGroupId: "0001",
///             primaryAvailabilityZone: "us-west-2a",
///             replicaAvailabilityZones: ["us-west-2b"],
///             replicaCount: 1,
///             slots: "0-8191",
///         },
///         {
///             nodeGroupId: "0002",
///             primaryAvailabilityZone: "us-west-2b",
///             replicaAvailabilityZones: ["us-west-2a"],
///             replicaCount: 1,
///             slots: "8192-16383",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ReplicationGroup("example",
///     replication_group_id="tf-redis-cluster",
///     description="example description",
///     node_type="cache.t2.small",
///     port=6379,
///     parameter_group_name="default.redis3.2.cluster.on",
///     automatic_failover_enabled=True,
///     num_node_groups=2,
///     node_group_configurations=[
///         {
///             "node_group_id": "0001",
///             "primary_availability_zone": "us-west-2a",
///             "replica_availability_zones": ["us-west-2b"],
///             "replica_count": 1,
///             "slots": "0-8191",
///         },
///         {
///             "node_group_id": "0002",
///             "primary_availability_zone": "us-west-2b",
///             "replica_availability_zones": ["us-west-2a"],
///             "replica_count": 1,
///             "slots": "8192-16383",
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
///     var example = new Aws.ElastiCache.ReplicationGroup("example", new()
///     {
///         ReplicationGroupId = "tf-redis-cluster",
///         Description = "example description",
///         NodeType = "cache.t2.small",
///         Port = 6379,
///         ParameterGroupName = "default.redis3.2.cluster.on",
///         AutomaticFailoverEnabled = true,
///         NumNodeGroups = 2,
///         NodeGroupConfigurations = new[]
///         {
///             new Aws.ElastiCache.Inputs.ReplicationGroupNodeGroupConfigurationArgs
///             {
///                 NodeGroupId = "0001",
///                 PrimaryAvailabilityZone = "us-west-2a",
///                 ReplicaAvailabilityZones = new[]
///                 {
///                     "us-west-2b",
///                 },
///                 ReplicaCount = 1,
///                 Slots = "0-8191",
///             },
///             new Aws.ElastiCache.Inputs.ReplicationGroupNodeGroupConfigurationArgs
///             {
///                 NodeGroupId = "0002",
///                 PrimaryAvailabilityZone = "us-west-2b",
///                 ReplicaAvailabilityZones = new[]
///                 {
///                     "us-west-2a",
///                 },
///                 ReplicaCount = 1,
///                 Slots = "8192-16383",
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
/// 		_, err := elasticache.NewReplicationGroup(ctx, "example", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId:       pulumi.String("tf-redis-cluster"),
/// 			Description:              pulumi.String("example description"),
/// 			NodeType:                 pulumi.String("cache.t2.small"),
/// 			Port:                     pulumi.Int(6379),
/// 			ParameterGroupName:       pulumi.String("default.redis3.2.cluster.on"),
/// 			AutomaticFailoverEnabled: pulumi.Bool(true),
/// 			NumNodeGroups:            pulumi.Int(2),
/// 			NodeGroupConfigurations: elasticache.ReplicationGroupNodeGroupConfigurationArray{
/// 				&elasticache.ReplicationGroupNodeGroupConfigurationArgs{
/// 					NodeGroupId:             pulumi.String("0001"),
/// 					PrimaryAvailabilityZone: pulumi.String("us-west-2a"),
/// 					ReplicaAvailabilityZones: pulumi.StringArray{
/// 						pulumi.String("us-west-2b"),
/// 					},
/// 					ReplicaCount: pulumi.Int(1),
/// 					Slots:        pulumi.String("0-8191"),
/// 				},
/// 				&elasticache.ReplicationGroupNodeGroupConfigurationArgs{
/// 					NodeGroupId:             pulumi.String("0002"),
/// 					PrimaryAvailabilityZone: pulumi.String("us-west-2b"),
/// 					ReplicaAvailabilityZones: pulumi.StringArray{
/// 						pulumi.String("us-west-2a"),
/// 					},
/// 					ReplicaCount: pulumi.Int(1),
/// 					Slots:        pulumi.String("8192-16383"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elasticache_replicationgroup" "example" {
///   replication_group_id       = "tf-redis-cluster"
///   description                = "example description"
///   node_type                  = "cache.t2.small"
///   port                       = 6379
///   parameter_group_name       = "default.redis3.2.cluster.on"
///   automatic_failover_enabled = true
///   num_node_groups            = 2
///   node_group_configurations {
///     node_group_id              = "0001"
///     primary_availability_zone  = "us-west-2a"
///     replica_availability_zones = ["us-west-2b"]
///     replica_count              = 1
///     slots                      = "0-8191"
///   }
///   node_group_configurations {
///     node_group_id              = "0002"
///     primary_availability_zone  = "us-west-2b"
///     replica_availability_zones = ["us-west-2a"]
///     replica_count              = 1
///     slots                      = "8192-16383"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
/// import com.pulumi.aws.elasticache.inputs.ReplicationGroupNodeGroupConfigurationArgs;
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
///         var example = new ReplicationGroup("example", ReplicationGroupArgs.builder()
///             .replicationGroupId("tf-redis-cluster")
///             .description("example description")
///             .nodeType("cache.t2.small")
///             .port(6379)
///             .parameterGroupName("default.redis3.2.cluster.on")
///             .automaticFailoverEnabled(true)
///             .numNodeGroups(2)
///             .nodeGroupConfigurations(
///                 ReplicationGroupNodeGroupConfigurationArgs.builder()
///                     .nodeGroupId("0001")
///                     .primaryAvailabilityZone("us-west-2a")
///                     .replicaAvailabilityZones("us-west-2b")
///                     .replicaCount(1)
///                     .slots("0-8191")
///                     .build(),
///                 ReplicationGroupNodeGroupConfigurationArgs.builder()
///                     .nodeGroupId("0002")
///                     .primaryAvailabilityZone("us-west-2b")
///                     .replicaAvailabilityZones("us-west-2a")
///                     .replicaCount(1)
///                     .slots("8192-16383")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: tf-redis-cluster
///       description: example description
///       nodeType: cache.t2.small
///       port: 6379
///       parameterGroupName: default.redis3.2.cluster.on
///       automaticFailoverEnabled: true
///       numNodeGroups: 2
///       nodeGroupConfigurations:
///         - nodeGroupId: '0001'
///           primaryAvailabilityZone: us-west-2a
///           replicaAvailabilityZones:
///             - us-west-2b
///           replicaCount: 1
///           slots: 0-8191
///         - nodeGroupId: '0002'
///           primaryAvailabilityZone: us-west-2b
///           replicaAvailabilityZones:
///             - us-west-2a
///           replicaCount: 1
///           slots: 8192-16383
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
/// const test = new aws.elasticache.ReplicationGroup("test", {
///     replicationGroupId: "myreplicaciongroup",
///     description: "test description",
///     nodeType: "cache.t3.small",
///     port: 6379,
///     applyImmediately: true,
///     autoMinorVersionUpgrade: false,
///     maintenanceWindow: "tue:06:30-tue:07:30",
///     snapshotWindow: "01:00-02:00",
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
/// test = aws.elasticache.ReplicationGroup("test",
///     replication_group_id="myreplicaciongroup",
///     description="test description",
///     node_type="cache.t3.small",
///     port=6379,
///     apply_immediately=True,
///     auto_minor_version_upgrade=False,
///     maintenance_window="tue:06:30-tue:07:30",
///     snapshot_window="01:00-02:00",
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
///     var test = new Aws.ElastiCache.ReplicationGroup("test", new()
///     {
///         ReplicationGroupId = "myreplicaciongroup",
///         Description = "test description",
///         NodeType = "cache.t3.small",
///         Port = 6379,
///         ApplyImmediately = true,
///         AutoMinorVersionUpgrade = false,
///         MaintenanceWindow = "tue:06:30-tue:07:30",
///         SnapshotWindow = "01:00-02:00",
///         LogDeliveryConfigurations = new[]
///         {
///             new Aws.ElastiCache.Inputs.ReplicationGroupLogDeliveryConfigurationArgs
///             {
///                 Destination = example.Name,
///                 DestinationType = "cloudwatch-logs",
///                 LogFormat = "text",
///                 LogType = "slow-log",
///             },
///             new Aws.ElastiCache.Inputs.ReplicationGroupLogDeliveryConfigurationArgs
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
/// 		_, err := elasticache.NewReplicationGroup(ctx, "test", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId:      pulumi.String("myreplicaciongroup"),
/// 			Description:             pulumi.String("test description"),
/// 			NodeType:                pulumi.String("cache.t3.small"),
/// 			Port:                    pulumi.Int(6379),
/// 			ApplyImmediately:        pulumi.Bool(true),
/// 			AutoMinorVersionUpgrade: pulumi.Bool(false),
/// 			MaintenanceWindow:       pulumi.String("tue:06:30-tue:07:30"),
/// 			SnapshotWindow:          pulumi.String("01:00-02:00"),
/// 			LogDeliveryConfigurations: elasticache.ReplicationGroupLogDeliveryConfigurationArray{
/// 				&elasticache.ReplicationGroupLogDeliveryConfigurationArgs{
/// 					Destination:     pulumi.Any(example.Name),
/// 					DestinationType: pulumi.String("cloudwatch-logs"),
/// 					LogFormat:       pulumi.String("text"),
/// 					LogType:         pulumi.String("slow-log"),
/// 				},
/// 				&elasticache.ReplicationGroupLogDeliveryConfigurationArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elasticache_replicationgroup" "test" {
///   replication_group_id       = "myreplicaciongroup"
///   description                = "test description"
///   node_type                  = "cache.t3.small"
///   port                       = 6379
///   apply_immediately          = true
///   auto_minor_version_upgrade = false
///   maintenance_window         = "tue:06:30-tue:07:30"
///   snapshot_window            = "01:00-02:00"
///   log_delivery_configurations {
///     destination      = example.name
///     destination_type = "cloudwatch-logs"
///     log_format       = "text"
///     log_type         = "slow-log"
///   }
///   log_delivery_configurations {
///     destination      = exampleAwsKinesisFirehoseDeliveryStream.name
///     destination_type = "kinesis-firehose"
///     log_format       = "json"
///     log_type         = "engine-log"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
/// import com.pulumi.aws.elasticache.inputs.ReplicationGroupLogDeliveryConfigurationArgs;
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
///         var test = new ReplicationGroup("test", ReplicationGroupArgs.builder()
///             .replicationGroupId("myreplicaciongroup")
///             .description("test description")
///             .nodeType("cache.t3.small")
///             .port(6379)
///             .applyImmediately(true)
///             .autoMinorVersionUpgrade(false)
///             .maintenanceWindow("tue:06:30-tue:07:30")
///             .snapshotWindow("01:00-02:00")
///             .logDeliveryConfigurations(
///                 ReplicationGroupLogDeliveryConfigurationArgs.builder()
///                     .destination(example.name())
///                     .destinationType("cloudwatch-logs")
///                     .logFormat("text")
///                     .logType("slow-log")
///                     .build(),
///                 ReplicationGroupLogDeliveryConfigurationArgs.builder()
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
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: myreplicaciongroup
///       description: test description
///       nodeType: cache.t3.small
///       port: 6379
///       applyImmediately: true
///       autoMinorVersionUpgrade: false
///       maintenanceWindow: tue:06:30-tue:07:30
///       snapshotWindow: 01:00-02:00
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
/// &gt; **Note:** We currently do not support passing a `primaryClusterId` in order to create the Replication Group.
///
/// &gt; **Note:** Automatic Failover is unavailable for Redis versions earlier than 2.8.6,
/// and unavailable on T1 node types. For T2 node types, it is only available on Redis version 3.2.4 or later with cluster mode enabled. See the [High Availability Using Replication Groups](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Replication.html) guide
/// for full details on using Replication Groups.
///
/// ### Creating a secondary replication group for a global replication group
///
/// A Global Replication Group can have up to two secondary Replication Groups in different regions. These are added to an existing Global Replication Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.elasticache.ReplicationGroup("primary", {
///     replicationGroupId: "example-primary",
///     description: "primary replication group",
///     engine: "redis",
///     engineVersion: "5.0.6",
///     nodeType: "cache.m5.large",
///     numCacheClusters: 1,
/// });
/// const example = new aws.elasticache.GlobalReplicationGroup("example", {
///     globalReplicationGroupIdSuffix: "example",
///     primaryReplicationGroupId: primary.id,
/// });
/// const secondary = new aws.elasticache.ReplicationGroup("secondary", {
///     replicationGroupId: "example-secondary",
///     description: "secondary replication group",
///     globalReplicationGroupId: example.globalReplicationGroupId,
///     numCacheClusters: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.elasticache.ReplicationGroup("primary",
///     replication_group_id="example-primary",
///     description="primary replication group",
///     engine="redis",
///     engine_version="5.0.6",
///     node_type="cache.m5.large",
///     num_cache_clusters=1)
/// example = aws.elasticache.GlobalReplicationGroup("example",
///     global_replication_group_id_suffix="example",
///     primary_replication_group_id=primary.id)
/// secondary = aws.elasticache.ReplicationGroup("secondary",
///     replication_group_id="example-secondary",
///     description="secondary replication group",
///     global_replication_group_id=example.global_replication_group_id,
///     num_cache_clusters=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.ElastiCache.ReplicationGroup("primary", new()
///     {
///         ReplicationGroupId = "example-primary",
///         Description = "primary replication group",
///         Engine = "redis",
///         EngineVersion = "5.0.6",
///         NodeType = "cache.m5.large",
///         NumCacheClusters = 1,
///     });
///
///     var example = new Aws.ElastiCache.GlobalReplicationGroup("example", new()
///     {
///         GlobalReplicationGroupIdSuffix = "example",
///         PrimaryReplicationGroupId = primary.Id,
///     });
///
///     var secondary = new Aws.ElastiCache.ReplicationGroup("secondary", new()
///     {
///         ReplicationGroupId = "example-secondary",
///         Description = "secondary replication group",
///         GlobalReplicationGroupId = example.GlobalReplicationGroupId,
///         NumCacheClusters = 1,
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
/// 		primary, err := elasticache.NewReplicationGroup(ctx, "primary", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId: pulumi.String("example-primary"),
/// 			Description:        pulumi.String("primary replication group"),
/// 			Engine:             pulumi.String("redis"),
/// 			EngineVersion:      pulumi.String("5.0.6"),
/// 			NodeType:           pulumi.String("cache.m5.large"),
/// 			NumCacheClusters:   pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := elasticache.NewGlobalReplicationGroup(ctx, "example", &elasticache.GlobalReplicationGroupArgs{
/// 			GlobalReplicationGroupIdSuffix: pulumi.String("example"),
/// 			PrimaryReplicationGroupId:      primary.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewReplicationGroup(ctx, "secondary", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId:       pulumi.String("example-secondary"),
/// 			Description:              pulumi.String("secondary replication group"),
/// 			GlobalReplicationGroupId: example.GlobalReplicationGroupId,
/// 			NumCacheClusters:         pulumi.Int(1),
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
/// resource "aws_elasticache_replicationgroup" "secondary" {
///   replication_group_id        = "example-secondary"
///   description                 = "secondary replication group"
///   global_replication_group_id = aws_elasticache_globalreplicationgroup.example.global_replication_group_id
///   num_cache_clusters          = 1
/// }
/// resource "aws_elasticache_globalreplicationgroup" "example" {
///   global_replication_group_id_suffix = "example"
///   primary_replication_group_id       = aws_elasticache_replicationgroup.primary.id
/// }
/// resource "aws_elasticache_replicationgroup" "primary" {
///   replication_group_id = "example-primary"
///   description          = "primary replication group"
///   engine               = "redis"
///   engine_version       = "5.0.6"
///   node_type            = "cache.m5.large"
///   num_cache_clusters   = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
/// import com.pulumi.aws.elasticache.GlobalReplicationGroup;
/// import com.pulumi.aws.elasticache.GlobalReplicationGroupArgs;
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
///         var primary = new ReplicationGroup("primary", ReplicationGroupArgs.builder()
///             .replicationGroupId("example-primary")
///             .description("primary replication group")
///             .engine("redis")
///             .engineVersion("5.0.6")
///             .nodeType("cache.m5.large")
///             .numCacheClusters(1)
///             .build());
///
///         var example = new GlobalReplicationGroup("example", GlobalReplicationGroupArgs.builder()
///             .globalReplicationGroupIdSuffix("example")
///             .primaryReplicationGroupId(primary.id())
///             .build());
///
///         var secondary = new ReplicationGroup("secondary", ReplicationGroupArgs.builder()
///             .replicationGroupId("example-secondary")
///             .description("secondary replication group")
///             .globalReplicationGroupId(example.globalReplicationGroupId())
///             .numCacheClusters(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secondary:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example-secondary
///       description: secondary replication group
///       globalReplicationGroupId: ${example.globalReplicationGroupId}
///       numCacheClusters: 1
///   example:
///     type: aws:elasticache:GlobalReplicationGroup
///     properties:
///       globalReplicationGroupIdSuffix: example
///       primaryReplicationGroupId: ${primary.id}
///   primary:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example-primary
///       description: primary replication group
///       engine: redis
///       engineVersion: 5.0.6
///       nodeType: cache.m5.large
///       numCacheClusters: 1
/// ```
///
///
/// ### Redis AUTH and In-Transit Encryption Enabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ReplicationGroup("example", {
///     replicationGroupId: "example",
///     description: "example with authentication",
///     nodeType: "cache.t2.micro",
///     numCacheClusters: 1,
///     port: 6379,
///     subnetGroupName: exampleAwsElasticacheSubnetGroup.name,
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     parameterGroupName: "default.redis5.0",
///     engineVersion: "5.0.6",
///     transitEncryptionEnabled: true,
///     authToken: "abcdefgh1234567890",
///     authTokenUpdateStrategy: "ROTATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ReplicationGroup("example",
///     replication_group_id="example",
///     description="example with authentication",
///     node_type="cache.t2.micro",
///     num_cache_clusters=1,
///     port=6379,
///     subnet_group_name=example_aws_elasticache_subnet_group["name"],
///     security_group_ids=[example_aws_security_group["id"]],
///     parameter_group_name="default.redis5.0",
///     engine_version="5.0.6",
///     transit_encryption_enabled=True,
///     auth_token="abcdefgh1234567890",
///     auth_token_update_strategy="ROTATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.ReplicationGroup("example", new()
///     {
///         ReplicationGroupId = "example",
///         Description = "example with authentication",
///         NodeType = "cache.t2.micro",
///         NumCacheClusters = 1,
///         Port = 6379,
///         SubnetGroupName = exampleAwsElasticacheSubnetGroup.Name,
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         ParameterGroupName = "default.redis5.0",
///         EngineVersion = "5.0.6",
///         TransitEncryptionEnabled = true,
///         AuthToken = "abcdefgh1234567890",
///         AuthTokenUpdateStrategy = "ROTATE",
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
/// 		_, err := elasticache.NewReplicationGroup(ctx, "example", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId: pulumi.String("example"),
/// 			Description:        pulumi.String("example with authentication"),
/// 			NodeType:           pulumi.String("cache.t2.micro"),
/// 			NumCacheClusters:   pulumi.Int(1),
/// 			Port:               pulumi.Int(6379),
/// 			SubnetGroupName:    pulumi.Any(exampleAwsElasticacheSubnetGroup.Name),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			ParameterGroupName:       pulumi.String("default.redis5.0"),
/// 			EngineVersion:            pulumi.String("5.0.6"),
/// 			TransitEncryptionEnabled: pulumi.Bool(true),
/// 			AuthToken:                pulumi.String("abcdefgh1234567890"),
/// 			AuthTokenUpdateStrategy:  pulumi.String("ROTATE"),
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
/// resource "aws_elasticache_replicationgroup" "example" {
///   replication_group_id       = "example"
///   description                = "example with authentication"
///   node_type                  = "cache.t2.micro"
///   num_cache_clusters         = 1
///   port                       = 6379
///   subnet_group_name          = exampleAwsElasticacheSubnetGroup.name
///   security_group_ids         = [exampleAwsSecurityGroup.id]
///   parameter_group_name       = "default.redis5.0"
///   engine_version             = "5.0.6"
///   transit_encryption_enabled = true
///   auth_token                 = "abcdefgh1234567890"
///   auth_token_update_strategy = "ROTATE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
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
///         var example = new ReplicationGroup("example", ReplicationGroupArgs.builder()
///             .replicationGroupId("example")
///             .description("example with authentication")
///             .nodeType("cache.t2.micro")
///             .numCacheClusters(1)
///             .port(6379)
///             .subnetGroupName(exampleAwsElasticacheSubnetGroup.name())
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .parameterGroupName("default.redis5.0")
///             .engineVersion("5.0.6")
///             .transitEncryptionEnabled(true)
///             .authToken("abcdefgh1234567890")
///             .authTokenUpdateStrategy("ROTATE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example
///       description: example with authentication
///       nodeType: cache.t2.micro
///       numCacheClusters: 1
///       port: 6379
///       subnetGroupName: ${exampleAwsElasticacheSubnetGroup.name}
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       parameterGroupName: default.redis5.0
///       engineVersion: 5.0.6
///       transitEncryptionEnabled: true
///       authToken: abcdefgh1234567890
///       authTokenUpdateStrategy: ROTATE
/// ```
///
///
/// &gt; When adding a new `authToken` to a previously passwordless replication group, using the `ROTATE` update strategy will result in support for **both** the new token and passwordless authentication. To immediately require authorization when adding the initial token, use the `SET` strategy instead. See the [Authenticating with the Redis AUTH command](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html) guide for additional details.
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Replication Groups using the `replicationGroupId`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/replicationGroup:ReplicationGroup my_replication_group replication-group-1
/// ```
class ReplicationGroup extends pulumi.CustomResource {
  /// Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false`.
  late final pulumi.Output<bool> applyImmediately;
  /// ARN of the created ElastiCache Replication Group.
  late final pulumi.Output<String> arn;
  /// Whether to enable encryption at rest.
  /// When `engine` is `redis`, default is `false`.
  /// When `engine` is `valkey`, default is `true`.
  late final pulumi.Output<bool> atRestEncryptionEnabled;
  /// Password used to access a password protected server. Can be specified only if `transitEncryptionEnabled = true`.
  late final pulumi.Output<String?> authToken;
  /// Strategy used when modifying `authToken` on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then `authToken` must be omitted.
  late final pulumi.Output<String?> authTokenUpdateStrategy;
  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine types `"redis"` and `"valkey"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  late final pulumi.Output<bool> autoMinorVersionUpgrade;
  /// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, `numCacheClusters` must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`.
  late final pulumi.Output<bool?> automaticFailoverEnabled;
  /// Indicates if cluster mode is enabled.
  late final pulumi.Output<bool> clusterEnabled;
  /// Specifies whether cluster mode is enabled or disabled. Valid values are `enabled` or `disabled` or `compatible`
  late final pulumi.Output<String> clusterMode;
  /// Address of the replication group configuration endpoint when cluster mode is enabled.
  late final pulumi.Output<String> configurationEndpointAddress;
  /// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to `true` when using r6gd nodes.
  late final pulumi.Output<bool> dataTieringEnabled;
  /// User-created description for the replication group. Must not be empty.
  late final pulumi.Output<String> description;
  /// Specifies the durability mode for the replication group. Valid values are `default`, `async`, `sync`, or `disabled`. Requires cluster mode enabled and Valkey 9.0 or higher.
  late final pulumi.Output<String> durability;
  /// Name of the cache engine to be used for the clusters in this replication group.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis`.
  late final pulumi.Output<String> engine;
  /// Version number of the cache engine to be used for the cache clusters in this replication group.
  /// If the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// If the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below.
  late final pulumi.Output<String> engineVersion;
  /// Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
  late final pulumi.Output<String> engineVersionActual;
  /// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If `globalReplicationGroupId` is set, the `numNodeGroups` parameter cannot be set.
  late final pulumi.Output<String> globalReplicationGroupId;
  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  late final pulumi.Output<String> ipDiscovery;
  /// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `atRestEncryptionEnabled = true`.
  late final pulumi.Output<String?> kmsKeyId;
  /// Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>?> logDeliveryConfigurations;
  /// Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  late final pulumi.Output<String> maintenanceWindow;
  /// Identifiers of all the nodes that are part of this replication group.
  late final pulumi.Output<List<String>> memberClusters;
  /// Specifies whether to enable Multi-AZ Support for the replication group.
  /// If `true`, `automaticFailoverEnabled` must also be enabled.
  /// Defaults to `false`.
  late final pulumi.Output<bool?> multiAzEnabled;
  /// The IP versions for cache cluster connections. Valid values are `ipv4`, `ipv6` or `dualStack`.
  late final pulumi.Output<String> networkType;
  /// Configuration block for node groups (shards). Can be specified only if `numNodeGroups` is set. Conflicts with `preferredCacheClusterAzs`. See Node Group Configuration below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> nodeGroupConfigurations;
  /// Instance class to be used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// Required unless `globalReplicationGroupId` is set.
  /// Cannot be set if `globalReplicationGroupId` is set.
  late final pulumi.Output<String> nodeType;
  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  late final pulumi.Output<String?> notificationTopicArn;
  /// Number of cache clusters (primary and replicas) this replication group will have.
  /// If `automaticFailoverEnabled` or `multiAzEnabled` are `true`, must be at least 2.
  /// Updates will occur before other modifications.
  /// Conflicts with `numNodeGroups` and `replicasPerNodeGroup`.
  /// Defaults to `1`.
  late final pulumi.Output<int> numCacheClusters;
  /// Number of node groups (shards) for this Redis replication group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Conflicts with `numCacheClusters`.
  late final pulumi.Output<int> numNodeGroups;
  /// Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable "cluster mode", i.e., data sharding, use a parameter group that has the parameter `cluster-enabled` set to true.
  late final pulumi.Output<String> parameterGroupName;
  /// Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379.
  late final pulumi.Output<int?> port;
  /// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating.
  late final pulumi.Output<List<String>?> preferredCacheClusterAzs;
  /// (Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled.
  late final pulumi.Output<String> primaryEndpointAddress;
  /// (Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled.
  late final pulumi.Output<String> readerEndpointAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Number of replica nodes in each node group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Default AWS limit is 5. Higher values may be available with a quota increase.
  /// Conflicts with `numCacheClusters`.
  /// Can only be set if `numNodeGroups` is set.
  late final pulumi.Output<int> replicasPerNodeGroup;
  /// Replication group identifier. This parameter is stored as a lowercase string.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> replicationGroupId;
  /// IDs of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Names of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  late final pulumi.Output<List<String>> securityGroupNames;
  /// List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas.
  late final pulumi.Output<List<String>?> snapshotArns;
  /// Name of a snapshot from which to restore data into the new node group. Changing the `snapshotName` forces a new resource.
  late final pulumi.Output<String?> snapshotName;
  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of `snapshotRetentionLimit` is set to zero (0), backups are turned off. Please note that setting a `snapshotRetentionLimit` is not supported on cache.t1.micro cache nodes
  late final pulumi.Output<int?> snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  late final pulumi.Output<String> snapshotWindow;
  /// Name of the cache subnet group to be used for the replication group.
  late final pulumi.Output<String> subnetGroupName;
  /// Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Whether to enable encryption in transit.
  /// Changing this argument with an `engineVersion` &lt; `7.0.5` will force a replacement.
  /// Engine versions prior to `7.0.5` only allow this transit encryption to be configured during creation of the replication group.
  late final pulumi.Output<bool> transitEncryptionEnabled;
  /// A setting that enables clients to migrate to in-transit encryption with no downtime.
  /// Valid values are `preferred` and `required`.
  /// When enabling encryption on an existing replication group, this must first be set to `preferred` before setting it to `required` in a subsequent apply.
  /// See the `TransitEncryptionMode` field in the [`CreateReplicationGroup` API documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateReplicationGroup.html) for additional details.
  late final pulumi.Output<String> transitEncryptionMode;
  /// User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. **NOTE:** This argument _is_ a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
  late final pulumi.Output<List<String>?> userGroupIds;

  /// Creates a new [ReplicationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationGroup]. {@macro pulumi_elasticache_replication_group_replication_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationGroup(
    String name, {
    ReplicationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/replicationGroup:ReplicationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applyImmediately = registerOutput<bool>('applyImmediately');
    arn = registerOutput<String>('arn');
    atRestEncryptionEnabled = registerOutput<bool>('atRestEncryptionEnabled');
    authToken = registerOutput<String?>('authToken');
    authTokenUpdateStrategy = registerOutput<String?>('authTokenUpdateStrategy');
    autoMinorVersionUpgrade = registerOutput<bool>('autoMinorVersionUpgrade');
    automaticFailoverEnabled = registerOutput<bool?>('automaticFailoverEnabled');
    clusterEnabled = registerOutput<bool>('clusterEnabled');
    clusterMode = registerOutput<String>('clusterMode');
    configurationEndpointAddress = registerOutput<String>('configurationEndpointAddress');
    dataTieringEnabled = registerOutput<bool>('dataTieringEnabled');
    description = registerOutput<String>('description');
    durability = registerOutput<String>('durability');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalReplicationGroupId = registerOutput<String>('globalReplicationGroupId');
    ipDiscovery = registerOutput<String>('ipDiscovery');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    logDeliveryConfigurations = registerOutput<List<Map<String, dynamic>>?>('logDeliveryConfigurations');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    memberClusters = registerOutput<List<String>>('memberClusters');
    multiAzEnabled = registerOutput<bool?>('multiAzEnabled');
    networkType = registerOutput<String>('networkType');
    nodeGroupConfigurations = registerOutput<List<Map<String, dynamic>>>('nodeGroupConfigurations');
    nodeType = registerOutput<String>('nodeType');
    notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    numCacheClusters = registerOutput<int>('numCacheClusters');
    numNodeGroups = registerOutput<int>('numNodeGroups');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    port = registerOutput<int?>('port');
    preferredCacheClusterAzs = registerOutput<List<String>?>('preferredCacheClusterAzs');
    primaryEndpointAddress = registerOutput<String>('primaryEndpointAddress');
    readerEndpointAddress = registerOutput<String>('readerEndpointAddress');
    region = registerOutput<String>('region');
    replicasPerNodeGroup = registerOutput<int>('replicasPerNodeGroup');
    replicationGroupId = registerOutput<String>('replicationGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    securityGroupNames = registerOutput<List<String>>('securityGroupNames');
    snapshotArns = registerOutput<List<String>?>('snapshotArns');
    snapshotName = registerOutput<String?>('snapshotName');
    snapshotRetentionLimit = registerOutput<int?>('snapshotRetentionLimit');
    snapshotWindow = registerOutput<String>('snapshotWindow');
    subnetGroupName = registerOutput<String>('subnetGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitEncryptionEnabled = registerOutput<bool>('transitEncryptionEnabled');
    transitEncryptionMode = registerOutput<String>('transitEncryptionMode');
    userGroupIds = registerOutput<List<String>?>('userGroupIds');
  }

  /// Gets an existing [ReplicationGroup] resource's state with the given [name] and [id].
  static ReplicationGroup get(
    String name,
    pulumi.Input<String> id, {
    ReplicationGroupState? state,
  }) {
    return ReplicationGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicationGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/replicationGroup:ReplicationGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applyImmediately = registerOutput<bool>('applyImmediately');
    arn = registerOutput<String>('arn');
    atRestEncryptionEnabled = registerOutput<bool>('atRestEncryptionEnabled');
    authToken = registerOutput<String?>('authToken');
    authTokenUpdateStrategy = registerOutput<String?>('authTokenUpdateStrategy');
    autoMinorVersionUpgrade = registerOutput<bool>('autoMinorVersionUpgrade');
    automaticFailoverEnabled = registerOutput<bool?>('automaticFailoverEnabled');
    clusterEnabled = registerOutput<bool>('clusterEnabled');
    clusterMode = registerOutput<String>('clusterMode');
    configurationEndpointAddress = registerOutput<String>('configurationEndpointAddress');
    dataTieringEnabled = registerOutput<bool>('dataTieringEnabled');
    description = registerOutput<String>('description');
    durability = registerOutput<String>('durability');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalReplicationGroupId = registerOutput<String>('globalReplicationGroupId');
    ipDiscovery = registerOutput<String>('ipDiscovery');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    logDeliveryConfigurations = registerOutput<List<Map<String, dynamic>>?>('logDeliveryConfigurations');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    memberClusters = registerOutput<List<String>>('memberClusters');
    multiAzEnabled = registerOutput<bool?>('multiAzEnabled');
    networkType = registerOutput<String>('networkType');
    nodeGroupConfigurations = registerOutput<List<Map<String, dynamic>>>('nodeGroupConfigurations');
    nodeType = registerOutput<String>('nodeType');
    notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    numCacheClusters = registerOutput<int>('numCacheClusters');
    numNodeGroups = registerOutput<int>('numNodeGroups');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    port = registerOutput<int?>('port');
    preferredCacheClusterAzs = registerOutput<List<String>?>('preferredCacheClusterAzs');
    primaryEndpointAddress = registerOutput<String>('primaryEndpointAddress');
    readerEndpointAddress = registerOutput<String>('readerEndpointAddress');
    region = registerOutput<String>('region');
    replicasPerNodeGroup = registerOutput<int>('replicasPerNodeGroup');
    replicationGroupId = registerOutput<String>('replicationGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    securityGroupNames = registerOutput<List<String>>('securityGroupNames');
    snapshotArns = registerOutput<List<String>?>('snapshotArns');
    snapshotName = registerOutput<String?>('snapshotName');
    snapshotRetentionLimit = registerOutput<int?>('snapshotRetentionLimit');
    snapshotWindow = registerOutput<String>('snapshotWindow');
    subnetGroupName = registerOutput<String>('subnetGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitEncryptionEnabled = registerOutput<bool>('transitEncryptionEnabled');
    transitEncryptionMode = registerOutput<String>('transitEncryptionMode');
    userGroupIds = registerOutput<List<String>?>('userGroupIds');
  }
}
