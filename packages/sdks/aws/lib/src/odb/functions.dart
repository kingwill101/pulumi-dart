import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_autonomous_vm_cluster_args.dart';
import 'get_cloud_autonomous_vm_cluster_result.dart';
import 'get_cloud_autonomous_vm_clusters_args.dart';
import 'get_cloud_autonomous_vm_clusters_result.dart';
import 'get_cloud_exadata_infrastructure_args.dart';
import 'get_cloud_exadata_infrastructure_result.dart';
import 'get_cloud_exadata_infrastructures_args.dart';
import 'get_cloud_exadata_infrastructures_result.dart';
import 'get_cloud_vm_cluster_args.dart';
import 'get_cloud_vm_cluster_result.dart';
import 'get_cloud_vm_clusters_args.dart';
import 'get_cloud_vm_clusters_result.dart';
import 'get_db_node_args.dart';
import 'get_db_node_result.dart';
import 'get_db_nodes_args.dart';
import 'get_db_nodes_result.dart';
import 'get_db_server_args.dart';
import 'get_db_server_result.dart';
import 'get_db_servers_args.dart';
import 'get_db_servers_result.dart';
import 'get_db_system_shapes_args.dart';
import 'get_db_system_shapes_result.dart';
import 'get_gi_versions_args.dart';
import 'get_gi_versions_result.dart';
import 'get_iam_role_association_args.dart';
import 'get_iam_role_association_result.dart';
import 'get_network_args.dart';
import 'get_network_peering_connection_args.dart';
import 'get_network_peering_connection_result.dart';
import 'get_network_peering_connections_args.dart';
import 'get_network_peering_connections_result.dart';
import 'get_network_result.dart';
import 'get_networks_args.dart';
import 'get_networks_result.dart';

/// Data source for managing cloud autonomous vm cluster resource in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getCloudAutonomousVmCluster({
///     id: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_cloud_autonomous_vm_cluster(id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetCloudAutonomousVmCluster.Invoke(new()
///     {
///         Id = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.LookupCloudAutonomousVmCluster(ctx, &odb.LookupCloudAutonomousVmClusterArgs{
/// 			Id: "example",
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
/// data "aws_odb_getcloudautonomousvmcluster" "example" {
///   id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetCloudAutonomousVmClusterArgs;
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
///         final var example = OdbFunctions.getCloudAutonomousVmCluster(GetCloudAutonomousVmClusterArgs.builder()
///             .id("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getCloudAutonomousVmCluster
///       arguments:
///         id: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_cloud_autonomous_vm_cluster_get_cloud_autonomous_vm_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudAutonomousVmClusterResult> getCloudAutonomousVmCluster(
  GetCloudAutonomousVmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudAutonomousVmCluster:getCloudAutonomousVmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudAutonomousVmClusterResult.fromMap(result);
}

pulumi.Output<GetCloudAutonomousVmClusterResult> getCloudAutonomousVmClusterOutput(
  GetCloudAutonomousVmClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getCloudAutonomousVmCluster:getCloudAutonomousVmCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudAutonomousVmClusterResult.fromMap);
}

/// Data source for managing cloud autonomous vm clusters in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getCloudAutonomousVmClusters({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_cloud_autonomous_vm_clusters()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetCloudAutonomousVmClusters.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetCloudAutonomousVmClusters(ctx, &odb.GetCloudAutonomousVmClustersArgs{}, nil)
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
/// data "aws_odb_getcloudautonomousvmclusters" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetCloudAutonomousVmClustersArgs;
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
///         final var example = OdbFunctions.getCloudAutonomousVmClusters(GetCloudAutonomousVmClustersArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getCloudAutonomousVmClusters
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_cloud_autonomous_vm_clusters_get_cloud_autonomous_vm_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudAutonomousVmClustersResult> getCloudAutonomousVmClusters(
  GetCloudAutonomousVmClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudAutonomousVmClusters:getCloudAutonomousVmClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudAutonomousVmClustersResult.fromMap(result);
}

