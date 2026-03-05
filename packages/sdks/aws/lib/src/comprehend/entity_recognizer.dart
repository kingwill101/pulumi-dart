import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_recognizer_args.dart';
import 'entity_recognizer_input_data_config.dart';
import 'entity_recognizer_state.dart';
import 'entity_recognizer_vpc_config.dart';

/// Resource for managing an AWS Comprehend Entity Recognizer.
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
/// const entities = new aws.s3.BucketObjectv2("entities", {});
/// const example = new aws.comprehend.EntityRecognizer("example", {
///     name: "example",
///     dataAccessRoleArn: exampleAwsIamRole.arn,
///     languageCode: "en",
///     inputDataConfig: {
///         entityTypes: [
///             {
///                 type: "ENTITY_1",
///             },
///             {
///                 type: "ENTITY_2",
///             },
///         ],
///         documents: {
///             s3Uri: pulumi.interpolate`s3://${documentsAwsS3Bucket.bucket}/${documents.key}`,
///         },
///         entityList: {
///             s3Uri: pulumi.interpolate`s3://${entitiesAwsS3Bucket.bucket}/${entities.key}`,
///         },
///     },
/// }, {
///     dependsOn: [exampleAwsIamRolePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// documents = aws.s3.BucketObjectv2("documents")
/// entities = aws.s3.BucketObjectv2("entities")
/// example = aws.comprehend.EntityRecognizer("example",
///     name="example",
///     data_access_role_arn=example_aws_iam_role["arn"],
///     language_code="en",
///     input_data_config={
///         "entity_types": [
///             {
///                 "type": "ENTITY_1",
///             },
///             {
///                 "type": "ENTITY_2",
///             },
///         ],
///         "documents": {
///             "s3_uri": documents.key.apply(lambda key: f"s3://{documents_aws_s3_bucket['bucket']}/{key}"),
///         },
///         "entity_list": {
///             "s3_uri": entities.key.apply(lambda key: f"s3://{entities_aws_s3_bucket['bucket']}/{key}"),
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_iam_role_policy]))
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
///     var entities = new Aws.S3.BucketObjectv2("entities");
///
///     var example = new Aws.Comprehend.EntityRecognizer("example", new()
///     {
///         Name = "example",
///         DataAccessRoleArn = exampleAwsIamRole.Arn,
///         LanguageCode = "en",
///         InputDataConfig = new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigArgs
///         {
///             EntityTypes = new[]
///             {
///                 new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigEntityTypeArgs
///                 {
///                     Type = "ENTITY_1",
///                 },
///                 new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigEntityTypeArgs
///                 {
///                     Type = "ENTITY_2",
///                 },
///             },
///             Documents = new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigDocumentsArgs
///             {
///                 S3Uri = documents.Key.Apply(key => $"s3://{documentsAwsS3Bucket.Bucket}/{key}"),
///             },
///             EntityList = new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigEntityListArgs
///             {
///                 S3Uri = entities.Key.Apply(key => $"s3://{entitiesAwsS3Bucket.Bucket}/{key}"),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsIamRolePolicy,
///         },
///     });
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
/// 		entities, err := s3.NewBucketObjectv2(ctx, "entities", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = comprehend.NewEntityRecognizer(ctx, "example", &comprehend.EntityRecognizerArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			LanguageCode:      pulumi.String("en"),
/// 			InputDataConfig: &comprehend.EntityRecognizerInputDataConfigArgs{
/// 				EntityTypes: comprehend.EntityRecognizerInputDataConfigEntityTypeArray{
/// 					&comprehend.EntityRecognizerInputDataConfigEntityTypeArgs{
/// 						Type: pulumi.String("ENTITY_1"),
/// 					},
/// 					&comprehend.EntityRecognizerInputDataConfigEntityTypeArgs{
/// 						Type: pulumi.String("ENTITY_2"),
/// 					},
/// 				},
/// 				Documents: &comprehend.EntityRecognizerInputDataConfigDocumentsArgs{
/// 					S3Uri: documents.Key.ApplyT(func(key string) (string, error) {
/// 						return fmt.Sprintf("s3://%v/%v", documentsAwsS3Bucket.Bucket, key), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				EntityList: &comprehend.EntityRecognizerInputDataConfigEntityListArgs{
/// 					S3Uri: entities.Key.ApplyT(func(key string) (string, error) {
/// 						return fmt.Sprintf("s3://%v/%v", entitiesAwsS3Bucket.Bucket, key), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsIamRolePolicy,
/// 		}))
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
/// import com.pulumi.aws.comprehend.EntityRecognizer;
/// import com.pulumi.aws.comprehend.EntityRecognizerArgs;
/// import com.pulumi.aws.comprehend.inputs.EntityRecognizerInputDataConfigArgs;
/// import com.pulumi.aws.comprehend.inputs.EntityRecognizerInputDataConfigDocumentsArgs;
/// import com.pulumi.aws.comprehend.inputs.EntityRecognizerInputDataConfigEntityListArgs;
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
///         var entities = new BucketObjectv2("entities");
///
///         var example = new EntityRecognizer("example", EntityRecognizerArgs.builder()
///             .name("example")
///             .dataAccessRoleArn(exampleAwsIamRole.arn())
///             .languageCode("en")
///             .inputDataConfig(EntityRecognizerInputDataConfigArgs.builder()
///                 .entityTypes(
///                     EntityRecognizerInputDataConfigEntityTypeArgs.builder()
///                         .type("ENTITY_1")
///                         .build(),
///                     EntityRecognizerInputDataConfigEntityTypeArgs.builder()
///                         .type("ENTITY_2")
///                         .build())
///                 .documents(EntityRecognizerInputDataConfigDocumentsArgs.builder()
///                     .s3Uri(documents.key().applyValue(_key -> String.format("s3://%s/%s", documentsAwsS3Bucket.bucket(),_key)))
///                     .build())
///                 .entityList(EntityRecognizerInputDataConfigEntityListArgs.builder()
///                     .s3Uri(entities.key().applyValue(_key -> String.format("s3://%s/%s", entitiesAwsS3Bucket.bucket(),_key)))
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsIamRolePolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:comprehend:EntityRecognizer
///     properties:
///       name: example
///       dataAccessRoleArn: ${exampleAwsIamRole.arn}
///       languageCode: en
///       inputDataConfig:
///         entityTypes:
///           - type: ENTITY_1
///           - type: ENTITY_2
///         documents:
///           s3Uri: s3://${documentsAwsS3Bucket.bucket}/${documents.key}
///         entityList:
///           s3Uri: s3://${entitiesAwsS3Bucket.bucket}/${entities.key}
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Comprehend entity recognizer.
///
///
/// Using `pulumi import`, import Comprehend Entity Recognizer using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:comprehend/entityRecognizer:EntityRecognizer example arn:aws:comprehend:us-west-2:123456789012:entity-recognizer/example
/// ```
class EntityRecognizer extends pulumi.CustomResource {
  /// ARN of the Entity Recognizer version.
  late final pulumi.Output<String> arn;

  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  late final pulumi.Output<String> dataAccessRoleArn;

  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  late final pulumi.Output<EntityRecognizerInputDataConfig> inputDataConfig;

  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  late final pulumi.Output<String> languageCode;

