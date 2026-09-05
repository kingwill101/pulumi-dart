import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_credentials_args.dart';
import 'get_cluster_credentials_result.dart';
import 'get_cluster_result.dart';
import 'get_data_shares_args.dart';
import 'get_data_shares_result.dart';
import 'get_orderable_cluster_args.dart';
import 'get_orderable_cluster_result.dart';
import 'get_producer_data_shares_args.dart';
import 'get_producer_data_shares_result.dart';
import 'get_subnet_group_args.dart';
import 'get_subnet_group_result.dart';

/// Provides details about a specific redshift cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshift.getCluster({
///     clusterIdentifier: "example-cluster",
/// });
/// const exampleStream = new aws.kinesis.FirehoseDeliveryStream("example_stream", {
///     redshiftConfiguration: {
///         s3Configuration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///             bufferSize: 10,
///             bufferInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         roleArn: firehoseRole.arn,
///         clusterJdbcurl: example.then(example => `jdbc:redshift://${example.endpoint}/${example.databaseName}`),
///         username: "exampleuser",
///         password: "Exampl3Pass",
///         dataTableName: "example-table",
///         copyOptions: "delimiter '|'",
///         dataTableColumns: "example-col",
///     },
///     name: "kinesis-firehose-example-stream",
///     destination: "redshift",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_cluster(cluster_identifier="example-cluster")
/// example_stream = aws.kinesis.FirehoseDeliveryStream("example_stream",
///     redshift_configuration={
///         "s3_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffer_size": 10,
///             "buffer_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "role_arn": firehose_role["arn"],
///         "cluster_jdbcurl": f"jdbc:redshift://{example.endpoint}/{example.database_name}",
///         "username": "exampleuser",
///         "password": "Exampl3Pass",
///         "data_table_name": "example-table",
///         "copy_options": "delimiter '|'",
///         "data_table_columns": "example-col",
///     },
///     name="kinesis-firehose-example-stream",
///     destination="redshift")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedShift.GetCluster.Invoke(new()
///     {
///         ClusterIdentifier = "example-cluster",
///     });
///
///     var exampleStream = new Aws.Kinesis.FirehoseDeliveryStream("example_stream", new()
///     {
///         RedshiftConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferSize = 10,
///                 BufferInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             RoleArn = firehoseRole.Arn,
///             ClusterJdbcurl = $"jdbc:redshift://{example.Apply(getClusterResult => getClusterResult.Endpoint)}/{example.Apply(getClusterResult => getClusterResult.DatabaseName)}",
///             Username = "exampleuser",
///             Password = "Exampl3Pass",
///             DataTableName = "example-table",
///             CopyOptions = "delimiter '|'",
///             DataTableColumns = "example-col",
///         },
///         Name = "kinesis-firehose-example-stream",
///         Destination = "redshift",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := redshift.LookupCluster(ctx, &redshift.LookupClusterArgs{
/// 			ClusterIdentifier: "example-cluster",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "example_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			RedshiftConfiguration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferSize:        10,
/// 					BufferInterval:    400,
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				RoleArn:          pulumi.Any(firehoseRole.Arn),
/// 				ClusterJdbcurl:   pulumi.Sprintf("jdbc:redshift://%v/%v", example.Endpoint, example.DatabaseName),
/// 				Username:         pulumi.String("exampleuser"),
/// 				Password:         pulumi.String("Exampl3Pass"),
/// 				DataTableName:    pulumi.String("example-table"),
/// 				CopyOptions:      pulumi.String("delimiter '|'"),
/// 				DataTableColumns: pulumi.String("example-col"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-example-stream"),
/// 			Destination: pulumi.String("redshift"),
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
/// data "aws_redshift_getcluster" "example" {
///   cluster_identifier = "example-cluster"
/// }
///
/// resource "aws_kinesis_firehosedeliverystream" "example_stream" {
///   redshift_configuration = {
///     s3_configuration = {
///       role_arn           = firehoseRole.arn
///       bucket_arn         = bucket.arn
///       buffer_size        = 10
///       buffer_interval    = 400
///       compression_format = "GZIP"
///     }
///     role_arn           = firehoseRole.arn
///     cluster_jdbcurl    ="jdbc:redshift://${data.aws_redshift_getcluster.example.endpoint}/${data.aws_redshift_getcluster.example.database_name}"
///     username           = "exampleuser"
///     password           = "Exampl3Pass"
///     data_table_name    = "example-table"
///     copy_options       = "delimiter '|'"
///     data_table_columns = "example-col"
///   }
///   # the default delimiter
///   name        = "kinesis-firehose-example-stream"
///   destination = "redshift"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetClusterArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs;
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
///         final var example = RedshiftFunctions.getCluster(GetClusterArgs.builder()
///             .clusterIdentifier("example-cluster")
///             .build());
///
///         var exampleStream = new FirehoseDeliveryStream("exampleStream", FirehoseDeliveryStreamArgs.builder()
///             .redshiftConfiguration(FirehoseDeliveryStreamRedshiftConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferSize(10)
///                     .bufferInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .roleArn(firehoseRole.arn())
///                 .clusterJdbcurl(String.format("jdbc:redshift://%s/%s", example.endpoint(),example.databaseName()))
///                 .username("exampleuser")
///                 .password("Exampl3Pass")
///                 .dataTableName("example-table")
///                 .copyOptions("delimiter '|'")
///                 .dataTableColumns("example-col")
///                 .build())
///             .name("kinesis-firehose-example-stream")
///             .destination("redshift")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: example_stream
///     properties:
///       redshiftConfiguration:
///         s3Configuration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///           bufferSize: 10
///           bufferInterval: 400
///           compressionFormat: GZIP
///         roleArn: ${firehoseRole.arn}
///         clusterJdbcurl: jdbc:redshift://${example.endpoint}/${example.databaseName}
///         username: exampleuser
///         password: Exampl3Pass
///         dataTableName: example-table
///         copyOptions: delimiter '|'
///         dataTableColumns: example-col
///       name: kinesis-firehose-example-stream
///       destination: redshift
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshift:getCluster
///       arguments:
///         clusterIdentifier: example-cluster
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshift_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getCluster:getCluster',
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
    'aws:redshift/getCluster:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Provides redshift cluster temporary credentials.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshift.getClusterCredentials({