pulumi.Output<GetCloudAutonomousVmClustersResult> getCloudAutonomousVmClustersOutput(
  GetCloudAutonomousVmClustersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getCloudAutonomousVmClusters:getCloudAutonomousVmClusters',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudAutonomousVmClustersResult.fromMap);
}

/// Data source for exadata infrastructure resource in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getCloudExadataInfrastructure({
///     id: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_cloud_exadata_infrastructure(id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetCloudExadataInfrastructure.Invoke(new()
///     {
///         Id = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.LookupCloudExadataInfrastructure(ctx, &odb.LookupCloudExadataInfrastructureArgs{
/// 			Id: "example",
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
/// data "aws_odb_getcloudexadatainfrastructure" "example" {
///   id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetCloudExadataInfrastructureArgs;
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
///         final var example = OdbFunctions.getCloudExadataInfrastructure(GetCloudExadataInfrastructureArgs.builder()
///             .id("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getCloudExadataInfrastructure
///       arguments:
///         id: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_cloud_exadata_infrastructure_get_cloud_exadata_infrastructure_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudExadataInfrastructureResult> getCloudExadataInfrastructure(
  GetCloudExadataInfrastructureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudExadataInfrastructure:getCloudExadataInfrastructure',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructureResult.fromMap(result);
}

pulumi.Output<GetCloudExadataInfrastructureResult> getCloudExadataInfrastructureOutput(
  GetCloudExadataInfrastructureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getCloudExadataInfrastructure:getCloudExadataInfrastructure',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudExadataInfrastructureResult.fromMap);
}

/// Data source for exadata infrastructures in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getCloudExadataInfrastructures({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_cloud_exadata_infrastructures()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetCloudExadataInfrastructures.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetCloudExadataInfrastructures(ctx, &odb.GetCloudExadataInfrastructuresArgs{}, nil)
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
/// data "aws_odb_getcloudexadatainfrastructures" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetCloudExadataInfrastructuresArgs;
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
///         final var example = OdbFunctions.getCloudExadataInfrastructures(GetCloudExadataInfrastructuresArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getCloudExadataInfrastructures
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_cloud_exadata_infrastructures_get_cloud_exadata_infrastructures_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudExadataInfrastructuresResult> getCloudExadataInfrastructures(
  GetCloudExadataInfrastructuresArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudExadataInfrastructures:getCloudExadataInfrastructures',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructuresResult.fromMap(result);
}

pulumi.Output<GetCloudExadataInfrastructuresResult> getCloudExadataInfrastructuresOutput(
  GetCloudExadataInfrastructuresArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getCloudExadataInfrastructures:getCloudExadataInfrastructures',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudExadataInfrastructuresResult.fromMap);
}

/// Data source for cloud vm cluster in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getCloudVmCluster({
///     id: "example-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_cloud_vm_cluster(id="example-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetCloudVmCluster.Invoke(new()
///     {
///         Id = "example-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.LookupCloudVmCluster(ctx, &odb.LookupCloudVmClusterArgs{
/// 			Id: "example-id",
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
/// data "aws_odb_getcloudvmcluster" "example" {
///   id = "example-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetCloudVmClusterArgs;
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
///         final var example = OdbFunctions.getCloudVmCluster(GetCloudVmClusterArgs.builder()
///             .id("example-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getCloudVmCluster
///       arguments:
///         id: example-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudVmClusterResult> getCloudVmCluster(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudVmCluster:getCloudVmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClusterResult.fromMap(result);
}

pulumi.Output<GetCloudVmClusterResult> getCloudVmClusterOutput(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getCloudVmCluster:getCloudVmCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudVmClusterResult.fromMap);
}

/// Data source for retrieving all cloud vm clusters AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getCloudVmClusters({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_cloud_vm_clusters()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetCloudVmClusters.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetCloudVmClusters(ctx, &odb.GetCloudVmClustersArgs{}, nil)
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
/// data "aws_odb_getcloudvmclusters" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetCloudVmClustersArgs;
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
///         final var example = OdbFunctions.getCloudVmClusters(GetCloudVmClustersArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getCloudVmClusters
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_cloud_vm_clusters_get_cloud_vm_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudVmClustersResult> getCloudVmClusters(
  GetCloudVmClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudVmClusters:getCloudVmClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClustersResult.fromMap(result);
}

