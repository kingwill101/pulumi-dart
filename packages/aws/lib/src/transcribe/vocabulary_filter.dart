import 'package:pulumi/pulumi.dart' as pulumi;
import 'vocabulary_filter_args.dart';

/// Resource for managing an AWS Transcribe VocabularyFilter.
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
/// const example = new aws.transcribe.VocabularyFilter("example", {
///     vocabularyFilterName: "example",
///     languageCode: "en-US",
///     words: [
///         "cars",
///         "bucket",
///     ],
///     tags: {
///         tag1: "value1",
///         tag2: "value3",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transcribe.VocabularyFilter("example",
///     vocabulary_filter_name="example",
///     language_code="en-US",
///     words=[
///         "cars",
///         "bucket",
///     ],
///     tags={
///         "tag1": "value1",
///         "tag2": "value3",
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
///     var example = new Aws.Transcribe.VocabularyFilter("example", new()
///     {
///         VocabularyFilterName = "example",
///         LanguageCode = "en-US",
///         Words = new[]
///         {
///             "cars",
///             "bucket",
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value3" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transcribe"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transcribe.NewVocabularyFilter(ctx, "example", &transcribe.VocabularyFilterArgs{
/// 			VocabularyFilterName: pulumi.String("example"),
/// 			LanguageCode:         pulumi.String("en-US"),
/// 			Words: pulumi.StringArray{
/// 				pulumi.String("cars"),
/// 				pulumi.String("bucket"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value3"),
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
/// import com.pulumi.aws.transcribe.VocabularyFilter;
/// import com.pulumi.aws.transcribe.VocabularyFilterArgs;
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
///         var example = new VocabularyFilter("example", VocabularyFilterArgs.builder()
///             .vocabularyFilterName("example")
///             .languageCode("en-US")
///             .words(
///                 "cars",
///                 "bucket")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value3")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transcribe:VocabularyFilter
///     properties:
///       vocabularyFilterName: example
///       languageCode: en-US
///       words:
///         - cars
///         - bucket
///       tags:
///         tag1: value1
///         tag2: value3
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe VocabularyFilter using the `vocabulary_filter_name`. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/vocabularyFilter:VocabularyFilter example example-name
/// ```
class VocabularyFilter extends pulumi.CustomResource {
  /// ARN of the VocabularyFilter.
  late final pulumi.Output<String> arn;
  /// Generated download URI.
  late final pulumi.Output<String> downloadUri;
  /// The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  late final pulumi.Output<String> languageCode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the VocabularyFilter. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  late final pulumi.Output<String?> vocabularyFilterFileUri;
  /// The name of the VocabularyFilter.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vocabularyFilterName;
  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_filter_file_uri` argument.
  late final pulumi.Output<List<String>?> words;

  /// Creates a new [VocabularyFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VocabularyFilter]. {@macro pulumi_transcribe_vocabulary_filter_vocabulary_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VocabularyFilter(
    String name, {
    VocabularyFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/vocabularyFilter:VocabularyFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.downloadUri = registerOutput<String>('downloadUri');
    this.languageCode = registerOutput<String>('languageCode');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vocabularyFilterFileUri = registerOutput<String?>('vocabularyFilterFileUri');
    this.vocabularyFilterName = registerOutput<String>('vocabularyFilterName');
    this.words = registerOutput<List<String>?>('words');
  }
}
