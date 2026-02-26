import 'package:pulumi/pulumi.dart';
import '../table_bucket_replication_rule/table_bucket_replication_rule.dart';
import 'table_bucket_replication_args.dart';

/// Manages Amazon S3 Tables Table Bucket Replication configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3tables.TableBucketReplication("example", {
/// tableBucketArn: source.arn,
/// role: exampleAwsIamRole.arn,
/// rule: {
/// destinations: [{
/// destinationTableBucketArn: target.arn,
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3tables.TableBucketReplication("example",
/// table_bucket_arn=source["arn"],
/// role=example_aws_iam_role["arn"],
/// rule={
/// "destinations": [{
/// "destination_table_bucket_arn": target["arn"],
/// }],
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
/// var example = new Aws.S3Tables.TableBucketReplication("example", new()
/// {
/// TableBucketArn = source.Arn,
/// Role = exampleAwsIamRole.Arn,
/// Rule = new Aws.S3Tables.Inputs.TableBucketReplicationRuleArgs
/// {
/// Destinations = new[]
/// {
/// new Aws.S3Tables.Inputs.TableBucketReplicationRuleDestinationArgs
/// {
/// DestinationTableBucketArn = target.Arn,
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3tables.NewTableBucketReplication(ctx, "example", &s3tables.TableBucketReplicationArgs{
/// TableBucketArn: pulumi.Any(source.Arn),
/// Role:           pulumi.Any(exampleAwsIamRole.Arn),
/// Rule: &s3tables.TableBucketReplicationRuleArgs{
/// Destinations: s3tables.TableBucketReplicationRuleDestinationArray{
/// &s3tables.TableBucketReplicationRuleDestinationArgs{
/// DestinationTableBucketArn: pulumi.Any(target.Arn),
/// },
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
/// import com.pulumi.aws.s3tables.TableBucketReplication;
/// import com.pulumi.aws.s3tables.TableBucketReplicationArgs;
/// import com.pulumi.aws.s3tables.inputs.TableBucketReplicationRuleArgs;
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
/// var example = new TableBucketReplication("example", TableBucketReplicationArgs.builder()
/// .tableBucketArn(source.arn())
/// .role(exampleAwsIamRole.arn())
/// .rule(TableBucketReplicationRuleArgs.builder()
/// .destinations(TableBucketReplicationRuleDestinationArgs.builder()
/// .destinationTableBucketArn(target.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3tables:TableBucketReplication
/// properties:
/// tableBucketArn: ${source.arn}
/// role: ${exampleAwsIamRole.arn}
/// rule:
/// destinations:
/// - destinationTableBucketArn: ${target.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Bucket Replication using the <span pulumi-lang-nodejs="`tableBucketArn`" pulumi-lang-dotnet="`TableBucketArn`" pulumi-lang-go="`tableBucketArn`" pulumi-lang-python="`table_bucket_arn`" pulumi-lang-yaml="`tableBucketArn`" pulumi-lang-java="`tableBucketArn`">`table_bucket_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucketReplication:TableBucketReplication example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket'
/// ```
class TableBucketReplication extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  late final Output<String> role;

  /// Replication rules. See Rule below for more details.
  late final Output<TableBucketReplicationRule?> rule;

  /// ARN referencing the Table Bucket that owns this replication configuration.
  late final Output<String> tableBucketArn;
  late final Output<String> versionToken;

  TableBucketReplication(
    String name, {
    TableBucketReplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucketReplication:TableBucketReplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
    this.rule = Output.createUnknown<TableBucketReplicationRule?>();
    this.tableBucketArn = Output.createUnknown<String>();
    this.versionToken = Output.createUnknown<String>();
  }
}
