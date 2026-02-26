import 'package:pulumi/pulumi.dart';
import '../table_replication_rule/table_replication_rule.dart';
import 'table_replication_args.dart';

/// Manages Amazon S3 Tables Table Replication configuration.
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
/// const example = new aws.s3tables.TableReplication("example", {
/// tableArn: exampleAwsS3tablesTable.arn,
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
/// example = aws.s3tables.TableReplication("example",
/// table_arn=example_aws_s3tables_table["arn"],
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
/// var example = new Aws.S3Tables.TableReplication("example", new()
/// {
/// TableArn = exampleAwsS3tablesTable.Arn,
/// Role = exampleAwsIamRole.Arn,
/// Rule = new Aws.S3Tables.Inputs.TableReplicationRuleArgs
/// {
/// Destinations = new[]
/// {
/// new Aws.S3Tables.Inputs.TableReplicationRuleDestinationArgs
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
/// _, err := s3tables.NewTableReplication(ctx, "example", &s3tables.TableReplicationArgs{
/// TableArn: pulumi.Any(exampleAwsS3tablesTable.Arn),
/// Role:     pulumi.Any(exampleAwsIamRole.Arn),
/// Rule: &s3tables.TableReplicationRuleArgs{
/// Destinations: s3tables.TableReplicationRuleDestinationArray{
/// &s3tables.TableReplicationRuleDestinationArgs{
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
/// import com.pulumi.aws.s3tables.TableReplication;
/// import com.pulumi.aws.s3tables.TableReplicationArgs;
/// import com.pulumi.aws.s3tables.inputs.TableReplicationRuleArgs;
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
/// var example = new TableReplication("example", TableReplicationArgs.builder()
/// .tableArn(exampleAwsS3tablesTable.arn())
/// .role(exampleAwsIamRole.arn())
/// .rule(TableReplicationRuleArgs.builder()
/// .destinations(TableReplicationRuleDestinationArgs.builder()
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
/// type: aws:s3tables:TableReplication
/// properties:
/// tableArn: ${exampleAwsS3tablesTable.arn}
/// role: ${exampleAwsIamRole.arn}
/// rule:
/// destinations:
/// - destinationTableBucketArn: ${target.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Replication using the <span pulumi-lang-nodejs="`tableArn`" pulumi-lang-dotnet="`TableArn`" pulumi-lang-go="`tableArn`" pulumi-lang-python="`table_arn`" pulumi-lang-yaml="`tableArn`" pulumi-lang-java="`tableArn`">`table_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableReplication:TableReplication example 'arn:aws:s3tables:us-west-2:123456789012:table/example-table'
/// ```
class TableReplication extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN referencing the IAM role assumed by S3 when replicating tables.
  late final Output<String> role;

  /// Replication rules. See Rule below for more details.
  late final Output<TableReplicationRule?> rule;

  /// ARN referencing the Table that owns this replication configuration.
  late final Output<String> tableArn;
  late final Output<String> versionToken;

  TableReplication(
    String name, {
    TableReplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableReplication:TableReplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.rule = registerOutput<TableReplicationRule?>('rule');
    this.tableArn = registerOutput<String>('tableArn');
    this.versionToken = registerOutput<String>('versionToken');
  }
}
