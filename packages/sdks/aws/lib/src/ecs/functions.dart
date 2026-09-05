import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_container_definition_args.dart';
import 'get_container_definition_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_task_definition_args.dart';
import 'get_task_definition_result.dart';
import 'get_task_execution_args.dart';
import 'get_task_execution_result.dart';

/// The ECS Cluster data source allows access to details of a specific
/// cluster within an AWS ECS service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecs_mongo = aws.ecs.getCluster({
///     clusterName: "ecs-mongo-production",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_mongo = aws.ecs.get_cluster(cluster_name="ecs-mongo-production")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecs_mongo = Aws.Ecs.GetCluster.Invoke(new()
///     {
///         ClusterName = "ecs-mongo-production",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.LookupCluster(ctx, &ecs.LookupClusterArgs{
/// 			ClusterName: "ecs-mongo-production",
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
/// data "aws_ecs_getcluster" "ecs-mongo" {
///   cluster_name = "ecs-mongo-production"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetClusterArgs;
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
///         final var ecs-mongo = EcsFunctions.getCluster(GetClusterArgs.builder()
///             .clusterName("ecs-mongo-production")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ecs-mongo:
///     fn::invoke:
///       function: aws:ecs:getCluster
///       arguments:
///         clusterName: ecs-mongo-production
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ecs/getCluster:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Data source for managing an AWS ECS (Elastic Container) Clusters.
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
/// const example = aws.ecs.getClusters({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.get_clusters()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ecs.GetClusters.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.GetClusters(ctx, &ecs.GetClustersArgs{}, nil)
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
/// data "aws_ecs_getclusters" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetClustersArgs;
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
///         final var example = EcsFunctions.getClusters(GetClustersArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ecs:getClusters
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

pulumi.Output<GetClustersResult> getClustersOutput(
  GetClustersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ecs/getClusters:getClusters',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClustersResult.fromMap);
}

/// The ECS container definition data source allows access to details of
/// a specific container within an AWS ECS service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecs_mongo = aws.ecs.getContainerDefinition({
///     taskDefinition: mongo.id,
///     containerName: "mongodb",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_mongo = aws.ecs.get_container_definition(task_definition=mongo["id"],
///     container_name="mongodb")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecs_mongo = Aws.Ecs.GetContainerDefinition.Invoke(new()
///     {
///         TaskDefinition = mongo.Id,
///         ContainerName = "mongodb",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.GetContainerDefinition(ctx, &ecs.GetContainerDefinitionArgs{
/// 			TaskDefinition: mongo.Id,
/// 			ContainerName:  "mongodb",
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
/// data "aws_ecs_getcontainerdefinition" "ecs-mongo" {
///   task_definition = mongo.id
///   container_name  = "mongodb"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetContainerDefinitionArgs;
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
///         final var ecs-mongo = EcsFunctions.getContainerDefinition(GetContainerDefinitionArgs.builder()
///             .taskDefinition(mongo.id())
///             .containerName("mongodb")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ecs-mongo:
///     fn::invoke:
///       function: aws:ecs:getContainerDefinition
///       arguments:
///         taskDefinition: ${mongo.id}
///         containerName: mongodb
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_container_definition_get_container_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerDefinitionResult> getContainerDefinition(
  GetContainerDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getContainerDefinition:getContainerDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerDefinitionResult.fromMap(result);
}

pulumi.Output<GetContainerDefinitionResult> getContainerDefinitionOutput(
  GetContainerDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ecs/getContainerDefinition:getContainerDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContainerDefinitionResult.fromMap);
}

/// The ECS Service data source allows access to details of a specific
/// Service within a AWS ECS Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecs.getService({
///     serviceName: "example",
///     clusterArn: exampleAwsEcsCluster.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.get_service(service_name="example",
///     cluster_arn=example_aws_ecs_cluster["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ecs.GetService.Invoke(new()
///     {
///         ServiceName = "example",
///         ClusterArn = exampleAwsEcsCluster.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.LookupService(ctx, &ecs.LookupServiceArgs{
/// 			ServiceName: "example",
/// 			ClusterArn:  exampleAwsEcsCluster.Arn,
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
/// data "aws_ecs_getservice" "example" {
///   service_name = "example"
///   cluster_arn  = exampleAwsEcsCluster.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetServiceArgs;
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
///         final var example = EcsFunctions.getService(GetServiceArgs.builder()
///             .serviceName("example")
///             .clusterArn(exampleAwsEcsCluster.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ecs:getService
///       arguments:
///         serviceName: example
///         clusterArn: ${exampleAwsEcsCluster.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ecs/getService:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}