  /// The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  late final pulumi.Output<String?> modelKmsKeyId;

  /// Name for the Entity Recognizer.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Name for the version of the Entity Recognizer.
  /// Each version must have a unique name within the Entity Recognizer.
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

  /// ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  late final pulumi.Output<String?> volumeKmsKeyId;

  /// Configuration parameters for VPC to contain Entity Recognizer resources.
  /// See the `vpc_config` Configuration Block section below.
  late final pulumi.Output<EntityRecognizerVpcConfig?> vpcConfig;

  /// Creates a new [EntityRecognizer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntityRecognizer]. {@macro pulumi_comprehend_entity_recognizer_entity_recognizer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntityRecognizer(
    String name, {
    EntityRecognizerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:comprehend/entityRecognizer:EntityRecognizer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    inputDataConfig = registerOutput<EntityRecognizerInputDataConfig>(
      'inputDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EntityRecognizerInputDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    languageCode = registerOutput<String>('languageCode');
    modelKmsKeyId = registerOutput<String?>('modelKmsKeyId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    versionName = registerOutput<String>('versionName');
    versionNamePrefix = registerOutput<String>('versionNamePrefix');
    volumeKmsKeyId = registerOutput<String?>('volumeKmsKeyId');
    vpcConfig = registerOutput<EntityRecognizerVpcConfig?>(
      'vpcConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EntityRecognizerVpcConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [EntityRecognizer] resource's state with the given [name] and [id].
  static EntityRecognizer get(
    String name,
    pulumi.Input<String> id, {
    EntityRecognizerState? state,
  }) {
    return EntityRecognizer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EntityRecognizer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:comprehend/entityRecognizer:EntityRecognizer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    inputDataConfig = registerOutput<EntityRecognizerInputDataConfig>(
      'inputDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EntityRecognizerInputDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    languageCode = registerOutput<String>('languageCode');
    modelKmsKeyId = registerOutput<String?>('modelKmsKeyId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    versionName = registerOutput<String>('versionName');
    versionNamePrefix = registerOutput<String>('versionNamePrefix');
    volumeKmsKeyId = registerOutput<String?>('volumeKmsKeyId');
    vpcConfig = registerOutput<EntityRecognizerVpcConfig?>(
      'vpcConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EntityRecognizerVpcConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
