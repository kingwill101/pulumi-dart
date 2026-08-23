import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_replication_group_args.dart';
import 'get_replication_group_result.dart';
import 'get_reserved_cache_node_offering_args.dart';
import 'get_reserved_cache_node_offering_result.dart';
import 'get_serverless_cache_args.dart';
import 'get_serverless_cache_result.dart';
import 'get_service_update_actions_args.dart';
import 'get_service_update_actions_result.dart';
import 'get_service_updates_args.dart';
import 'get_service_updates_result.dart';
import 'get_subnet_group_args.dart';
import 'get_subnet_group_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';

/// Use this data source to get information about an ElastiCache Cluster
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myCluster = aws.elasticache.getCluster({
///     clusterId: "my-cluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_cluster = aws.elasticache.get_cluster(cluster_id="my-cluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myCluster = Aws.ElastiCache.GetCluster.Invoke(new()
///     {
///         ClusterId = "my-cluster-id",
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
/// 		_, err := elasticache.LookupCluster(ctx, &elasticache.LookupClusterArgs{
/// 			ClusterId: "my-cluster-id",
/// 		}, nil)
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
/// data "aws_elasticache_getcluster" "myCluster" {
///   cluster_id = "my-cluster-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetClusterArgs;
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
///         final var myCluster = ElasticacheFunctions.getCluster(GetClusterArgs.builder()
///             .clusterId("my-cluster-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myCluster:
///     fn::invoke:
///       function: aws:elasticache:getCluster
///       arguments:
///         clusterId: my-cluster-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Use this data source to get information about an ElastiCache Replication Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = aws.elasticache.getReplicationGroup({
///     replicationGroupId: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.elasticache.get_replication_group(replication_group_id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = Aws.ElastiCache.GetReplicationGroup.Invoke(new()
///     {
///         ReplicationGroupId = "example",
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
/// 		_, err := elasticache.LookupReplicationGroup(ctx, &elasticache.LookupReplicationGroupArgs{
/// 			ReplicationGroupId: "example",
/// 		}, nil)
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
/// data "aws_elasticache_getreplicationgroup" "bar" {
///   replication_group_id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetReplicationGroupArgs;
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
///         final var bar = ElasticacheFunctions.getReplicationGroup(GetReplicationGroupArgs.builder()
///             .replicationGroupId("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   bar:
///     fn::invoke:
///       function: aws:elasticache:getReplicationGroup
///       arguments:
///         replicationGroupId: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_replication_group_get_replication_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationGroupResult> getReplicationGroup(
  GetReplicationGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getReplicationGroup:getReplicationGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationGroupResult.fromMap(result);
}

/// Information about a single ElastiCache Reserved Cache Node Offering.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getReservedCacheNodeOffering({
///     cacheNodeType: "cache.t4g.small",
///     duration: "P1Y",
///     offeringType: "No Upfront",
///     productDescription: "redis",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_reserved_cache_node_offering(cache_node_type="cache.t4g.small",
///     duration="P1Y",
///     offering_type="No Upfront",
///     product_description="redis")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ElastiCache.GetReservedCacheNodeOffering.Invoke(new()
///     {
///         CacheNodeType = "cache.t4g.small",
///         Duration = "P1Y",
///         OfferingType = "No Upfront",
///         ProductDescription = "redis",
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
/// 		_, err := elasticache.GetReservedCacheNodeOffering(ctx, &elasticache.GetReservedCacheNodeOfferingArgs{
/// 			CacheNodeType:      "cache.t4g.small",
/// 			Duration:           "P1Y",
/// 			OfferingType:       "No Upfront",
/// 			ProductDescription: "redis",
/// 		}, nil)
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
/// data "aws_elasticache_getreservedcachenodeoffering" "example" {
///   cache_node_type     = "cache.t4g.small"
///   duration            = "P1Y"
///   offering_type       = "No Upfront"
///   product_description = "redis"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetReservedCacheNodeOfferingArgs;
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
///         final var example = ElasticacheFunctions.getReservedCacheNodeOffering(GetReservedCacheNodeOfferingArgs.builder()
///             .cacheNodeType("cache.t4g.small")
///             .duration("P1Y")
///             .offeringType("No Upfront")
///             .productDescription("redis")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:elasticache:getReservedCacheNodeOffering
///       arguments:
///         cacheNodeType: cache.t4g.small
///         duration: P1Y
///         offeringType: No Upfront
///         productDescription: redis
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_reserved_cache_node_offering_get_reserved_cache_node_offering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservedCacheNodeOfferingResult> getReservedCacheNodeOffering(
  GetReservedCacheNodeOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getReservedCacheNodeOffering:getReservedCacheNodeOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservedCacheNodeOfferingResult.fromMap(result);
}

/// Use this data source to get information about an ElastiCache Serverless Cache.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getServerlessCache({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_serverless_cache(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ElastiCache.GetServerlessCache.Invoke(new()
///     {
///         Name = "example",
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
/// 		_, err := elasticache.LookupServerlessCache(ctx, &elasticache.LookupServerlessCacheArgs{
/// 			Name: "example",
/// 		}, nil)
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
/// data "aws_elasticache_getserverlesscache" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetServerlessCacheArgs;
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
///         final var example = ElasticacheFunctions.getServerlessCache(GetServerlessCacheArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:elasticache:getServerlessCache
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_serverless_cache_get_serverless_cache_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessCacheResult> getServerlessCache(
  GetServerlessCacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getServerlessCache:getServerlessCache',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessCacheResult.fromMap(result);
}

/// Provides details about an AWS ElastiCache Service Update Actions for a given Cache Cluster or Replication Group.
///
/// When creating a new Cache Cluster or Replication Group, it takes approximately 10 minutes for Update Actions to be listed.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// The following example will list all Update Actions for the Cache Cluster with a service update status of `available`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getServiceUpdateActions({
///     cacheClusterId: exampleAwsElasticacheCluster.clusterId,
///     serviceUpdateStatuses: ["available"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_service_update_actions(cache_cluster_id=example_aws_elasticache_cluster["clusterId"],
///     service_update_statuses=["available"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ElastiCache.GetServiceUpdateActions.Invoke(new()
///     {
///         CacheClusterId = exampleAwsElasticacheCluster.ClusterId,
///         ServiceUpdateStatuses = new[]
///         {
///             "available",
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
/// 		_, err := elasticache.GetServiceUpdateActions(ctx, &elasticache.GetServiceUpdateActionsArgs{
/// 			CacheClusterId: pulumi.StringRef(exampleAwsElasticacheCluster.ClusterId),
/// 			ServiceUpdateStatuses: []string{
/// 				"available",
/// 			},
/// 		}, nil)
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
/// data "aws_elasticache_getserviceupdateactions" "example" {
///   cache_cluster_id        = exampleAwsElasticacheCluster.clusterId
///   service_update_statuses = ["available"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetServiceUpdateActionsArgs;
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
///         final var example = ElasticacheFunctions.getServiceUpdateActions(GetServiceUpdateActionsArgs.builder()
///             .cacheClusterId(exampleAwsElasticacheCluster.clusterId())
///             .serviceUpdateStatuses("available")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:elasticache:getServiceUpdateActions
///       arguments:
///         cacheClusterId: ${exampleAwsElasticacheCluster.clusterId}
///         serviceUpdateStatuses:
///           - available
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_service_update_actions_get_service_update_actions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceUpdateActionsResult> getServiceUpdateActions(
  GetServiceUpdateActionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getServiceUpdateActions:getServiceUpdateActions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceUpdateActionsResult.fromMap(result);
}

/// Provides details about AWS ElastiCache Service Updates.
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
/// const example = aws.elasticache.getServiceUpdates({
///     statuses: ["available"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_service_updates(statuses=["available"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ElastiCache.GetServiceUpdates.Invoke(new()
///     {
///         Statuses = new[]
///         {
///             "available",
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
/// 		_, err := elasticache.GetServiceUpdates(ctx, &elasticache.GetServiceUpdatesArgs{
/// 			Statuses: []string{
/// 				"available",
/// 			},
/// 		}, nil)
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
/// data "aws_elasticache_getserviceupdates" "example" {
///   statuses = ["available"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetServiceUpdatesArgs;
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
///         final var example = ElasticacheFunctions.getServiceUpdates(GetServiceUpdatesArgs.builder()
///             .statuses("available")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:elasticache:getServiceUpdates
///       arguments:
///         statuses:
///           - available
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_service_updates_get_service_updates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceUpdatesResult> getServiceUpdates(
  GetServiceUpdatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getServiceUpdates:getServiceUpdates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceUpdatesResult.fromMap(result);
}

/// Provides information about a ElastiCache Subnet Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getSubnetGroup({
///     name: "my-subnet-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_subnet_group(name="my-subnet-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ElastiCache.GetSubnetGroup.Invoke(new()
///     {
///         Name = "my-subnet-group",
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
/// 		_, err := elasticache.LookupSubnetGroup(ctx, &elasticache.LookupSubnetGroupArgs{
/// 			Name: "my-subnet-group",
/// 		}, nil)
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
/// data "aws_elasticache_getsubnetgroup" "example" {
///   name = "my-subnet-group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetSubnetGroupArgs;
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
///         final var example = ElasticacheFunctions.getSubnetGroup(GetSubnetGroupArgs.builder()
///             .name("my-subnet-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:elasticache:getSubnetGroup
///       arguments:
///         name: my-subnet-group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_subnet_group_get_subnet_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetGroupResult> getSubnetGroup(
  GetSubnetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult.fromMap(result);
}

/// Use this data source to get information about an ElastiCache User.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = aws.elasticache.getUser({
///     userId: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.elasticache.get_user(user_id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = Aws.ElastiCache.GetUser.Invoke(new()
///     {
///         UserId = "example",
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
/// 		_, err := elasticache.LookupUser(ctx, &elasticache.LookupUserArgs{
/// 			UserId: "example",
/// 		}, nil)
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
/// data "aws_elasticache_getuser" "bar" {
///   user_id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetUserArgs;
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
///         final var bar = ElasticacheFunctions.getUser(GetUserArgs.builder()
///             .userId("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   bar:
///     fn::invoke:
///       function: aws:elasticache:getUser
///       arguments:
///         userId: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticache_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}