/// The ECS task definition data source allows access to details of
/// a specific AWS ECS task definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mongoTaskDefinition = new aws.ecs.TaskDefinition("mongo", {
///     family: "mongodb",
///     containerDefinitions: `[
///   {
///     \\"cpu\\": 128,
///     \\"environment\\": [{
///       \\"name\\": \\"SECRET\\",
///       \\"value\\": \\"KEY\\"
///     }],
///     \\"essential\\": true,
///     \\"image\\": \\"mongo:latest\\",
///     \\"memory\\": 128,
///     \\"memoryReservation\\": 64,
///     \\"name\\": \\"mongodb\\"
///   }
/// ]
/// `,
/// });
/// // Simply specify the family to find the latest ACTIVE revision in that family.
/// const mongo = aws.ecs.getTaskDefinitionOutput({
///     taskDefinition: mongoTaskDefinition.family,
/// });
/// const foo = new aws.ecs.Cluster("foo", {name: "foo"});
/// const mongoService = new aws.ecs.Service("mongo", {
///     name: "mongo",
///     cluster: foo.id,
///     desiredCount: 2,
///     taskDefinition: mongo.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mongo_task_definition = aws.ecs.TaskDefinition("mongo",
///     family="mongodb",
///     container_definitions="""[
///   {
///     \"cpu\": 128,
///     \"environment\": [{
///       \"name\": \"SECRET\",
///       \"value\": \"KEY\"
///     }],
///     \"essential\": true,
///     \"image\": \"mongo:latest\",
///     \"memory\": 128,
///     \"memoryReservation\": 64,
///     \"name\": \"mongodb\"
///   }
/// ]
/// """)
/// # Simply specify the family to find the latest ACTIVE revision in that family.
/// mongo = aws.ecs.get_task_definition_output(task_definition=mongo_task_definition.family)
/// foo = aws.ecs.Cluster("foo", name="foo")
/// mongo_service = aws.ecs.Service("mongo",
///     name="mongo",
///     cluster=foo.id,
///     desired_count=2,
///     task_definition=mongo.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoTaskDefinition = new Aws.Ecs.TaskDefinition("mongo", new()
///     {
///         Family = "mongodb",
///         ContainerDefinitions = @"[
///   {
///     \""cpu\"": 128,
///     \""environment\"": [{
///       \""name\"": \""SECRET\"",
///       \""value\"": \""KEY\""
///     }],
///     \""essential\"": true,
///     \""image\"": \""mongo:latest\"",
///     \""memory\"": 128,
///     \""memoryReservation\"": 64,
///     \""name\"": \""mongodb\""
///   }
/// ]
/// ",
///     });
///
///     // Simply specify the family to find the latest ACTIVE revision in that family.
///     var mongo = Aws.Ecs.GetTaskDefinition.Invoke(new()
///     {
///         TaskDefinition = mongoTaskDefinition.Family,
///     });
///
///     var foo = new Aws.Ecs.Cluster("foo", new()
///     {
///         Name = "foo",
///     });
///
///     var mongoService = new Aws.Ecs.Service("mongo", new()
///     {
///         Name = "mongo",
///         Cluster = foo.Id,
///         DesiredCount = 2,
///         TaskDefinition = mongo.Apply(getTaskDefinitionResult => getTaskDefinitionResult.Arn),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mongoTaskDefinition, err := ecs.NewTaskDefinition(ctx, "mongo", &ecs.TaskDefinitionArgs{
/// 			Family: pulumi.String("mongodb"),
/// 			ContainerDefinitions: pulumi.String(`[
///   {
///     \"cpu\": 128,
///     \"environment\": [{
///       \"name\": \"SECRET\",
///       \"value\": \"KEY\"
///     }],
///     \"essential\": true,
///     \"image\": \"mongo:latest\",
///     \"memory\": 128,
///     \"memoryReservation\": 64,
///     \"name\": \"mongodb\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Simply specify the family to find the latest ACTIVE revision in that family.
/// 		mongo := ecs.LookupTaskDefinitionOutput(ctx, ecs.GetTaskDefinitionOutputArgs{
/// 			TaskDefinition: mongoTaskDefinition.Family,
/// 		}, nil)
/// 		foo, err := ecs.NewCluster(ctx, "foo", &ecs.ClusterArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewService(ctx, "mongo", &ecs.ServiceArgs{
/// 			Name:           pulumi.String("mongo"),
/// 			Cluster:        foo.ID().ToIDOutput().ToStringOutput(),
/// 			DesiredCount:   pulumi.Int(2),
/// 			TaskDefinition: mongo.Arn(),
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
/// data "aws_ecs_gettaskdefinition" "mongo" {
///   task_definition = aws_ecs_taskdefinition.mongo.family
/// }
///
/// resource "aws_ecs_cluster" "foo" {
///   name = "foo"
/// }
/// resource "aws_ecs_taskdefinition" "mongo" {
///   family                = "mongodb"
///   container_definitions = "[\n  {\n    \\\"cpu\\\": 128,\n    \\\"environment\\\": [{\n      \\\"name\\\": \\\"SECRET\\\",\n      \\\"value\\\": \\\"KEY\\\"\n    }],\n    \\\"essential\\\": true,\n    \\\"image\\\": \\\"mongo:latest\\\",\n    \\\"memory\\\": 128,\n    \\\"memoryReservation\\\": 64,\n    \\\"name\\\": \\\"mongodb\\\"\n  }\n]\n"
/// }
/// resource "aws_ecs_service" "mongo" {
///   name          = "mongo"
///   cluster       = aws_ecs_cluster.foo.id
///   desired_count = 2
///   # Track the latest ACTIVE revision
///   task_definition = data.aws_ecs_gettaskdefinition.mongo.arn
/// }
/// # Simply specify the family to find the latest ACTIVE revision in that family.
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetTaskDefinitionArgs;
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.aws.ecs.ClusterArgs;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
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
///         var mongoTaskDefinition = new TaskDefinition("mongoTaskDefinition", TaskDefinitionArgs.builder()
///             .family("mongodb")
///             .containerDefinitions("""
/// [
///   {
///     \"cpu\": 128,
///     \"environment\": [{
///       \"name\": \"SECRET\",
///       \"value\": \"KEY\"
///     }],
///     \"essential\": true,
///     \"image\": \"mongo:latest\",
///     \"memory\": 128,
///     \"memoryReservation\": 64,
///     \"name\": \"mongodb\"
///   }
/// ]
///             """)
///             .build());
///
///         // Simply specify the family to find the latest ACTIVE revision in that family.
///         final var mongo = EcsFunctions.getTaskDefinition(GetTaskDefinitionArgs.builder()
///             .taskDefinition(mongoTaskDefinition.family())
///             .build());
///
///         var foo = new Cluster("foo", ClusterArgs.builder()
///             .name("foo")
///             .build());
///
///         var mongoService = new Service("mongoService", ServiceArgs.builder()
///             .name("mongo")
///             .cluster(foo.id())
///             .desiredCount(2)
///             .taskDefinition(mongo.applyValue(_mongo -> _mongo.arn()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ecs:Cluster
///     properties:
///       name: foo
///   mongoTaskDefinition:
///     type: aws:ecs:TaskDefinition
///     name: mongo
///     properties:
///       family: mongodb
///       containerDefinitions: |
///         [
///           {
///             \"cpu\": 128,
///             \"environment\": [{
///               \"name\": \"SECRET\",
///               \"value\": \"KEY\"
///             }],
///             \"essential\": true,
///             \"image\": \"mongo:latest\",
///             \"memory\": 128,
///             \"memoryReservation\": 64,
///             \"name\": \"mongodb\"
///           }
///         ]
///   mongoService:
///     type: aws:ecs:Service
///     name: mongo
///     properties:
///       name: mongo
///       cluster: ${foo.id}
///       desiredCount: 2 # Track the latest ACTIVE revision
///       taskDefinition: ${mongo.arn}
/// variables:
///   # Simply specify the family to find the latest ACTIVE revision in that family.
///   mongo:
///     fn::invoke:
///       function: aws:ecs:getTaskDefinition
///       arguments:
///         taskDefinition: ${mongoTaskDefinition.family}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_task_definition_get_task_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskDefinitionResult> getTaskDefinition(
  GetTaskDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getTaskDefinition:getTaskDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskDefinitionResult.fromMap(result);
}