pulumi.Output<GetCloudVmClustersResult> getCloudVmClustersOutput(
  GetCloudVmClustersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getCloudVmClusters:getCloudVmClusters',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudVmClustersResult.fromMap);
}

/// Data source for manging db nodes linked to cloud vm cluster of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getDbNode({
///     cloudVmClusterId: "cloud_vm_cluster_id",
///     id: "db_node_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_db_node(cloud_vm_cluster_id="cloud_vm_cluster_id",
///     id="db_node_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetDbNode.Invoke(new()
///     {
///         CloudVmClusterId = "cloud_vm_cluster_id",
///         Id = "db_node_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetDbNode(ctx, &odb.GetDbNodeArgs{
/// 			CloudVmClusterId: "cloud_vm_cluster_id",
/// 			Id:               "db_node_id",
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
/// data "aws_odb_getdbnode" "example" {
///   cloud_vm_cluster_id = "cloud_vm_cluster_id"
///   id                  = "db_node_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetDbNodeArgs;
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
///         final var example = OdbFunctions.getDbNode(GetDbNodeArgs.builder()
///             .cloudVmClusterId("cloud_vm_cluster_id")
///             .id("db_node_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getDbNode
///       arguments:
///         cloudVmClusterId: cloud_vm_cluster_id
///         id: db_node_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_db_node_get_db_node_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbNodeResult> getDbNode(
  GetDbNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbNode:getDbNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbNodeResult.fromMap(result);
}

pulumi.Output<GetDbNodeResult> getDbNodeOutput(
  GetDbNodeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getDbNode:getDbNode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbNodeResult.fromMap);
}

/// Data source for manging db nodes linked to cloud vm cluster of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getDbNodes({
///     cloudVmClusterId: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_db_nodes(cloud_vm_cluster_id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetDbNodes.Invoke(new()
///     {
///         CloudVmClusterId = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetDbNodes(ctx, &odb.GetDbNodesArgs{
/// 			CloudVmClusterId: "example",
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
/// data "aws_odb_getdbnodes" "example" {
///   cloud_vm_cluster_id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetDbNodesArgs;
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
///         final var example = OdbFunctions.getDbNodes(GetDbNodesArgs.builder()
///             .cloudVmClusterId("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getDbNodes
///       arguments:
///         cloudVmClusterId: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_db_nodes_get_db_nodes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbNodesResult> getDbNodes(
  GetDbNodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbNodes:getDbNodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbNodesResult.fromMap(result);
}

pulumi.Output<GetDbNodesResult> getDbNodesOutput(
  GetDbNodesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getDbNodes:getDbNodes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbNodesResult.fromMap);
}

/// Data source for manging db server linked to exadata infrastructure of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getDbServer({
///     cloudExadataInfrastructureId: "exadata_infra_id",
///     id: "db_server_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_db_server(cloud_exadata_infrastructure_id="exadata_infra_id",
///     id="db_server_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetDbServer.Invoke(new()
///     {
///         CloudExadataInfrastructureId = "exadata_infra_id",
///         Id = "db_server_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetDbServer(ctx, &odb.GetDbServerArgs{
/// 			CloudExadataInfrastructureId: "exadata_infra_id",
/// 			Id:                           "db_server_id",
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
/// data "aws_odb_getdbserver" "example" {
///   cloud_exadata_infrastructure_id = "exadata_infra_id"
///   id                              = "db_server_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetDbServerArgs;
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
///         final var example = OdbFunctions.getDbServer(GetDbServerArgs.builder()
///             .cloudExadataInfrastructureId("exadata_infra_id")
///             .id("db_server_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getDbServer
///       arguments:
///         cloudExadataInfrastructureId: exadata_infra_id
///         id: db_server_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_db_server_get_db_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbServerResult> getDbServer(
  GetDbServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbServer:getDbServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbServerResult.fromMap(result);
}

