import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bootstrap_brokers_args.dart';
import 'get_bootstrap_brokers_result.dart';
import 'get_broker_nodes_args.dart';
import 'get_broker_nodes_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_configuration_args.dart';
import 'get_configuration_result.dart';
import 'get_kafka_version_args.dart';
import 'get_kafka_version_result.dart';
import 'get_topic_args.dart';
import 'get_topic_result.dart';
import 'get_vpc_connection_args.dart';
import 'get_vpc_connection_result.dart';

/// Get a list of brokers that a client application can use to bootstrap.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getBootstrapBrokers({
///     clusterArn: exampleAwsMskCluster.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_bootstrap_brokers(cluster_arn=example_aws_msk_cluster["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Msk.GetBootstrapBrokers.Invoke(new()
///     {
///         ClusterArn = exampleAwsMskCluster.Arn,
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.GetBootstrapBrokers(ctx, &msk.GetBootstrapBrokersArgs{
/// 			ClusterArn: exampleAwsMskCluster.Arn,
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
/// data "aws_msk_getbootstrapbrokers" "example" {
///   cluster_arn = exampleAwsMskCluster.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetBootstrapBrokersArgs;
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
///         final var example = MskFunctions.getBootstrapBrokers(GetBootstrapBrokersArgs.builder()
///             .clusterArn(exampleAwsMskCluster.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:msk:getBootstrapBrokers
///       arguments:
///         clusterArn: ${exampleAwsMskCluster.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_msk_get_bootstrap_brokers_get_bootstrap_brokers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBootstrapBrokersResult> getBootstrapBrokers(
  GetBootstrapBrokersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getBootstrapBrokers:getBootstrapBrokers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBootstrapBrokersResult.fromMap(result);
}

/// Get information on an Amazon MSK Broker Nodes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getBrokerNodes({
///     clusterArn: exampleAwsMskCluster.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_broker_nodes(cluster_arn=example_aws_msk_cluster["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Msk.GetBrokerNodes.Invoke(new()
///     {
///         ClusterArn = exampleAwsMskCluster.Arn,
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.GetBrokerNodes(ctx, &msk.GetBrokerNodesArgs{
/// 			ClusterArn: exampleAwsMskCluster.Arn,
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
/// data "aws_msk_getbrokernodes" "example" {
///   cluster_arn = exampleAwsMskCluster.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetBrokerNodesArgs;
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
///         final var example = MskFunctions.getBrokerNodes(GetBrokerNodesArgs.builder()
///             .clusterArn(exampleAwsMskCluster.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:msk:getBrokerNodes
///       arguments:
///         clusterArn: ${exampleAwsMskCluster.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_msk_get_broker_nodes_get_broker_nodes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerNodesResult> getBrokerNodes(
  GetBrokerNodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getBrokerNodes:getBrokerNodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerNodesResult.fromMap(result);
}

/// Get information on an Amazon MSK Cluster.
///
/// &gt; **Note:** This data sources returns information on _provisioned_ clusters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getCluster({
///     clusterName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_cluster(cluster_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Msk.GetCluster.Invoke(new()
///     {
///         ClusterName = "example",
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.LookupCluster(ctx, &msk.LookupClusterArgs{
/// 			ClusterName: "example",
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
/// data "aws_msk_getcluster" "example" {
///   cluster_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetClusterArgs;
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
///         final var example = MskFunctions.getCluster(GetClusterArgs.builder()
///             .clusterName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:msk:getCluster
///       arguments:
///         clusterName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_msk_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Get information on an Amazon MSK Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getConfiguration({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_configuration(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Msk.GetConfiguration.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.LookupConfiguration(ctx, &msk.LookupConfigurationArgs{
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
/// data "aws_msk_getconfiguration" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetConfigurationArgs;
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
///         final var example = MskFunctions.getConfiguration(GetConfigurationArgs.builder()
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
///       function: aws:msk:getConfiguration
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_msk_get_configuration_get_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationResult> getConfiguration(
  GetConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getConfiguration:getConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationResult.fromMap(result);
}

/// Get information on a Amazon MSK Kafka Version
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const preferred = aws.msk.getKafkaVersion({
///     preferredVersions: [
///         "2.4.1.1",
///         "2.4.1",
///         "2.2.1",
///     ],
/// });
/// const example = aws.msk.getKafkaVersion({
///     version: "2.8.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// preferred = aws.msk.get_kafka_version(preferred_versions=[
///     "2.4.1.1",
///     "2.4.1",
///     "2.2.1",
/// ])
/// example = aws.msk.get_kafka_version(version="2.8.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var preferred = Aws.Msk.GetKafkaVersion.Invoke(new()
///     {
///         PreferredVersions = new[]
///         {
///             "2.4.1.1",
///             "2.4.1",
///             "2.2.1",
///         },
///     });
///
///     var example = Aws.Msk.GetKafkaVersion.Invoke(new()
///     {
///         Version = "2.8.0",
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.GetKafkaVersion(ctx, &msk.GetKafkaVersionArgs{
/// 			PreferredVersions: []string{
/// 				"2.4.1.1",
/// 				"2.4.1",
/// 				"2.2.1",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = msk.GetKafkaVersion(ctx, &msk.GetKafkaVersionArgs{
/// 			Version: pulumi.StringRef("2.8.0"),
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
/// data "aws_msk_getkafkaversion" "preferred" {
///   preferred_versions = ["2.4.1.1", "2.4.1", "2.2.1"]
/// }
/// data "aws_msk_getkafkaversion" "example" {
///   version = "2.8.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetKafkaVersionArgs;
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
///         final var preferred = MskFunctions.getKafkaVersion(GetKafkaVersionArgs.builder()
///             .preferredVersions(
///                 "2.4.1.1",
///                 "2.4.1",
///                 "2.2.1")
///             .build());
///
///         final var example = MskFunctions.getKafkaVersion(GetKafkaVersionArgs.builder()
///             .version("2.8.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   preferred:
///     fn::invoke:
///       function: aws:msk:getKafkaVersion
///       arguments:
///         preferredVersions:
///           - 2.4.1.1
///           - 2.4.1
///           - 2.2.1
///   example:
///     fn::invoke:
///       function: aws:msk:getKafkaVersion
///       arguments:
///         version: 2.8.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_msk_get_kafka_version_get_kafka_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKafkaVersionResult> getKafkaVersion(
  GetKafkaVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getKafkaVersion:getKafkaVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKafkaVersionResult.fromMap(result);
}

/// Get information on an Amazon MSK Topic.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getTopic({
///     clusterArn: exampleAwsMskCluster.arn,
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_topic(cluster_arn=example_aws_msk_cluster["arn"],
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Msk.GetTopic.Invoke(new()
///     {
///         ClusterArn = exampleAwsMskCluster.Arn,
///         Name = "example",
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.LookupTopic(ctx, &msk.LookupTopicArgs{
/// 			ClusterArn: exampleAwsMskCluster.Arn,
/// 			Name:       "example",
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
/// data "aws_msk_gettopic" "example" {
///   cluster_arn = exampleAwsMskCluster.arn
///   name        = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetTopicArgs;
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
///         final var example = MskFunctions.getTopic(GetTopicArgs.builder()
///             .clusterArn(exampleAwsMskCluster.arn())
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
///       function: aws:msk:getTopic
///       arguments:
///         clusterArn: ${exampleAwsMskCluster.arn}
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_msk_get_topic_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getTopic:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}

/// Get information on an Amazon MSK VPC Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getVpcConnection({
///     arn: exampleAwsMskVpcConnection.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_vpc_connection(arn=example_aws_msk_vpc_connection["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Msk.GetVpcConnection.Invoke(new()
///     {
///         Arn = exampleAwsMskVpcConnection.Arn,
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.LookupVpcConnection(ctx, &msk.LookupVpcConnectionArgs{
/// 			Arn: exampleAwsMskVpcConnection.Arn,
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
/// data "aws_msk_getvpcconnection" "example" {
///   arn = exampleAwsMskVpcConnection.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetVpcConnectionArgs;
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
///         final var example = MskFunctions.getVpcConnection(GetVpcConnectionArgs.builder()
///             .arn(exampleAwsMskVpcConnection.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:msk:getVpcConnection
///       arguments:
///         arn: ${exampleAwsMskVpcConnection.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_msk_get_vpc_connection_get_vpc_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcConnectionResult> getVpcConnection(
  GetVpcConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getVpcConnection:getVpcConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcConnectionResult.fromMap(result);
}
