import 'package:pulumi/pulumi.dart' as pulumi;
import 'thesaurus_args.dart';
import 'thesaurus_source_s3_path.dart';
import 'thesaurus_state.dart';

/// Resource for managing an AWS Kendra Thesaurus.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Thesaurus("example", {
///     indexId: exampleAwsKendraIndex.id,
///     name: "Example",
///     roleArn: exampleAwsIamRole.arn,
///     sourceS3Path: {
///         bucket: exampleAwsS3Bucket.id,
///         key: exampleAwsS3Object.key,
///     },
///     tags: {
///         Name: "Example Kendra Thesaurus",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Thesaurus("example",
///     index_id=example_aws_kendra_index["id"],
///     name="Example",
///     role_arn=example_aws_iam_role["arn"],
///     source_s3_path={
///         "bucket": example_aws_s3_bucket["id"],
///         "key": example_aws_s3_object["key"],
///     },
///     tags={
///         "Name": "Example Kendra Thesaurus",
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
///     var example = new Aws.Kendra.Thesaurus("example", new()
///     {
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "Example",
///         RoleArn = exampleAwsIamRole.Arn,
///         SourceS3Path = new Aws.Kendra.Inputs.ThesaurusSourceS3PathArgs
///         {
///             Bucket = exampleAwsS3Bucket.Id,
///             Key = exampleAwsS3Object.Key,
///         },
///         Tags =
///         {
///             { "Name", "Example Kendra Thesaurus" },
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
/// 		_, err := kendra.NewThesaurus(ctx, "example", &kendra.ThesaurusArgs{
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("Example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			SourceS3Path: &kendra.ThesaurusSourceS3PathArgs{
/// 				Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 				Key:    pulumi.Any(exampleAwsS3Object.Key),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Kendra Thesaurus"),
/// 			},
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
/// resource "aws_kendra_thesaurus" "example" {
///   index_id = exampleAwsKendraIndex.id
///   name     = "Example"
///   role_arn = exampleAwsIamRole.arn
///   source_s3_path = {
///     bucket = exampleAwsS3Bucket.id
///     key    = exampleAwsS3Object.key
///   }
///   tags = {
///     "Name" = "Example Kendra Thesaurus"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Thesaurus;
/// import com.pulumi.aws.kendra.ThesaurusArgs;
/// import com.pulumi.aws.kendra.inputs.ThesaurusSourceS3PathArgs;
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
///         var example = new Thesaurus("example", ThesaurusArgs.builder()
///             .indexId(exampleAwsKendraIndex.id())
///             .name("Example")
///             .roleArn(exampleAwsIamRole.arn())
///             .sourceS3Path(ThesaurusSourceS3PathArgs.builder()
///                 .bucket(exampleAwsS3Bucket.id())
///                 .key(exampleAwsS3Object.key())
///                 .build())
///             .tags(Map.of("Name", "Example Kendra Thesaurus"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Thesaurus
///     properties:
///       indexId: ${exampleAwsKendraIndex.id}
///       name: Example
///       roleArn: ${exampleAwsIamRole.arn}
///       sourceS3Path:
///         bucket: ${exampleAwsS3Bucket.id}
///         key: ${exampleAwsS3Object.key}
///       tags:
///         Name: Example Kendra Thesaurus
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kendra.Thesaurus` using the unique identifiers of the thesaurus and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/thesaurus:Thesaurus example thesaurus-123456780/idx-8012925589
/// ```
class Thesaurus extends pulumi.CustomResource {
  /// ARN of the thesaurus.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String?> description;
  /// The identifier of the index for a thesaurus.
  late final pulumi.Output<String> indexId;
  /// The name for the thesaurus.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final pulumi.Output<String> region;
  /// The IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  late final pulumi.Output<String> roleArn;
  /// The S3 path where your thesaurus file sits in S3. Detailed below.
  late final pulumi.Output<ThesaurusSourceS3Path> sourceS3Path;
  /// The current status of the thesaurus.
  late final pulumi.Output<String> status;
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> thesaurusId;

  /// Creates a new [Thesaurus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Thesaurus]. {@macro pulumi_kendra_thesaurus_thesaurus_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Thesaurus(
    String name, {
    ThesaurusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/thesaurus:Thesaurus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    indexId = registerOutput<String>('indexId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    sourceS3Path = registerOutput<ThesaurusSourceS3Path>('sourceS3Path', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ThesaurusSourceS3Path.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    thesaurusId = registerOutput<String>('thesaurusId');
  }

  /// Gets an existing [Thesaurus] resource's state with the given [name] and [id].
  static Thesaurus get(
    String name,
    pulumi.Input<String> id, {
    ThesaurusState? state,
  }) {
    return Thesaurus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Thesaurus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/thesaurus:Thesaurus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    indexId = registerOutput<String>('indexId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    sourceS3Path = registerOutput<ThesaurusSourceS3Path>('sourceS3Path', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ThesaurusSourceS3Path.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    thesaurusId = registerOutput<String>('thesaurusId');
  }
}
