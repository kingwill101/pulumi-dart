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
///     name: "kinesis-firehose-example-stream",
///     destination: "redshift",
///     redshiftConfiguration: {
///         roleArn: firehoseRole.arn,
///         clusterJdbcurl: Promise.all([example, example]).then(([example, example1]) => `jdbc:redshift://${example.endpoint}/${example1.databaseName}`),
///         username: "exampleuser",
///         password: "Exampl3Pass",
///         dataTableName: "example-table",
///         copyOptions: "delimiter '|'",
///         dataTableColumns: "example-col",
///         s3Configuration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///             bufferSize: 10,
///             bufferInterval: 400,
///             compressionFormat: "GZIP",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_cluster(cluster_identifier="example-cluster")
/// example_stream = aws.kinesis.FirehoseDeliveryStream("example_stream",
///     name="kinesis-firehose-example-stream",
///     destination="redshift",
///     redshift_configuration={
///         "role_arn": firehose_role["arn"],
///         "cluster_jdbcurl": f"jdbc:redshift://{example.endpoint}/{example.database_name}",
///         "username": "exampleuser",
///         "password": "Exampl3Pass",
///         "data_table_name": "example-table",
///         "copy_options": "delimiter '|'",
///         "data_table_columns": "example-col",
///         "s3_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffer_size": 10,
///             "buffer_interval": 400,
///             "compression_format": "GZIP",
///         },
///     })
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
///         Name = "kinesis-firehose-example-stream",
///         Destination = "redshift",
///         RedshiftConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs
///         {
///             RoleArn = firehoseRole.Arn,
///             ClusterJdbcurl = Output.Tuple(example, example).Apply(values =>
///             {
///                 var example = values.Item1;
///                 var example1 = values.Item2;
///                 return $"jdbc:redshift://{example.Apply(getClusterResult => getClusterResult.Endpoint)}/{example1.DatabaseName}";
///             }),
///             Username = "exampleuser",
///             Password = "Exampl3Pass",
///             DataTableName = "example-table",
///             CopyOptions = "delimiter '|'",
///             DataTableColumns = "example-col",
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferSize = 10,
///                 BufferInterval = 400,
///                 CompressionFormat = "GZIP",
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
/// 			Name:        pulumi.String("kinesis-firehose-example-stream"),
/// 			Destination: pulumi.String("redshift"),
/// 			RedshiftConfiguration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationArgs{
/// 				RoleArn:          pulumi.Any(firehoseRole.Arn),
/// 				ClusterJdbcurl:   pulumi.Sprintf("jdbc:redshift://%v/%v", example.Endpoint, example.DatabaseName),
/// 				Username:         pulumi.String("exampleuser"),
/// 				Password:         pulumi.String("Exampl3Pass"),
/// 				DataTableName:    pulumi.String("example-table"),
/// 				CopyOptions:      pulumi.String("delimiter '|'"),
/// 				DataTableColumns: pulumi.String("example-col"),
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferSize:        10,
/// 					BufferInterval:    400,
/// 					CompressionFormat: pulumi.String("GZIP"),
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
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetClusterArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs;
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
///         final var example = RedshiftFunctions.getCluster(GetClusterArgs.builder()
///             .clusterIdentifier("example-cluster")
///             .build());
///
///         var exampleStream = new FirehoseDeliveryStream("exampleStream", FirehoseDeliveryStreamArgs.builder()
///             .name("kinesis-firehose-example-stream")
///             .destination("redshift")
///             .redshiftConfiguration(FirehoseDeliveryStreamRedshiftConfigurationArgs.builder()
///                 .roleArn(firehoseRole.arn())
///                 .clusterJdbcurl(String.format("jdbc:redshift://%s/%s", example.endpoint(),example.databaseName()))
///                 .username("exampleuser")
///                 .password("Exampl3Pass")
///                 .dataTableName("example-table")
///                 .copyOptions("delimiter '|'")
///                 .dataTableColumns("example-col")
///                 .s3Configuration(FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferSize(10)
///                     .bufferInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .build())
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
///       name: kinesis-firehose-example-stream
///       destination: redshift
///       redshiftConfiguration:
///         roleArn: ${firehoseRole.arn}
///         clusterJdbcurl: jdbc:redshift://${example.endpoint}/${example.databaseName}
///         username: exampleuser
///         password: Exampl3Pass
///         dataTableName: example-table
///         copyOptions: delimiter '|'
///         dataTableColumns: example-col
///         s3Configuration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///           bufferSize: 10
///           bufferInterval: 400
///           compressionFormat: GZIP
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetClusterCredentialsArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetDataSharesArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetOrderableClusterArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetProducerDataSharesArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetSubnetGroupArgs;
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
