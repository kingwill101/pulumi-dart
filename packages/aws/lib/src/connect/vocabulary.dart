import 'package:pulumi/pulumi.dart' as pulumi;
import 'vocabulary_args.dart';

/// Provides an Amazon Connect Vocabulary resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.Vocabulary("example", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "example",
///     content: `Phrase\x09IPA\x09SoundsLike\x09DisplayAs
/// Los-Angeles\x09\x09\x09Los Angeles
/// F.B.I.\x09ɛ f b i aɪ\x09\x09FBI
/// Etienne\x09\x09eh-tee-en\x09`,
///     languageCode: "en-US",
///     tags: {
///         Key1: "Value1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.Vocabulary("example",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="example",
///     content="""Phrase\x09IPA\x09SoundsLike\x09DisplayAs
/// Los-Angeles\x09\x09\x09Los Angeles
/// F.B.I.\x09ɛ f b i aɪ\x09\x09FBI
/// Etienne\x09\x09eh-tee-en\x09""",
///     language_code="en-US",
///     tags={
///         "Key1": "Value1",
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
///     var example = new Aws.Connect.Vocabulary("example", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "example",
///         Content = @"Phrase	IPA	SoundsLike	DisplayAs
/// Los-Angeles			Los Angeles
/// F.B.I.	ɛ f b i aɪ		FBI
/// Etienne		eh-tee-en	",
///         LanguageCode = "en-US",
///         Tags =
///         {
///             { "Key1", "Value1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewVocabulary(ctx, "example", &connect.VocabularyArgs{
/// 			InstanceId:   pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:         pulumi.String("example"),
/// 			Content:      pulumi.String("Phrase	IPA	SoundsLike	DisplayAs\nLos-Angeles			Los Angeles\nF.B.I.	ɛ f b i aɪ		FBI\nEtienne		eh-tee-en	"),
/// 			LanguageCode: pulumi.String("en-US"),
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("Value1"),
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
/// import com.pulumi.aws.connect.Vocabulary;
/// import com.pulumi.aws.connect.VocabularyArgs;
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
///         var example = new Vocabulary("example", VocabularyArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("example")
///             .content("""
/// Phrase	IPA	SoundsLike	DisplayAs
/// Los-Angeles			Los Angeles
/// F.B.I.	ɛ f b i aɪ		FBI
/// Etienne		eh-tee-en	            """)
///             .languageCode("en-US")
///             .tags(Map.of("Key1", "Value1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:Vocabulary
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: example
///       content: |-
///         Phrase	IPA	SoundsLike	DisplayAs
///         Los-Angeles			Los Angeles
///         F.B.I.	ɛ f b i aɪ		FBI
///         Etienne		eh-tee-en
///       languageCode: en-US
///       tags:
///         Key1: Value1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Vocabularies using the `instance_id` and `vocabulary_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/vocabulary:Vocabulary example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class Vocabulary extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the vocabulary.
  late final pulumi.Output<String> arn;

  /// The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see [Create a custom vocabulary using a table](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table). Minimum length of `1`. Maximum length of `60000`.
  late final pulumi.Output<String> content;

  /// The reason why the custom vocabulary was not created.
  late final pulumi.Output<String> failureReason;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;

  /// The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see [What is Amazon Transcribe?](https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html). Valid Values are `ar-AE`, `de-CH`, `de-DE`, `en-AB`, `en-AU`, `en-GB`, `en-IE`, `en-IN`, `en-US`, `en-WL`, `es-ES`, `es-US`, `fr-CA`, `fr-FR`, `hi-IN`, `it-IT`, `ja-JP`, `ko-KR`, `pt-BR`, `pt-PT`, `zh-CN`.
  late final pulumi.Output<String> languageCode;

  /// The timestamp when the custom vocabulary was last modified.
  late final pulumi.Output<String> lastModifiedTime;

  /// A unique name of the custom vocabulary. Must not be more than 140 characters.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The current state of the custom vocabulary. Valid values are `CREATION_IN_PROGRESS`, `ACTIVE`, `CREATION_FAILED`, `DELETE_IN_PROGRESS`.
  late final pulumi.Output<String> state;

  /// Tags to apply to the vocabulary. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The identifier of the custom vocabulary.
  late final pulumi.Output<String> vocabularyId;

  /// Creates a new [Vocabulary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vocabulary]. {@macro pulumi_connect_vocabulary_vocabulary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vocabulary(
    String name, {
    VocabularyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/vocabulary:Vocabulary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.failureReason = registerOutput<String>('failureReason');
    this.instanceId = registerOutput<String>('instanceId');
    this.languageCode = registerOutput<String>('languageCode');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vocabularyId = registerOutput<String>('vocabularyId');
  }
}