pulumi.Output<GetDbServerResult> getDbServerOutput(
  GetDbServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getDbServer:getDbServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbServerResult.fromMap);
}

/// Data source for manging db servers linked to exadata infrastructure of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getDbServers({
///     cloudExadataInfrastructureId: "exadata_infra_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_db_servers(cloud_exadata_infrastructure_id="exadata_infra_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetDbServers.Invoke(new()
///     {
///         CloudExadataInfrastructureId = "exadata_infra_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetDbServers(ctx, &odb.GetDbServersArgs{
/// 			CloudExadataInfrastructureId: "exadata_infra_id",
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
/// data "aws_odb_getdbservers" "example" {
///   cloud_exadata_infrastructure_id = "exadata_infra_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetDbServersArgs;
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
///         final var example = OdbFunctions.getDbServers(GetDbServersArgs.builder()
///             .cloudExadataInfrastructureId("exadata_infra_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getDbServers
///       arguments:
///         cloudExadataInfrastructureId: exadata_infra_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_db_servers_get_db_servers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbServersResult> getDbServers(
  GetDbServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbServers:getDbServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbServersResult.fromMap(result);
}

pulumi.Output<GetDbServersResult> getDbServersOutput(
  GetDbServersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getDbServers:getDbServers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbServersResult.fromMap);
}

/// Data source to retrieve available system shapes Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getDbSystemShapes({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_db_system_shapes()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetDbSystemShapes.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetDbSystemShapes(ctx, &odb.GetDbSystemShapesArgs{}, nil)
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
/// data "aws_odb_getdbsystemshapes" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetDbSystemShapesArgs;
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
///         final var example = OdbFunctions.getDbSystemShapes(GetDbSystemShapesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getDbSystemShapes
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_db_system_shapes_get_db_system_shapes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbSystemShapesResult> getDbSystemShapes(
  GetDbSystemShapesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbSystemShapes:getDbSystemShapes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbSystemShapesResult.fromMap(result);
}

pulumi.Output<GetDbSystemShapesResult> getDbSystemShapesOutput(
  GetDbSystemShapesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getDbSystemShapes:getDbSystemShapes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbSystemShapesResult.fromMap);
}

/// Data source to retrieve available Grid Infrastructure versions of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_gi_versions_get_gi_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGiVersionsResult> getGiVersions(
  GetGiVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getGiVersions:getGiVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGiVersionsResult.fromMap(result);
}

pulumi.Output<GetGiVersionsResult> getGiVersionsOutput(
  GetGiVersionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getGiVersions:getGiVersions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGiVersionsResult.fromMap);
}

/// Provides details about an AWS Oracle Database@AWS Associate Disassociate IAM Role.
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
/// const example = aws.odb.getIamRoleAssociation({
///     iamRoleArn: "arn:aws:iam::123456789012:role/odb-iam-role-example",
///     resourceArn: "arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_iam_role_association(iam_role_arn="arn:aws:iam::123456789012:role/odb-iam-role-example",
///     resource_arn="arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetIamRoleAssociation.Invoke(new()
///     {
///         IamRoleArn = "arn:aws:iam::123456789012:role/odb-iam-role-example",
///         ResourceArn = "arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.LookupIamRoleAssociation(ctx, &odb.LookupIamRoleAssociationArgs{
/// 			IamRoleArn:  "arn:aws:iam::123456789012:role/odb-iam-role-example",
/// 			ResourceArn: "arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id",
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
/// data "aws_odb_getiamroleassociation" "example" {
///   iam_role_arn = "arn:aws:iam::123456789012:role/odb-iam-role-example"
///   resource_arn = "arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetIamRoleAssociationArgs;
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
///         final var example = OdbFunctions.getIamRoleAssociation(GetIamRoleAssociationArgs.builder()
///             .iamRoleArn("arn:aws:iam::123456789012:role/odb-iam-role-example")
///             .resourceArn("arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getIamRoleAssociation
///       arguments:
///         iamRoleArn: arn:aws:iam::123456789012:role/odb-iam-role-example
///         resourceArn: arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_iam_role_association_get_iam_role_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamRoleAssociationResult> getIamRoleAssociation(
  GetIamRoleAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getIamRoleAssociation:getIamRoleAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamRoleAssociationResult.fromMap(result);
}

