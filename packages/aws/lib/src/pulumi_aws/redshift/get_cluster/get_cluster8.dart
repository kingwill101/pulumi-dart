import 'package:pulumi/pulumi.dart';
import 'get_cluster_args8.dart';
import 'get_cluster_result8.dart';

/// Provides details about a specific redshift cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshift.getCluster({
/// clusterIdentifier: "example-cluster",
/// });
/// const exampleStream = new aws.kinesis.FirehoseDeliveryStream("example_stream", {
/// name: "kinesis-firehose-example-stream",
/// destination: "redshift",
/// redshiftConfiguration: {
/// roleArn: firehoseRole.arn,
/// clusterJdbcurl: Promise.all([example, example]).then(([example, example1]) => `jdbc:redshift://${example.endpoint}/${example1.databaseName}`),
/// username: "exampleuser",
/// password: "Exampl3Pass",
/// dataTableName: "example-table",
/// copyOptions: "delimiter '|'",
/// dataTableColumns: "example-col",
/// s3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferSize: 10,
/// bufferInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_cluster(cluster_identifier="example-cluster")
/// example_stream = aws.kinesis.FirehoseDeliveryStream("example_stream",
/// name="kinesis-firehose-example-stream",
/// destination="redshift",
/// redshift_configuration={
/// "role_arn": firehose_role["arn"],
/// "cluster_jdbcurl": f"jdbc:redshift://{example.endpoint}/{example.database_name}",
/// "username": "exampleuser",
/// "password": "Exampl3Pass",
/// "data_table_name": "example-table",
/// "copy_options": "delimiter '|'",
/// "data_table_columns": "example-col",
/// "s3_configuration": {
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffer_size": 10,
/// "buffer_interval": 400,
/// "compression_format": "GZIP",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.RedShift.GetCluster.Invoke(new()
/// {
/// ClusterIdentifier = "example-cluster",
/// });
///
/// var exampleStream = new Aws.Kinesis.FirehoseDeliveryStream("example_stream", new()
/// {
/// Name = "kinesis-firehose-example-stream",
/// Destination = "redshift",
/// RedshiftConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// ClusterJdbcurl = Output.Tuple(example, example).Apply(values =>
/// {
/// var example = values.Item1;
/// var example1 = values.Item2;
/// return $"jdbc:redshift://{example.Apply(getClusterResult => getClusterResult.Endpoint)}/{example1.DatabaseName}";
/// }),
/// Username = "exampleuser",
/// Password = "Exampl3Pass",
/// DataTableName = "example-table",
/// CopyOptions = "delimiter '|'",
/// DataTableColumns = "example-col",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferSize = 10,
/// BufferInterval = 400,
/// CompressionFormat = "GZIP",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := redshift.LookupCluster(ctx, &redshift.LookupClusterArgs{
/// ClusterIdentifier: "example-cluster",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "example_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-example-stream"),
/// Destination: pulumi.String("redshift"),
/// RedshiftConfiguration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationArgs{
/// RoleArn:          pulumi.Any(firehoseRole.Arn),
/// ClusterJdbcurl:   pulumi.Sprintf("jdbc:redshift://%v/%v", example.Endpoint, example.DatabaseName),
/// Username:         pulumi.String("exampleuser"),
/// Password:         pulumi.String("Exampl3Pass"),
/// DataTableName:    pulumi.String("example-table"),
/// CopyOptions:      pulumi.String("delimiter '|'"),
/// DataTableColumns: pulumi.String("example-col"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehoseRole.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferSize:        10,
/// BufferInterval:    400,
/// CompressionFormat: pulumi.String("GZIP"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = RedshiftFunctions.getCluster(GetClusterArgs.builder()
/// .clusterIdentifier("example-cluster")
/// .build());
///
/// var exampleStream = new FirehoseDeliveryStream("exampleStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-example-stream")
/// .destination("redshift")
/// .redshiftConfiguration(FirehoseDeliveryStreamRedshiftConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .clusterJdbcurl(String.format("jdbc:redshift://%s/%s", example.endpoint(),example.databaseName()))
/// .username("exampleuser")
/// .password("Exampl3Pass")
/// .dataTableName("example-table")
/// .copyOptions("delimiter '|'")
/// .dataTableColumns("example-col")
/// .s3Configuration(FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferSize(10)
/// .bufferInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: example_stream
/// properties:
/// name: kinesis-firehose-example-stream
/// destination: redshift
/// redshiftConfiguration:
/// roleArn: ${firehoseRole.arn}
/// clusterJdbcurl: jdbc:redshift://${example.endpoint}/${example.databaseName}
/// username: exampleuser
/// password: Exampl3Pass
/// dataTableName: example-table
/// copyOptions: delimiter '|'
/// dataTableColumns: example-col
/// s3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferSize: 10
/// bufferInterval: 400
/// compressionFormat: GZIP
/// variables:
/// example:
/// fn::invoke:
/// function: aws:redshift:getCluster
/// arguments:
/// clusterIdentifier: example-cluster
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult8> getCluster8(
  GetClusterArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult8.fromMap(result);
}
