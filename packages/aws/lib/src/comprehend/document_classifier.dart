import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_classifier_args.dart';
import 'document_classifier_input_data_config.dart';
import 'document_classifier_output_data_config.dart';
import 'document_classifier_vpc_config.dart';

/// Resource for managing an AWS Comprehend Document Classifier.
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
/// const documents = new aws.s3.BucketObjectv2("documents", {});
/// const example = new aws.comprehend.DocumentClassifier("example", {
///     name: "example",
///     dataAccessRoleArn: exampleAwsIamRole.arn,
///     languageCode: "en",
///     inputDataConfig: {
///         s3Uri: pulumi.interpolate`s3://${test.bucket}/${documents.key}`,
///     },
/// }, {
///     dependsOn: [exampleAwsIamRolePolicy],
/// });
/// const entities = new aws.s3.BucketObjectv2("entities", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// documents = aws.s3.BucketObjectv2("documents")
/// example = aws.comprehend.DocumentClassifier("example",
///     name="example",
///     data_access_role_arn=example_aws_iam_role["arn"],
///     language_code="en",
///     input_data_config={
///         "s3_uri": documents.key.apply(lambda key: f"s3://{test['bucket']}/{key}"),
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_iam_role_policy]))
/// entities = aws.s3.BucketObjectv2("entities")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var documents = new Aws.S3.BucketObjectv2("documents");
///
///     var example = new Aws.Comprehend.DocumentClassifier("example", new()
///     {
///         Name = "example",
///         DataAccessRoleArn = exampleAwsIamRole.Arn,
///         LanguageCode = "en",
///         InputDataConfig = new Aws.Comprehend.Inputs.DocumentClassifierInputDataConfigArgs
///         {
///             S3Uri = documents.Key.Apply(key => $"s3://{test.Bucket}/{key}"),
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsIamRolePolicy,
///         },
///     });
///
///     var entities = new Aws.S3.BucketObjectv2("entities");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/comprehend"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		documents, err := s3.NewBucketObjectv2(ctx, "documents", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = comprehend.NewDocumentClassifier(ctx, "example", &comprehend.DocumentClassifierArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			LanguageCode:      pulumi.String("en"),
/// 			InputDataConfig: &comprehend.DocumentClassifierInputDataConfigArgs{
/// 				S3Uri: documents.Key.ApplyT(func(key string) (string, error) {
/// 					return fmt.Sprintf("s3://%v/%v", test.Bucket, key), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsIamRolePolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "entities", nil)
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
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.comprehend.DocumentClassifier;
/// import com.pulumi.aws.comprehend.DocumentClassifierArgs;
/// import com.pulumi.aws.comprehend.inputs.DocumentClassifierInputDataConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var documents = new BucketObjectv2("documents");
///
///         var example = new DocumentClassifier("example", DocumentClassifierArgs.builder()
///             .name("example")
///             .dataAccessRoleArn(exampleAwsIamRole.arn())
///             .languageCode("en")
///             .inputDataConfig(DocumentClassifierInputDataConfigArgs.builder()
///                 .s3Uri(documents.key().applyValue(_key -> String.format("s3://%s/%s", test.bucket(),_key)))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsIamRolePolicy)
///                 .build());
///
///         var entities = new BucketObjectv2("entities");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:comprehend:DocumentClassifier
///     properties:
///       name: example
///       dataAccessRoleArn: ${exampleAwsIamRole.arn}
///       languageCode: en
///       inputDataConfig:
///         s3Uri: s3://${test.bucket}/${documents.key}
///     options:
///       dependsOn:
///         - ${exampleAwsIamRolePolicy}
///   documents:
///     type: aws:s3:BucketObjectv2
///   entities:
///     type: aws:s3:BucketObjectv2
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Comprehend document classifier.
///
///
/// Using `pulumi import`, import Comprehend Document Classifier using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:comprehend/documentClassifier:DocumentClassifier example arn:aws:comprehend:us-west-2:123456789012:document_classifier/example
/// ```
class DocumentClassifier extends pulumi.CustomResource {
  /// ARN of the Document Classifier version.
  late final pulumi.Output<String> arn;
  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  late final pulumi.Output<String> dataAccessRoleArn;
  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  late final pulumi.Output<DocumentClassifierInputDataConfig> inputDataConfig;
  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  late final pulumi.Output<String> languageCode;
  /// The document classification mode.
  /// One of `MULTI_CLASS` or `MULTI_LABEL`.
  /// `MULTI_CLASS` is also known as "Single Label" in the AWS Console.
  late final pulumi.Output<String?> mode;
  /// KMS Key used to encrypt trained Document Classifiers.
  /// Can be a KMS Key ID or a KMS Key ARN.
  late final pulumi.Output<String?> modelKmsKeyId;
  /// Name for the Document Classifier.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Configuration for the output results of training.
  /// See the `output_data_config` Configuration Block section below.
  late final pulumi.Output<DocumentClassifierOutputDataConfig> outputDataConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name for the version of the Document Classifier.
  /// Each version must have a unique name within the Document Classifier.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name_prefix`.
  late final pulumi.Output<String> versionName;
  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name`.
  late final pulumi.Output<String> versionNamePrefix;
  /// KMS Key used to encrypt storage volumes during job processing.
  /// Can be a KMS Key ID or a KMS Key ARN.
  late final pulumi.Output<String?> volumeKmsKeyId;
  /// Configuration parameters for VPC to contain Document Classifier resources.
  /// See the `vpc_config` Configuration Block section below.
  late final pulumi.Output<DocumentClassifierVpcConfig?> vpcConfig;

  /// Creates a new [DocumentClassifier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentClassifier]. {@macro pulumi_comprehend_document_classifier_document_classifier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentClassifier(
    String name, {
    DocumentClassifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:comprehend/documentClassifier:DocumentClassifier',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    this.inputDataConfig = registerOutput<DocumentClassifierInputDataConfig>('inputDataConfig');
    this.languageCode = registerOutput<String>('languageCode');
    this.mode = registerOutput<String?>('mode');
    this.modelKmsKeyId = registerOutput<String?>('modelKmsKeyId');
    this.name = registerOutput<String>('name');
    this.outputDataConfig = registerOutput<DocumentClassifierOutputDataConfig>('outputDataConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionName = registerOutput<String>('versionName');
    this.versionNamePrefix = registerOutput<String>('versionNamePrefix');
    this.volumeKmsKeyId = registerOutput<String?>('volumeKmsKeyId');
    this.vpcConfig = registerOutput<DocumentClassifierVpcConfig?>('vpcConfig');
  }
}