///     clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
///     dbUser: exampleAwsRedshiftCluster.masterUsername,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_cluster_credentials(cluster_identifier=example_aws_redshift_cluster["clusterIdentifier"],
///     db_user=example_aws_redshift_cluster["masterUsername"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedShift.GetClusterCredentials.Invoke(new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
///         DbUser = exampleAwsRedshiftCluster.MasterUsername,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.GetClusterCredentials(ctx, &redshift.GetClusterCredentialsArgs{
/// 			ClusterIdentifier: exampleAwsRedshiftCluster.ClusterIdentifier,
/// 			DbUser:            exampleAwsRedshiftCluster.MasterUsername,
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
/// data "aws_redshift_getclustercredentials" "example" {
///   cluster_identifier = exampleAwsRedshiftCluster.clusterIdentifier
///   db_user            = exampleAwsRedshiftCluster.masterUsername
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetClusterCredentialsArgs;
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
///         final var example = RedshiftFunctions.getClusterCredentials(GetClusterCredentialsArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
///             .dbUser(exampleAwsRedshiftCluster.masterUsername())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshift:getClusterCredentials
///       arguments:
///         clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
///         dbUser: ${exampleAwsRedshiftCluster.masterUsername}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshift_get_cluster_credentials_get_cluster_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterCredentialsResult> getClusterCredentials(
  GetClusterCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getClusterCredentials:getClusterCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterCredentialsResult.fromMap(result);
}

pulumi.Output<GetClusterCredentialsResult> getClusterCredentialsOutput(
  GetClusterCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:redshift/getClusterCredentials:getClusterCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterCredentialsResult.fromMap);
}

/// Data source for managing AWS Redshift Data Shares.
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
/// const example = aws.redshift.getDataShares({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_data_shares()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedShift.GetDataShares.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.GetDataShares(ctx, &redshift.GetDataSharesArgs{}, nil)
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
/// data "aws_redshift_getdatashares" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetDataSharesArgs;
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
///         final var example = RedshiftFunctions.getDataShares(GetDataSharesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshift:getDataShares
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshift_get_data_shares_get_data_shares_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSharesResult> getDataShares(
  GetDataSharesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getDataShares:getDataShares',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSharesResult.fromMap(result);
}

pulumi.Output<GetDataSharesResult> getDataSharesOutput(
  GetDataSharesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:redshift/getDataShares:getDataShares',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataSharesResult.fromMap);
}

