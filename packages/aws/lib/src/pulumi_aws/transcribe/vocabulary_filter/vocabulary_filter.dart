import 'package:pulumi/pulumi.dart';
import 'vocabulary_filter_args.dart';

/// Resource for managing an AWS Transcribe VocabularyFilter.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transcribe.VocabularyFilter("example", {
/// vocabularyFilterName: "example",
/// languageCode: "en-US",
/// words: [
/// "cars",
/// "bucket",
/// ],
/// tags: {
/// tag1: "value1",
/// tag2: "value3",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transcribe.VocabularyFilter("example",
/// vocabulary_filter_name="example",
/// language_code="en-US",
/// words=[
/// "cars",
/// "bucket",
/// ],
/// tags={
/// "tag1": "value1",
/// "tag2": "value3",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transcribe.VocabularyFilter("example", new()
/// {
/// VocabularyFilterName = "example",
/// LanguageCode = "en-US",
/// Words = new[]
/// {
/// "cars",
/// "bucket",
/// },
/// Tags =
/// {
/// { "tag1", "value1" },
/// { "tag2", "value3" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transcribe"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transcribe.NewVocabularyFilter(ctx, "example", &transcribe.VocabularyFilterArgs{
/// VocabularyFilterName: pulumi.String("example"),
/// LanguageCode:         pulumi.String("en-US"),
/// Words: pulumi.StringArray{
/// pulumi.String("cars"),
/// pulumi.String("bucket"),
/// },
/// Tags: pulumi.StringMap{
/// "tag1": pulumi.String("value1"),
/// "tag2": pulumi.String("value3"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new VocabularyFilter("example", VocabularyFilterArgs.builder()
/// .vocabularyFilterName("example")
/// .languageCode("en-US")
/// .words(
/// "cars",
/// "bucket")
/// .tags(Map.ofEntries(
/// Map.entry("tag1", "value1"),
/// Map.entry("tag2", "value3")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transcribe:VocabularyFilter
/// properties:
/// vocabularyFilterName: example
/// languageCode: en-US
/// words:
/// - cars
/// - bucket
/// tags:
/// tag1: value1
/// tag2: value3
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe VocabularyFilter using the <span pulumi-lang-nodejs="`vocabularyFilterName`" pulumi-lang-dotnet="`VocabularyFilterName`" pulumi-lang-go="`vocabularyFilterName`" pulumi-lang-python="`vocabulary_filter_name`" pulumi-lang-yaml="`vocabularyFilterName`" pulumi-lang-java="`vocabularyFilterName`">`vocabulary_filter_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/vocabularyFilter:VocabularyFilter example example-name
/// ```
class VocabularyFilter extends CustomResource {
  /// ARN of the VocabularyFilter.
  late final Output<String> arn;

  /// Generated download URI.
  late final Output<String> downloadUri;

  /// The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  late final Output<String> languageCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the VocabularyFilter. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with <span pulumi-lang-nodejs="`words`" pulumi-lang-dotnet="`Words`" pulumi-lang-go="`words`" pulumi-lang-python="`words`" pulumi-lang-yaml="`words`" pulumi-lang-java="`words`">`words`</span> argument.
  late final Output<String?> vocabularyFilterFileUri;

  /// The name of the VocabularyFilter.
  ///
  /// The following arguments are optional:
  late final Output<String> vocabularyFilterName;

  /// A list of terms to include in the vocabulary. Conflicts with <span pulumi-lang-nodejs="`vocabularyFilterFileUri`" pulumi-lang-dotnet="`VocabularyFilterFileUri`" pulumi-lang-go="`vocabularyFilterFileUri`" pulumi-lang-python="`vocabulary_filter_file_uri`" pulumi-lang-yaml="`vocabularyFilterFileUri`" pulumi-lang-java="`vocabularyFilterFileUri`">`vocabulary_filter_file_uri`</span> argument.
  late final Output<List<String>?> words;

  VocabularyFilter(
    String name, {
    VocabularyFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/vocabularyFilter:VocabularyFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.downloadUri = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vocabularyFilterFileUri = Output.createUnknown<String?>();
    this.vocabularyFilterName = Output.createUnknown<String>();
    this.words = Output.createUnknown<List<String>?>();
  }
}
