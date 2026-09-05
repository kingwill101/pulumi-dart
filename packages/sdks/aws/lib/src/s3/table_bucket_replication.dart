import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_replication_args.dart';
import 'table_bucket_replication_rule.dart';
import 'table_bucket_replication_state.dart';

/// Manages Amazon S3 Tables Table Bucket Replication configuration.
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
/// const example = new aws.s3tables.TableBucketReplication("example", {
///     rule: {
///         destinations: [{
///             destinationTableBucketArn: target.arn,
///         }],
///     },
///     tableBucketArn: source.arn,
///     role: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3tables.TableBucketReplication("example",
///     rule={
///         "destinations": [{
///             "destination_table_bucket_arn": target["arn"],
///         }],
///     },
///     table_bucket_arn=source["arn"],
///     role=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Tables.TableBucketReplication("example", new()
///     {
///         Rule = new Aws.S3Tables.Inputs.TableBucketReplicationRuleArgs
///         {
///             Destinations = new[]
///             {
///                 new Aws.S3Tables.Inputs.TableBucketReplicationRuleDestinationArgs
///                 {
///                     DestinationTableBucketArn = target.Arn,
///                 },
///             },
///         },
///         TableBucketArn = source.Arn,
///         Role = exampleAwsIamRole.Arn,
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
/// 		_, err := s3tables.NewTableBucketReplication(ctx, "example", &s3tables.TableBucketReplicationArgs{
/// 			Rule: &s3tables.TableBucketReplicationRuleArgs{
/// 				Destinations: s3tables.TableBucketReplicationRuleDestinationArray{
/// 					&s3tables.TableBucketReplicationRuleDestinationArgs{
/// 						DestinationTableBucketArn: pulumi.Any(target.Arn),
/// 					},
/// 				},
/// 			},
/// 			TableBucketArn: pulumi.Any(source.Arn),
/// 			Role:           pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_s3tables_tablebucketreplication" "example" {
///   rule = {
///     destinations = [{
///       "destinationTableBucketArn" = target.arn
///     }]
///   }
///   table_bucket_arn = source.arn
///   role             = exampleAwsIamRole.arn
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
/// import com.pulumi.aws.s3tables.inputs.TableBucketReplicationRuleDestinationArgs;
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
///         var example = new TableBucketReplication("example", TableBucketReplicationArgs.builder()
///             .rule(TableBucketReplicationRuleArgs.builder()
///                 .destinations(TableBucketReplicationRuleDestinationArgs.builder()
///                     .destinationTableBucketArn(target.arn())
///                     .build())
///                 .build())
///             .tableBucketArn(source.arn())
///             .role(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3tables:TableBucketReplication
///     properties:
///       rule:
///         destinations:
///           - destinationTableBucketArn: ${target.arn}
///       tableBucketArn: ${source.arn}
///       role: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `tableBucketArn` (String) ARN of the S3 Tables Table Bucket.
///
///
/// Using `pulumi import`, import S3 Tables Table Bucket Replication using the `tableBucketArn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucketReplication:TableBucketReplication example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket'
/// ```
class TableBucketReplication extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  late final pulumi.Output<String> role;
  /// Replication rules. See Rule below for more details.
  late final pulumi.Output<TableBucketReplicationRule?> rule;
  /// ARN referencing the Table Bucket that owns this replication configuration.
  late final pulumi.Output<String> tableBucketArn;
  /// Version token of the replication configuration.
  late final pulumi.Output<String> versionToken;

  /// Creates a new [TableBucketReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TableBucketReplication]. {@macro pulumi_s3_tables_table_bucket_replication_table_bucket_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TableBucketReplication(
    String name, {
    TableBucketReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucketReplication:TableBucketReplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    rule = registerOutput<TableBucketReplicationRule?>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBucketReplicationRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableBucketArn = registerOutput<String>('tableBucketArn');
    versionToken = registerOutput<String>('versionToken');
  }

  /// Gets an existing [TableBucketReplication] resource's state with the given [name] and [id].
  static TableBucketReplication get(
    String name,
    pulumi.Input<String> id, {
    TableBucketReplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TableBucketReplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TableBucketReplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucketReplication:TableBucketReplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    rule = registerOutput<TableBucketReplicationRule?>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBucketReplicationRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableBucketArn = registerOutput<String>('tableBucketArn');
    versionToken = registerOutput<String>('versionToken');
  }

  /// Creates a typed reference to an existing [TableBucketReplication] resource.
  TableBucketReplication.reference(String urn)
    : super(
        'aws:s3tables/tableBucketReplication:TableBucketReplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    rule = registerOutput<TableBucketReplicationRule?>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBucketReplicationRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableBucketArn = registerOutput<String>('tableBucketArn');
    versionToken = registerOutput<String>('versionToken');
  }
}