pulumi.Output<GetIamRoleAssociationResult> getIamRoleAssociationOutput(
  GetIamRoleAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getIamRoleAssociation:getIamRoleAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamRoleAssociationResult.fromMap);
}

/// Data source for to retrieve network resource in AWS for Oracle Database@AWS.
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
/// const example = aws.odb.getNetwork({
///     id: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_network(id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetNetwork.Invoke(new()
///     {
///         Id = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.LookupNetwork(ctx, &odb.LookupNetworkArgs{
/// 			Id: "example",
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
/// data "aws_odb_getnetwork" "example" {
///   id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetNetworkArgs;
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
///         final var example = OdbFunctions.getNetwork(GetNetworkArgs.builder()
///             .id("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getNetwork
///       arguments:
///         id: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_network_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetwork:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

pulumi.Output<GetNetworkResult> getNetworkOutput(
  GetNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getNetwork:getNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkResult.fromMap);
}

/// Data source for managing oracle database network peering resource in AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getNetworkPeeringConnection({
///     id: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_network_peering_connection(id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetNetworkPeeringConnection.Invoke(new()
///     {
///         Id = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.LookupNetworkPeeringConnection(ctx, &odb.LookupNetworkPeeringConnectionArgs{
/// 			Id: "example",
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
/// data "aws_odb_getnetworkpeeringconnection" "example" {
///   id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetNetworkPeeringConnectionArgs;
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
///         final var example = OdbFunctions.getNetworkPeeringConnection(GetNetworkPeeringConnectionArgs.builder()
///             .id("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getNetworkPeeringConnection
///       arguments:
///         id: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_network_peering_connection_get_network_peering_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPeeringConnectionResult> getNetworkPeeringConnection(
  GetNetworkPeeringConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetworkPeeringConnection:getNetworkPeeringConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringConnectionResult.fromMap(result);
}

pulumi.Output<GetNetworkPeeringConnectionResult> getNetworkPeeringConnectionOutput(
  GetNetworkPeeringConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getNetworkPeeringConnection:getNetworkPeeringConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkPeeringConnectionResult.fromMap);
}

/// Data source for retrieving all oracle database network peering resource in Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getNetworkPeeringConnections({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_network_peering_connections()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetNetworkPeeringConnections.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetNetworkPeeringConnections(ctx, &odb.GetNetworkPeeringConnectionsArgs{}, nil)
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
/// data "aws_odb_getnetworkpeeringconnections" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetNetworkPeeringConnectionsArgs;
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
///         final var example = OdbFunctions.getNetworkPeeringConnections(GetNetworkPeeringConnectionsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getNetworkPeeringConnections
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_network_peering_connections_get_network_peering_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPeeringConnectionsResult> getNetworkPeeringConnections(
  GetNetworkPeeringConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetworkPeeringConnections:getNetworkPeeringConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringConnectionsResult.fromMap(result);
}

pulumi.Output<GetNetworkPeeringConnectionsResult> getNetworkPeeringConnectionsOutput(
  GetNetworkPeeringConnectionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getNetworkPeeringConnections:getNetworkPeeringConnections',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkPeeringConnectionsResult.fromMap);
}

/// Data source for to retrieve networks from AWS for Oracle Database@AWS.
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
/// const example = aws.odb.getNetworks({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_networks()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetNetworks.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.GetNetworks(ctx, &odb.GetNetworksArgs{}, nil)
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
/// data "aws_odb_getnetworks" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetNetworksArgs;
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
///         final var example = OdbFunctions.getNetworks(GetNetworksArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getNetworks
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_odb_get_networks_get_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetworks:getNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}

pulumi.Output<GetNetworksResult> getNetworksOutput(
  GetNetworksArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:odb/getNetworks:getNetworks',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworksResult.fromMap);
}