pulumi.Output<GetTaskDefinitionResult> getTaskDefinitionOutput(
  GetTaskDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ecs/getTaskDefinition:getTaskDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskDefinitionResult.fromMap);
}

/// Data source for managing an AWS ECS (Elastic Container) Task Execution. This data source calls the [RunTask](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) API, allowing execution of one-time tasks that don't fit a standard resource lifecycle. See the feature request issue for additional context.
///
/// &gt; **NOTE on preview operations:** This data source calls the `RunTask` API on every read operation, which means new task(s) may be created from a `pulumi preview` command if all attributes are known. Placing this functionality behind a data source is an intentional trade off to enable use cases requiring a one-time task execution without relying on provisioners. Caution should be taken to ensure the data source is only executed once, or that the resulting tasks can safely run in parallel.
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
/// const example = aws.ecs.getTaskExecution({
///     networkConfiguration: {
///         subnets: exampleAwsSubnet.map(__item => __item.id),
///         securityGroups: [exampleAwsSecurityGroup.id],
///         assignPublicIp: false,
///     },
///     cluster: exampleAwsEcsCluster.id,
///     taskDefinition: exampleAwsEcsTaskDefinition.arn,
///     desiredCount: 1,
///     launchType: "FARGATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.get_task_execution(network_configuration={
///         "subnets": [__item["id"] for __item in example_aws_subnet],
///         "security_groups": [example_aws_security_group["id"]],
///         "assign_public_ip": False,
///     },
///     cluster=example_aws_ecs_cluster["id"],
///     task_definition=example_aws_ecs_task_definition["arn"],
///     desired_count=1,
///     launch_type="FARGATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ecs.GetTaskExecution.Invoke(new()
///     {
///         NetworkConfiguration = new Aws.Ecs.Inputs.GetTaskExecutionNetworkConfigurationInputArgs
///         {
///             Subnets = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///             SecurityGroups = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///             AssignPublicIp = false,
///         },
///         Cluster = exampleAwsEcsCluster.Id,
///         TaskDefinition = exampleAwsEcsTaskDefinition.Arn,
///         DesiredCount = 1,
///         LaunchType = "FARGATE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.GetTaskExecution(ctx, &ecs.GetTaskExecutionArgs{
/// NetworkConfiguration: ecs.GetTaskExecutionNetworkConfiguration{
/// Subnets: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:2,22-44)),
/// SecurityGroups: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// AssignPublicIp: pulumi.BoolRef(false),
/// },
/// Cluster: exampleAwsEcsCluster.Id,
/// TaskDefinition: exampleAwsEcsTaskDefinition.Arn,
/// DesiredCount: pulumi.IntRef(1),
/// LaunchType: pulumi.StringRef("FARGATE"),
/// }, nil);
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
/// data "aws_ecs_gettaskexecution" "example" {
///   network_configuration = {
///     subnets          = exampleAwsSubnet[*].id
///     security_groups  = [exampleAwsSecurityGroup.id]
///     assign_public_ip = false
///   }
///   cluster         = exampleAwsEcsCluster.id
///   task_definition = exampleAwsEcsTaskDefinition.arn
///   desired_count   = 1
///   launch_type     = "FARGATE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetTaskExecutionArgs;
/// import com.pulumi.aws.ecs.inputs.GetTaskExecutionNetworkConfigurationArgs;
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
///         final var example = EcsFunctions.getTaskExecution(GetTaskExecutionArgs.builder()
///             .networkConfiguration(GetTaskExecutionNetworkConfigurationArgs.builder()
///                 .subnets(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .securityGroups(exampleAwsSecurityGroup.id())
///                 .assignPublicIp(false)
///                 .build())
///             .cluster(exampleAwsEcsCluster.id())
///             .taskDefinition(exampleAwsEcsTaskDefinition.arn())
///             .desiredCount(1)
///             .launchType("FARGATE")
///             .build());
///
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_task_execution_get_task_execution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskExecutionResult> getTaskExecution(
  GetTaskExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getTaskExecution:getTaskExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskExecutionResult.fromMap(result);
}

pulumi.Output<GetTaskExecutionResult> getTaskExecutionOutput(
  GetTaskExecutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ecs/getTaskExecution:getTaskExecution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskExecutionResult.fromMap);
}
