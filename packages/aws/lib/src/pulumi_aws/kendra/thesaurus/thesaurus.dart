import 'package:pulumi/pulumi.dart';
import '../thesaurus_source_s3_path/thesaurus_source_s3_path.dart';
import 'thesaurus_args.dart';

/// Resource for managing an AWS Kendra Thesaurus.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Thesaurus("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "Example",
/// roleArn: exampleAwsIamRole.arn,
/// sourceS3Path: {
/// bucket: exampleAwsS3Bucket.id,
/// key: exampleAwsS3Object.key,
/// },
/// tags: {
/// Name: "Example Kendra Thesaurus",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Thesaurus("example",
/// index_id=example_aws_kendra_index["id"],
/// name="Example",
/// role_arn=example_aws_iam_role["arn"],
/// source_s3_path={
/// "bucket": example_aws_s3_bucket["id"],
/// "key": example_aws_s3_object["key"],
/// },
/// tags={
/// "Name": "Example Kendra Thesaurus",
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
/// var example = new Aws.Kendra.Thesaurus("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "Example",
/// RoleArn = exampleAwsIamRole.Arn,
/// SourceS3Path = new Aws.Kendra.Inputs.ThesaurusSourceS3PathArgs
/// {
/// Bucket = exampleAwsS3Bucket.Id,
/// Key = exampleAwsS3Object.Key,
/// },
/// Tags =
/// {
/// { "Name", "Example Kendra Thesaurus" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewThesaurus(ctx, "example", &kendra.ThesaurusArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("Example"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// SourceS3Path: &kendra.ThesaurusSourceS3PathArgs{
/// Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// Key:    pulumi.Any(exampleAwsS3Object.Key),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example Kendra Thesaurus"),
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
/// import com.pulumi.aws.kendra.Thesaurus;
/// import com.pulumi.aws.kendra.ThesaurusArgs;
/// import com.pulumi.aws.kendra.inputs.ThesaurusSourceS3PathArgs;
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
/// var example = new Thesaurus("example", ThesaurusArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("Example")
/// .roleArn(exampleAwsIamRole.arn())
/// .sourceS3Path(ThesaurusSourceS3PathArgs.builder()
/// .bucket(exampleAwsS3Bucket.id())
/// .key(exampleAwsS3Object.key())
/// .build())
/// .tags(Map.of("Name", "Example Kendra Thesaurus"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kendra:Thesaurus
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: Example
/// roleArn: ${exampleAwsIamRole.arn}
/// sourceS3Path:
/// bucket: ${exampleAwsS3Bucket.id}
/// key: ${exampleAwsS3Object.key}
/// tags:
/// Name: Example Kendra Thesaurus
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.kendra.Thesaurus`" pulumi-lang-dotnet="`aws.kendra.Thesaurus`" pulumi-lang-go="`kendra.Thesaurus`" pulumi-lang-python="`kendra.Thesaurus`" pulumi-lang-yaml="`aws.kendra.Thesaurus`" pulumi-lang-java="`aws.kendra.Thesaurus`">`aws.kendra.Thesaurus`</span> using the unique identifiers of the thesaurus and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/thesaurus:Thesaurus example thesaurus-123456780/idx-8012925589
/// ```
class Thesaurus extends CustomResource {
  /// ARN of the thesaurus.
  late final Output<String> arn;
  late final Output<String?> description;

  /// The identifier of the index for a thesaurus.
  late final Output<String> indexId;

  /// The name for the thesaurus.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;

  /// The IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  late final Output<String> roleArn;

  /// The S3 path where your thesaurus file sits in S3. Detailed below.
  late final Output<ThesaurusSourceS3Path> sourceS3Path;

  /// The current status of the thesaurus.
  late final Output<String> status;
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> thesaurusId;

  Thesaurus(
    String name, {
    ThesaurusArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kendra/thesaurus:Thesaurus',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.indexId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.sourceS3Path = Output.createUnknown<ThesaurusSourceS3Path>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.thesaurusId = Output.createUnknown<String>();
  }
}