/// Information about Redshift Orderable Clusters and valid parameter combinations.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.redshift.getOrderableCluster({
///     clusterType: "multi-node",
///     preferredNodeTypes: [
///         "dc2.large",
///         "ds2.xlarge",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.redshift.get_orderable_cluster(cluster_type="multi-node",
///     preferred_node_types=[
///         "dc2.large",
///         "ds2.xlarge",
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
///     var test = Aws.RedShift.GetOrderableCluster.Invoke(new()
///     {
///         ClusterType = "multi-node",
///         PreferredNodeTypes = new[]
///         {
///             "dc2.large",
///             "ds2.xlarge",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.GetOrderableCluster(ctx, &redshift.GetOrderableClusterArgs{
/// 			ClusterType: pulumi.StringRef("multi-node"),
/// 			PreferredNodeTypes: []string{
/// 				"dc2.large",
/// 				"ds2.xlarge",
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
/// data "aws_redshift_getorderablecluster" "test" {
///   cluster_type         = "multi-node"
///   preferred_node_types = ["dc2.large", "ds2.xlarge"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetOrderableClusterArgs;
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
///         final var test = RedshiftFunctions.getOrderableCluster(GetOrderableClusterArgs.builder()
///             .clusterType("multi-node")
///             .preferredNodeTypes(
///                 "dc2.large",
///                 "ds2.xlarge")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:redshift:getOrderableCluster
///       arguments:
///         clusterType: multi-node
///         preferredNodeTypes:
///           - dc2.large
///           - ds2.xlarge
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshift_get_orderable_cluster_get_orderable_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrderableClusterResult> getOrderableCluster(
  GetOrderableClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getOrderableCluster:getOrderableCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableClusterResult.fromMap(result);
}

pulumi.Output<GetOrderableClusterResult> getOrderableClusterOutput(
  GetOrderableClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:redshift/getOrderableCluster:getOrderableCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrderableClusterResult.fromMap);
}

/// Data source for managing AWS Redshift Producer Data Shares.
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
/// const example = aws.redshift.getProducerDataShares({
///     producerArn: "",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_producer_data_shares(producer_arn="")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedShift.GetProducerDataShares.Invoke(new()
///     {
///         ProducerArn = "",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.GetProducerDataShares(ctx, &redshift.GetProducerDataSharesArgs{
/// 			ProducerArn: "",
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
/// data "aws_redshift_getproducerdatashares" "example" {
///   producer_arn = ""
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetProducerDataSharesArgs;
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
///         final var example = RedshiftFunctions.getProducerDataShares(GetProducerDataSharesArgs.builder()
///             .producerArn("")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshift:getProducerDataShares
///       arguments:
///         producerArn: ""
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshift_get_producer_data_shares_get_producer_data_shares_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProducerDataSharesResult> getProducerDataShares(
  GetProducerDataSharesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getProducerDataShares:getProducerDataShares',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProducerDataSharesResult.fromMap(result);
}

pulumi.Output<GetProducerDataSharesResult> getProducerDataSharesOutput(
  GetProducerDataSharesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:redshift/getProducerDataShares:getProducerDataShares',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProducerDataSharesResult.fromMap);
}

/// Provides details about a specific redshift subnet group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshift.getSubnetGroup({
///     name: exampleAwsRedshiftSubnetGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_subnet_group(name=example_aws_redshift_subnet_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedShift.GetSubnetGroup.Invoke(new()
///     {
///         Name = exampleAwsRedshiftSubnetGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.LookupSubnetGroup(ctx, &redshift.LookupSubnetGroupArgs{
/// 			Name: exampleAwsRedshiftSubnetGroup.Name,
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
/// data "aws_redshift_getsubnetgroup" "example" {
///   name = exampleAwsRedshiftSubnetGroup.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetSubnetGroupArgs;
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
///         final var example = RedshiftFunctions.getSubnetGroup(GetSubnetGroupArgs.builder()
///             .name(exampleAwsRedshiftSubnetGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshift:getSubnetGroup
///       arguments:
///         name: ${exampleAwsRedshiftSubnetGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshift_get_subnet_group_get_subnet_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetGroupResult> getSubnetGroup(
  GetSubnetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult.fromMap(result);
}

pulumi.Output<GetSubnetGroupResult> getSubnetGroupOutput(
  GetSubnetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:redshift/getSubnetGroup:getSubnetGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubnetGroupResult.fromMap);
}
