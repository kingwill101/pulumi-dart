import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_policy_args.dart';
import 'table_bucket_policy_state.dart';

/// Resource for managing an Amazon S3 Tables Table Bucket Policy.
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
/// const example = aws.iam.getPolicyDocument({
///     statements: [{}],
/// });
/// const exampleTableBucket = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// const exampleTableBucketPolicy = new aws.s3tables.TableBucketPolicy("example", {
///     resourcePolicy: example.then(example => example.json),
///     tableBucketArn: exampleTableBucket.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{}])
/// example_table_bucket = aws.s3tables.TableBucket("example", name="example-bucket")
/// example_table_bucket_policy = aws.s3tables.TableBucketPolicy("example",
///     resource_policy=example.json,
///     table_bucket_arn=example_table_bucket.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             null,
///         },
///     });
///
///     var exampleTableBucket = new Aws.S3Tables.TableBucket("example", new()
///     {
///         Name = "example-bucket",
///     });
///
///     var exampleTableBucketPolicy = new Aws.S3Tables.TableBucketPolicy("example", new()
///     {
///         ResourcePolicy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         TableBucketArn = exampleTableBucket.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTableBucket, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// 			Name: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3tables.NewTableBucketPolicy(ctx, "example", &s3tables.TableBucketPolicyArgs{
/// 			ResourcePolicy: pulumi.String(example.Json),
/// 			TableBucketArn: exampleTableBucket.Arn,
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
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///   }
/// }
///
/// resource "aws_s3tables_tablebucketpolicy" "example" {
///   resource_policy  = data.aws_iam_getpolicydocument.example.json
///   table_bucket_arn = aws_s3tables_tablebucket.example.arn
/// }
/// resource "aws_s3tables_tablebucket" "example" {
///   name = "example-bucket"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.s3tables.TableBucket;
/// import com.pulumi.aws.s3tables.TableBucketArgs;
/// import com.pulumi.aws.s3tables.TableBucketPolicy;
/// import com.pulumi.aws.s3tables.TableBucketPolicyArgs;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .build())
///             .build());
///
///         var exampleTableBucket = new TableBucket("exampleTableBucket", TableBucketArgs.builder()
///             .name("example-bucket")
///             .build());
///
///         var exampleTableBucketPolicy = new TableBucketPolicy("exampleTableBucketPolicy", TableBucketPolicyArgs.builder()
///             .resourcePolicy(example.json())
///             .tableBucketArn(exampleTableBucket.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTableBucketPolicy:
///     type: aws:s3tables:TableBucketPolicy
///     name: example
///     properties:
///       resourcePolicy: ${example.json}
///       tableBucketArn: ${exampleTableBucket.arn}
///   exampleTableBucket:
///     type: aws:s3tables:TableBucket
///     name: example
///     properties:
///       name: example-bucket
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - {}
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
/// Using `pulumi import`, import S3 Tables Table Bucket Policy using the `tableBucketArn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucketPolicy:TableBucketPolicy example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace'
/// ```
class TableBucketPolicy extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Web Services resource-based policy document in JSON format.
  late final pulumi.Output<String> resourcePolicy;
  /// ARN referencing the Table Bucket that owns this policy.
  late final pulumi.Output<String> tableBucketArn;

  /// Creates a new [TableBucketPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TableBucketPolicy]. {@macro pulumi_s3_tables_table_bucket_policy_table_bucket_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TableBucketPolicy(
    String name, {
    TableBucketPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucketPolicy:TableBucketPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    resourcePolicy = registerOutput<String>('resourcePolicy');
    tableBucketArn = registerOutput<String>('tableBucketArn');
  }

  /// Gets an existing [TableBucketPolicy] resource's state with the given [name] and [id].
  static TableBucketPolicy get(
    String name,
    pulumi.Input<String> id, {
    TableBucketPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TableBucketPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TableBucketPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucketPolicy:TableBucketPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    resourcePolicy = registerOutput<String>('resourcePolicy');
    tableBucketArn = registerOutput<String>('tableBucketArn');
  }

  /// Creates a typed reference to an existing [TableBucketPolicy] resource.
  TableBucketPolicy.reference(String urn)
    : super(
        'aws:s3tables/tableBucketPolicy:TableBucketPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    resourcePolicy = registerOutput<String>('resourcePolicy');
    tableBucketArn = registerOutput<String>('tableBucketArn');
  }
}
