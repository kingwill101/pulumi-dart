import 'package:pulumi/pulumi.dart' as pulumi;
import 'faq_args.dart';
import 'faq_s3_path.dart';
import 'faq_state.dart';

/// Resource for managing an AWS Kendra FAQ.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Faq("example", {
///     s3Path: {
///         bucket: exampleAwsS3Bucket.id,
///         key: exampleAwsS3Object.key,
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "Example",
///     roleArn: exampleAwsIamRole.arn,
///     tags: {
///         Name: "Example Kendra Faq",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Faq("example",
///     s3_path={
///         "bucket": example_aws_s3_bucket["id"],
///         "key": example_aws_s3_object["key"],
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="Example",
///     role_arn=example_aws_iam_role["arn"],
///     tags={
///         "Name": "Example Kendra Faq",
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
///     var example = new Aws.Kendra.Faq("example", new()
///     {
///         S3Path = new Aws.Kendra.Inputs.FaqS3PathArgs
///         {
///             Bucket = exampleAwsS3Bucket.Id,
///             Key = exampleAwsS3Object.Key,
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "Example",
///         RoleArn = exampleAwsIamRole.Arn,
///         Tags =
///         {
///             { "Name", "Example Kendra Faq" },
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
/// 		_, err := kendra.NewFaq(ctx, "example", &kendra.FaqArgs{
/// 			S3Path: &kendra.FaqS3PathArgs{
/// 				Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 				Key:    pulumi.Any(exampleAwsS3Object.Key),
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("Example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Kendra Faq"),
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
/// resource "aws_kendra_faq" "example" {
///   s3_path = {
///     bucket = exampleAwsS3Bucket.id
///     key    = exampleAwsS3Object.key
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "Example"
///   role_arn = exampleAwsIamRole.arn
///   tags = {
///     "Name" = "Example Kendra Faq"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Faq;
/// import com.pulumi.aws.kendra.FaqArgs;
/// import com.pulumi.aws.kendra.inputs.FaqS3PathArgs;
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
///         var example = new Faq("example", FaqArgs.builder()
///             .s3Path(FaqS3PathArgs.builder()
///                 .bucket(exampleAwsS3Bucket.id())
///                 .key(exampleAwsS3Object.key())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("Example")
///             .roleArn(exampleAwsIamRole.arn())
///             .tags(Map.of("Name", "Example Kendra Faq"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Faq
///     properties:
///       s3Path:
///         bucket: ${exampleAwsS3Bucket.id}
///         key: ${exampleAwsS3Object.key}
///       indexId: ${exampleAwsKendraIndex.id}
///       name: Example
///       roleArn: ${exampleAwsIamRole.arn}
///       tags:
///         Name: Example Kendra Faq
/// ```
///
///
/// ### With File Format
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Faq("example", {
///     s3Path: {
///         bucket: exampleAwsS3Bucket.id,
///         key: exampleAwsS3Object.key,
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "Example",
///     fileFormat: "CSV",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Faq("example",
///     s3_path={
///         "bucket": example_aws_s3_bucket["id"],
///         "key": example_aws_s3_object["key"],
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="Example",
///     file_format="CSV",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Faq("example", new()
///     {
///         S3Path = new Aws.Kendra.Inputs.FaqS3PathArgs
///         {
///             Bucket = exampleAwsS3Bucket.Id,
///             Key = exampleAwsS3Object.Key,
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "Example",
///         FileFormat = "CSV",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := kendra.NewFaq(ctx, "example", &kendra.FaqArgs{
/// 			S3Path: &kendra.FaqS3PathArgs{
/// 				Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 				Key:    pulumi.Any(exampleAwsS3Object.Key),
/// 			},
/// 			IndexId:    pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:       pulumi.String("Example"),
/// 			FileFormat: pulumi.String("CSV"),
/// 			RoleArn:    pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_faq" "example" {
///   s3_path = {
///     bucket = exampleAwsS3Bucket.id
///     key    = exampleAwsS3Object.key
///   }
///   index_id    = exampleAwsKendraIndex.id
///   name        = "Example"
///   file_format = "CSV"
///   role_arn    = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Faq;
/// import com.pulumi.aws.kendra.FaqArgs;
/// import com.pulumi.aws.kendra.inputs.FaqS3PathArgs;
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
///         var example = new Faq("example", FaqArgs.builder()
///             .s3Path(FaqS3PathArgs.builder()
///                 .bucket(exampleAwsS3Bucket.id())
///                 .key(exampleAwsS3Object.key())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("Example")
///             .fileFormat("CSV")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Faq
///     properties:
///       s3Path:
///         bucket: ${exampleAwsS3Bucket.id}
///         key: ${exampleAwsS3Object.key}
///       indexId: ${exampleAwsKendraIndex.id}
///       name: Example
///       fileFormat: CSV
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Language Code
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Faq("example", {
///     s3Path: {
///         bucket: exampleAwsS3Bucket.id,
///         key: exampleAwsS3Object.key,
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "Example",
///     languageCode: "en",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Faq("example",
///     s3_path={
///         "bucket": example_aws_s3_bucket["id"],
///         "key": example_aws_s3_object["key"],
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="Example",
///     language_code="en",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Faq("example", new()
///     {
///         S3Path = new Aws.Kendra.Inputs.FaqS3PathArgs
///         {
///             Bucket = exampleAwsS3Bucket.Id,
///             Key = exampleAwsS3Object.Key,
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "Example",
///         LanguageCode = "en",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := kendra.NewFaq(ctx, "example", &kendra.FaqArgs{
/// 			S3Path: &kendra.FaqS3PathArgs{
/// 				Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 				Key:    pulumi.Any(exampleAwsS3Object.Key),
/// 			},
/// 			IndexId:      pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:         pulumi.String("Example"),
/// 			LanguageCode: pulumi.String("en"),
/// 			RoleArn:      pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_faq" "example" {
///   s3_path = {
///     bucket = exampleAwsS3Bucket.id
///     key    = exampleAwsS3Object.key
///   }
///   index_id      = exampleAwsKendraIndex.id
///   name          = "Example"
///   language_code = "en"
///   role_arn      = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Faq;
/// import com.pulumi.aws.kendra.FaqArgs;
/// import com.pulumi.aws.kendra.inputs.FaqS3PathArgs;
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
///         var example = new Faq("example", FaqArgs.builder()
///             .s3Path(FaqS3PathArgs.builder()
///                 .bucket(exampleAwsS3Bucket.id())
///                 .key(exampleAwsS3Object.key())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("Example")
///             .languageCode("en")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Faq
///     properties:
///       s3Path:
///         bucket: ${exampleAwsS3Bucket.id}
///         key: ${exampleAwsS3Object.key}
///       indexId: ${exampleAwsKendraIndex.id}
///       name: Example
///       languageCode: en
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kendra.Faq` using the unique identifiers of the FAQ and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/faq:Faq example faq-123456780/idx-8012925589
/// ```
class Faq extends pulumi.CustomResource {
  /// ARN of the FAQ.
  late final pulumi.Output<String> arn;
  /// Unix datetime that the FAQ was created.
  late final pulumi.Output<String> createdAt;
  /// Description for a FAQ.
  late final pulumi.Output<String?> description;
  /// When the Status field value is `FAILED`, this contains a message that explains why.
  late final pulumi.Output<String> errorMessage;
  /// Identifier of the FAQ.
  late final pulumi.Output<String> faqId;
  /// File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  late final pulumi.Output<String?> fileFormat;
  /// Identifier of the index for a FAQ.
  late final pulumi.Output<String> indexId;
  /// Code for a language. This shows a supported language for the FAQ document. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  late final pulumi.Output<String> languageCode;
  /// Name that should be associated with the FAQ.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  late final pulumi.Output<String> roleArn;
  /// S3 location of the FAQ input data. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<FaqS3Path> s3Path;
  /// Status of the FAQ. It is ready to use when the status is ACTIVE.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Date and time that the FAQ was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Faq].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Faq]. {@macro pulumi_kendra_faq_faq_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Faq(
    String name, {
    FaqArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/faq:Faq',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    faqId = registerOutput<String>('faqId');
    fileFormat = registerOutput<String?>('fileFormat');
    indexId = registerOutput<String>('indexId');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    s3Path = registerOutput<FaqS3Path>('s3Path', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FaqS3Path.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [Faq] resource's state with the given [name] and [id].
  static Faq get(
    String name,
    pulumi.Input<String> id, {
    FaqState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Faq._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Faq._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/faq:Faq',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    faqId = registerOutput<String>('faqId');
    fileFormat = registerOutput<String?>('fileFormat');
    indexId = registerOutput<String>('indexId');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    s3Path = registerOutput<FaqS3Path>('s3Path', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FaqS3Path.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [Faq] resource.
  Faq.reference(String urn)
    : super(
        'aws:kendra/faq:Faq',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    faqId = registerOutput<String>('faqId');
    fileFormat = registerOutput<String?>('fileFormat');
    indexId = registerOutput<String>('indexId');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    s3Path = registerOutput<FaqS3Path>('s3Path', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FaqS3Path.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
