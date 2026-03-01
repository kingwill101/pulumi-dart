import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_replication_args.dart';
import 'table_replication_rule.dart';

/// Manages Amazon S3 Tables Table Replication configuration.
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
/// const example = new aws.s3tables.TableReplication("example", {
///     tableArn: exampleAwsS3tablesTable.arn,
///     role: exampleAwsIamRole.arn,
///     rule: {
///         destinations: [{
///             destinationTableBucketArn: target.arn,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3tables.TableReplication("example",
///     table_arn=example_aws_s3tables_table["arn"],
///     role=example_aws_iam_role["arn"],
///     rule={
///         "destinations": [{
///             "destination_table_bucket_arn": target["arn"],
///         }],
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
///     var example = new Aws.S3Tables.TableReplication("example", new()
///     {
///         TableArn = exampleAwsS3tablesTable.Arn,
///         Role = exampleAwsIamRole.Arn,
///         Rule = new Aws.S3Tables.Inputs.TableReplicationRuleArgs
///         {
///             Destinations = new[]
///             {
///                 new Aws.S3Tables.Inputs.TableReplicationRuleDestinationArgs
///                 {
///                     DestinationTableBucketArn = target.Arn,
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3tables.NewTableReplication(ctx, "example", &s3tables.TableReplicationArgs{
/// 			TableArn: pulumi.Any(exampleAwsS3tablesTable.Arn),
/// 			Role:     pulumi.Any(exampleAwsIamRole.Arn),
/// 			Rule: &s3tables.TableReplicationRuleArgs{
/// 				Destinations: s3tables.TableReplicationRuleDestinationArray{
/// 					&s3tables.TableReplicationRuleDestinationArgs{
/// 						DestinationTableBucketArn: pulumi.Any(target.Arn),
/// 					},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new TableReplication("example", TableReplicationArgs.builder()
///             .tableArn(exampleAwsS3tablesTable.arn())
///             .role(exampleAwsIamRole.arn())
///             .rule(TableReplicationRuleArgs.builder()
///                 .destinations(TableReplicationRuleDestinationArgs.builder()
///                     .destinationTableBucketArn(target.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3tables:TableReplication
///     properties:
///       tableArn: ${exampleAwsS3tablesTable.arn}
///       role: ${exampleAwsIamRole.arn}
///       rule:
///         destinations:
///           - destinationTableBucketArn: ${target.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Replication using the `table_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableReplication:TableReplication example 'arn:aws:s3tables:us-west-2:123456789012:table/example-table'
/// ```
class TableReplication extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN referencing the IAM role assumed by S3 when replicating tables.
  late final pulumi.Output<String> role;
  /// Replication rules. See Rule below for more details.
  late final pulumi.Output<TableReplicationRule?> rule;
  /// ARN referencing the Table that owns this replication configuration.
  late final pulumi.Output<String> tableArn;
  late final pulumi.Output<String> versionToken;

  /// Creates a new [TableReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TableReplication]. {@macro pulumi_s3_tables_table_replication_table_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TableReplication(
    String name, {
    TableReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableReplication:TableReplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.rule = registerOutput<TableReplicationRule?>('rule');
    this.tableArn = registerOutput<String>('tableArn');
    this.versionToken = registerOutput<String>('versionToken');
  }
}
