import 'package:pulumi/pulumi.dart' as pulumi;
import 'medical_vocabulary_args.dart';
import 'medical_vocabulary_state.dart';

/// Resource for managing an AWS Transcribe MedicalVocabulary.
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
/// const example = new aws.s3.Bucket("example", {
///     bucket: "example-medical-vocab-123",
///     forceDestroy: true,
/// });
/// const object = new aws.s3.BucketObjectv2("object", {
///     bucket: example.id,
///     key: "transcribe/test1.txt",
///     source: new pulumi.asset.FileAsset("test.txt"),
/// });
/// const exampleMedicalVocabulary = new aws.transcribe.MedicalVocabulary("example", {
///     vocabularyName: "example",
///     languageCode: "en-US",
///     vocabularyFileUri: pulumi.interpolate`s3://${example.id}/${object.key}`,
///     tags: {
///         tag1: "value1",
///         tag2: "value3",
///     },
/// }, {
///     dependsOn: [object],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example",
///     bucket="example-medical-vocab-123",
///     force_destroy=True)
/// object = aws.s3.BucketObjectv2("object",
///     bucket=example.id,
///     key="transcribe/test1.txt",
///     source=pulumi.FileAsset("test.txt"))
/// example_medical_vocabulary = aws.transcribe.MedicalVocabulary("example",
///     vocabulary_name="example",
///     language_code="en-US",
///     vocabulary_file_uri=pulumi.Output.all(
///         id=example.id,
///         key=object.key
/// ).apply(lambda resolved_outputs: f"s3://{resolved_outputs['id']}/{resolved_outputs['key']}")
/// ,
///     tags={
///         "tag1": "value1",
///         "tag2": "value3",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[object]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-medical-vocab-123",
///         ForceDestroy = true,
///     });
///
///     var @object = new Aws.S3.BucketObjectv2("object", new()
///     {
///         Bucket = example.Id,
///         Key = "transcribe/test1.txt",
///         Source = new FileAsset("test.txt"),
///     });
///
///     var exampleMedicalVocabulary = new Aws.Transcribe.MedicalVocabulary("example", new()
///     {
///         VocabularyName = "example",
///         LanguageCode = "en-US",
///         VocabularyFileUri = Output.Tuple(example.Id, @object.Key).Apply(values =>
///         {
///             var id = values.Item1;
///             var key = values.Item2;
///             return $"s3://{id}/{key}";
///         }),
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value3" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @object,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transcribe"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-medical-vocab-123"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := s3.NewBucketObjectv2(ctx, "object", &s3.BucketObjectv2Args{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Key:    pulumi.String("transcribe/test1.txt"),
/// 			Source: pulumi.NewFileAsset("test.txt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcribe.NewMedicalVocabulary(ctx, "example", &transcribe.MedicalVocabularyArgs{
/// 			VocabularyName: pulumi.String("example"),
/// 			LanguageCode:   pulumi.String("en-US"),
/// 			VocabularyFileUri: pulumi.All(example.ID(), object.Key).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(pulumi.ID)
/// 				key := _args[1].(string)
/// 				return fmt.Sprintf("s3://%v/%v", id, key), nil
/// 			}).(pulumi.StringOutput),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value3"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			object,
/// 		}))
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
/// resource "aws_s3_bucket" "example" {
///   bucket        = "example-medical-vocab-123"
///   force_destroy = true
/// }
/// resource "aws_s3_bucketobjectv2" "object" {
///   bucket = aws_s3_bucket.example.id
///   key    = "transcribe/test1.txt"
///   source = fileAsset("test.txt")
/// }
/// resource "aws_transcribe_medicalvocabulary" "example" {
///   depends_on          = [aws_s3_bucketobjectv2.object]
///   vocabulary_name     = "example"
///   language_code       = "en-US"
///   vocabulary_file_uri ="s3://${aws_s3_bucket.example.id}/${aws_s3_bucketobjectv2.object.key}"
///   tags = {
///     "tag1" = "value1"
///     "tag2" = "value3"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.transcribe.MedicalVocabulary;
/// import com.pulumi.aws.transcribe.MedicalVocabularyArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example-medical-vocab-123")
///             .forceDestroy(true)
///             .build());
///
///         var object = new BucketObjectv2("object", BucketObjectv2Args.builder()
///             .bucket(example.id())
///             .key("transcribe/test1.txt")
///             .source(new FileAsset("test.txt"))
///             .build());
///
///         var exampleMedicalVocabulary = new MedicalVocabulary("exampleMedicalVocabulary", MedicalVocabularyArgs.builder()
///             .vocabularyName("example")
///             .languageCode("en-US")
///             .vocabularyFileUri(Output.tuple(example.id(), object.key()).applyValue(values -> {
///                 var id = values.t1;
///                 var key = values.t2;
///                 return String.format("s3://%s/%s", id,key);
///             }))
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value3")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(object)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-medical-vocab-123
///       forceDestroy: true
///   object:
///     type: aws:s3:BucketObjectv2
///     properties:
///       bucket: ${example.id}
///       key: transcribe/test1.txt
///       source:
///         fn::fileAsset: test.txt
///   exampleMedicalVocabulary:
///     type: aws:transcribe:MedicalVocabulary
///     name: example
///     properties:
///       vocabularyName: example
///       languageCode: en-US
///       vocabularyFileUri: s3://${example.id}/${object.key}
///       tags:
///         tag1: value1
///         tag2: value3
///     options:
///       dependsOn:
///         - ${object}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe MedicalVocabulary using the `vocabularyName`. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/medicalVocabulary:MedicalVocabulary example example-name
/// ```
class MedicalVocabulary extends pulumi.CustomResource {
  /// ARN of the MedicalVocabulary.
  late final pulumi.Output<String> arn;
  /// Generated download URI.
  late final pulumi.Output<String> downloadUri;
  /// Language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical.
  late final pulumi.Output<String> languageCode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the MedicalVocabulary. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Amazon S3 location (URI) of the text file that contains your custom medical vocabulary.
  late final pulumi.Output<String> vocabularyFileUri;
  /// Name of the Medical Vocabulary.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vocabularyName;

  /// Creates a new [MedicalVocabulary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MedicalVocabulary]. {@macro pulumi_transcribe_medical_vocabulary_medical_vocabulary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MedicalVocabulary(
    String name, {
    MedicalVocabularyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/medicalVocabulary:MedicalVocabulary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    downloadUri = registerOutput<String>('downloadUri');
    languageCode = registerOutput<String>('languageCode');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vocabularyFileUri = registerOutput<String>('vocabularyFileUri');
    vocabularyName = registerOutput<String>('vocabularyName');
  }

  /// Gets an existing [MedicalVocabulary] resource's state with the given [name] and [id].
  static MedicalVocabulary get(
    String name,
    pulumi.Input<String> id, {
    MedicalVocabularyState? state,
  }) {
    return MedicalVocabulary._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MedicalVocabulary._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/medicalVocabulary:MedicalVocabulary',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    downloadUri = registerOutput<String>('downloadUri');
    languageCode = registerOutput<String>('languageCode');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vocabularyFileUri = registerOutput<String>('vocabularyFileUri');
    vocabularyName = registerOutput<String>('vocabularyName');
  }
}
