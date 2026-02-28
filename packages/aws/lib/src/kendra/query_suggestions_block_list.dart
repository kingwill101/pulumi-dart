import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_suggestions_block_list_args.dart';
import 'query_suggestions_block_list_source_s3_path.dart';

/// Use the `aws_kendra_index_block_list` resource to manage an AWS Kendra block list used for query suggestions for an index.
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
/// const example = new aws.kendra.QuerySuggestionsBlockList("example", {
///     indexId: exampleAwsKendraIndex.id,
///     name: "Example",
///     roleArn: exampleAwsIamRole.arn,
///     sourceS3Path: {
///         bucket: exampleAwsS3Bucket.id,
///         key: "example/suggestions.txt",
///     },
///     tags: {
///         Name: "Example Kendra Index",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.QuerySuggestionsBlockList("example",
///     index_id=example_aws_kendra_index["id"],
///     name="Example",
///     role_arn=example_aws_iam_role["arn"],
///     source_s3_path={
///         "bucket": example_aws_s3_bucket["id"],
///         "key": "example/suggestions.txt",
///     },
///     tags={
///         "Name": "Example Kendra Index",
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
///     var example = new Aws.Kendra.QuerySuggestionsBlockList("example", new()
///     {
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "Example",
///         RoleArn = exampleAwsIamRole.Arn,
///         SourceS3Path = new Aws.Kendra.Inputs.QuerySuggestionsBlockListSourceS3PathArgs
///         {
///             Bucket = exampleAwsS3Bucket.Id,
///             Key = "example/suggestions.txt",
///         },
///         Tags =
///         {
///             { "Name", "Example Kendra Index" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewQuerySuggestionsBlockList(ctx, "example", &kendra.QuerySuggestionsBlockListArgs{
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("Example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			SourceS3Path: &kendra.QuerySuggestionsBlockListSourceS3PathArgs{
/// 				Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 				Key:    pulumi.String("example/suggestions.txt"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Kendra Index"),
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
/// import com.pulumi.aws.kendra.QuerySuggestionsBlockList;
/// import com.pulumi.aws.kendra.QuerySuggestionsBlockListArgs;
/// import com.pulumi.aws.kendra.inputs.QuerySuggestionsBlockListSourceS3PathArgs;
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
///         var example = new QuerySuggestionsBlockList("example", QuerySuggestionsBlockListArgs.builder()
///             .indexId(exampleAwsKendraIndex.id())
///             .name("Example")
///             .roleArn(exampleAwsIamRole.arn())
///             .sourceS3Path(QuerySuggestionsBlockListSourceS3PathArgs.builder()
///                 .bucket(exampleAwsS3Bucket.id())
///                 .key("example/suggestions.txt")
///                 .build())
///             .tags(Map.of("Name", "Example Kendra Index"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:QuerySuggestionsBlockList
///     properties:
///       indexId: ${exampleAwsKendraIndex.id}
///       name: Example
///       roleArn: ${exampleAwsIamRole.arn}
///       sourceS3Path:
///         bucket: ${exampleAwsS3Bucket.id}
///         key: example/suggestions.txt
///       tags:
///         Name: Example Kendra Index
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the `aws.kendra.QuerySuggestionsBlockList` resource using the unique identifiers of the block list and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/querySuggestionsBlockList:QuerySuggestionsBlockList example blocklist-123456780/idx-8012925589
/// ```
class QuerySuggestionsBlockList extends pulumi.CustomResource {
  /// ARN of the block list.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String?> description;

  /// Identifier of the index for a block list.
  late final pulumi.Output<String> indexId;

  /// Name for the block list.
  late final pulumi.Output<String> name;

  /// Unique identifier of the block list.
  late final pulumi.Output<String> querySuggestionsBlockListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final pulumi.Output<String> region;

  /// IAM (Identity and Access Management) role used to access the block list text file in S3.
  late final pulumi.Output<String> roleArn;

  /// S3 path where your block list text file is located. See details below.
  late final pulumi.Output<QuerySuggestionsBlockListSourceS3Path> sourceS3Path;
  late final pulumi.Output<String> status;
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider's default_tags configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [QuerySuggestionsBlockList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuerySuggestionsBlockList]. {@macro pulumi_kendra_query_suggestions_block_list_query_suggestions_block_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuerySuggestionsBlockList(
    String name, {
    QuerySuggestionsBlockListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/querySuggestionsBlockList:QuerySuggestionsBlockList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.indexId = registerOutput<String>('indexId');
    this.name = registerOutput<String>('name');
    this.querySuggestionsBlockListId =
        registerOutput<String>('querySuggestionsBlockListId');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.sourceS3Path =
        registerOutput<QuerySuggestionsBlockListSourceS3Path>('sourceS3Path');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
