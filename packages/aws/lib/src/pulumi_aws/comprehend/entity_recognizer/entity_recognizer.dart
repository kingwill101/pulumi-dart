import 'package:pulumi/pulumi.dart';
import '../entity_recognizer_input_data_config/entity_recognizer_input_data_config.dart';
import '../entity_recognizer_vpc_config/entity_recognizer_vpc_config.dart';
import 'entity_recognizer_args.dart';

/// Resource for managing an AWS Comprehend Entity Recognizer.
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
/// const documents = new aws.s3.BucketObjectv2("documents", {});
/// const entities = new aws.s3.BucketObjectv2("entities", {});
/// const example = new aws.comprehend.EntityRecognizer("example", {
/// name: "example",
/// dataAccessRoleArn: exampleAwsIamRole.arn,
/// languageCode: "en",
/// inputDataConfig: {
/// entityTypes: [
/// {
/// type: "ENTITY_1",
/// },
/// {
/// type: "ENTITY_2",
/// },
/// ],
/// documents: {
/// s3Uri: pulumi.interpolate`s3://${documentsAwsS3Bucket.bucket}/${documents.key}`,
/// },
/// entityList: {
/// s3Uri: pulumi.interpolate`s3://${entitiesAwsS3Bucket.bucket}/${entities.key}`,
/// },
/// },
/// }, {
/// dependsOn: [exampleAwsIamRolePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// documents = aws.s3.BucketObjectv2("documents")
/// entities = aws.s3.BucketObjectv2("entities")
/// example = aws.comprehend.EntityRecognizer("example",
/// name="example",
/// data_access_role_arn=example_aws_iam_role["arn"],
/// language_code="en",
/// input_data_config={
/// "entity_types": [
/// {
/// "type": "ENTITY_1",
/// },
/// {
/// "type": "ENTITY_2",
/// },
/// ],
/// "documents": {
/// "s3_uri": documents.key.apply(lambda key: f"s3://{documents_aws_s3_bucket['bucket']}/{key}"),
/// },
/// "entity_list": {
/// "s3_uri": entities.key.apply(lambda key: f"s3://{entities_aws_s3_bucket['bucket']}/{key}"),
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_iam_role_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var documents = new Aws.S3.BucketObjectv2("documents");
///
/// var entities = new Aws.S3.BucketObjectv2("entities");
///
/// var example = new Aws.Comprehend.EntityRecognizer("example", new()
/// {
/// Name = "example",
/// DataAccessRoleArn = exampleAwsIamRole.Arn,
/// LanguageCode = "en",
/// InputDataConfig = new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigArgs
/// {
/// EntityTypes = new[]
/// {
/// new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigEntityTypeArgs
/// {
/// Type = "ENTITY_1",
/// },
/// new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigEntityTypeArgs
/// {
/// Type = "ENTITY_2",
/// },
/// },
/// Documents = new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigDocumentsArgs
/// {
/// S3Uri = documents.Key.Apply(key => $"s3://{documentsAwsS3Bucket.Bucket}/{key}"),
/// },
/// EntityList = new Aws.Comprehend.Inputs.EntityRecognizerInputDataConfigEntityListArgs
/// {
/// S3Uri = entities.Key.Apply(key => $"s3://{entitiesAwsS3Bucket.Bucket}/{key}"),
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsIamRolePolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/comprehend"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// documents, err := s3.NewBucketObjectv2(ctx, "documents", nil)
/// if err != nil {
/// return err
/// }
/// entities, err := s3.NewBucketObjectv2(ctx, "entities", nil)
/// if err != nil {
/// return err
/// }
/// _, err = comprehend.NewEntityRecognizer(ctx, "example", &comprehend.EntityRecognizerArgs{
/// Name:              pulumi.String("example"),
/// DataAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// LanguageCode:      pulumi.String("en"),
/// InputDataConfig: &comprehend.EntityRecognizerInputDataConfigArgs{
/// EntityTypes: comprehend.EntityRecognizerInputDataConfigEntityTypeArray{
/// &comprehend.EntityRecognizerInputDataConfigEntityTypeArgs{
/// Type: pulumi.String("ENTITY_1"),
/// },
/// &comprehend.EntityRecognizerInputDataConfigEntityTypeArgs{
/// Type: pulumi.String("ENTITY_2"),
/// },
/// },
/// Documents: &comprehend.EntityRecognizerInputDataConfigDocumentsArgs{
/// S3Uri: documents.Key.ApplyT(func(key string) (string, error) {
/// return fmt.Sprintf("s3://%v/%v", documentsAwsS3Bucket.Bucket, key), nil
/// }).(pulumi.StringOutput),
/// },
/// EntityList: &comprehend.EntityRecognizerInputDataConfigEntityListArgs{
/// S3Uri: entities.Key.ApplyT(func(key string) (string, error) {
/// return fmt.Sprintf("s3://%v/%v", entitiesAwsS3Bucket.Bucket, key), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsIamRolePolicy,
/// }))
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var documents = new BucketObjectv2("documents");
///
/// var entities = new BucketObjectv2("entities");
///
/// var example = new EntityRecognizer("example", EntityRecognizerArgs.builder()
/// .name("example")
/// .dataAccessRoleArn(exampleAwsIamRole.arn())
/// .languageCode("en")
/// .inputDataConfig(EntityRecognizerInputDataConfigArgs.builder()
/// .entityTypes(
/// EntityRecognizerInputDataConfigEntityTypeArgs.builder()
/// .type("ENTITY_1")
/// .build(),
/// EntityRecognizerInputDataConfigEntityTypeArgs.builder()
/// .type("ENTITY_2")
/// .build())
/// .documents(EntityRecognizerInputDataConfigDocumentsArgs.builder()
/// .s3Uri(documents.key().applyValue(_key -> String.format("s3://%s/%s", documentsAwsS3Bucket.bucket(),_key)))
/// .build())
/// .entityList(EntityRecognizerInputDataConfigEntityListArgs.builder()
/// .s3Uri(entities.key().applyValue(_key -> String.format("s3://%s/%s", entitiesAwsS3Bucket.bucket(),_key)))
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsIamRolePolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:comprehend:EntityRecognizer
/// properties:
/// name: example
/// dataAccessRoleArn: ${exampleAwsIamRole.arn}
/// languageCode: en
/// inputDataConfig:
/// entityTypes:
/// - type: ENTITY_1
/// - type: ENTITY_2
/// documents:
/// s3Uri: s3://${documentsAwsS3Bucket.bucket}/${documents.key}
/// entityList:
/// s3Uri: s3://${entitiesAwsS3Bucket.bucket}/${entities.key}
/// options:
/// dependsOn:
/// - ${exampleAwsIamRolePolicy}
/// documents:
/// type: aws:s3:BucketObjectv2
/// entities:
/// type: aws:s3:BucketObjectv2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Comprehend entity recognizer.
///
///
/// Using `pulumi import`, import Comprehend Entity Recognizer using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:comprehend/entityRecognizer:EntityRecognizer example arn:aws:comprehend:us-west-2:123456789012:entity-recognizer/example
/// ```
class EntityRecognizer extends CustomResource {
  /// ARN of the Entity Recognizer version.
  late final Output<String> arn;

  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  late final Output<String> dataAccessRoleArn;

  /// Configuration for the training and testing data.
  /// See the <span pulumi-lang-nodejs="`inputDataConfig`" pulumi-lang-dotnet="`InputDataConfig`" pulumi-lang-go="`inputDataConfig`" pulumi-lang-python="`input_data_config`" pulumi-lang-yaml="`inputDataConfig`" pulumi-lang-java="`inputDataConfig`">`input_data_config`</span> Configuration Block section below.
  late final Output<EntityRecognizerInputDataConfig> inputDataConfig;

  /// Two-letter language code for the language.
  /// One of <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>, <span pulumi-lang-nodejs="`es`" pulumi-lang-dotnet="`Es`" pulumi-lang-go="`es`" pulumi-lang-python="`es`" pulumi-lang-yaml="`es`" pulumi-lang-java="`es`">`es`</span>, <span pulumi-lang-nodejs="`fr`" pulumi-lang-dotnet="`Fr`" pulumi-lang-go="`fr`" pulumi-lang-python="`fr`" pulumi-lang-yaml="`fr`" pulumi-lang-java="`fr`">`fr`</span>, <span pulumi-lang-nodejs="`it`" pulumi-lang-dotnet="`It`" pulumi-lang-go="`it`" pulumi-lang-python="`it`" pulumi-lang-yaml="`it`" pulumi-lang-java="`it`">`it`</span>, <span pulumi-lang-nodejs="`de`" pulumi-lang-dotnet="`De`" pulumi-lang-go="`de`" pulumi-lang-python="`de`" pulumi-lang-yaml="`de`" pulumi-lang-java="`de`">`de`</span>, or <span pulumi-lang-nodejs="`pt`" pulumi-lang-dotnet="`Pt`" pulumi-lang-go="`pt`" pulumi-lang-python="`pt`" pulumi-lang-yaml="`pt`" pulumi-lang-java="`pt`">`pt`</span>.
  late final Output<String> languageCode;

  /// The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  late final Output<String?> modelKmsKeyId;

  /// Name for the Entity Recognizer.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name for the version of the Entity Recognizer.
  /// Each version must have a unique name within the Entity Recognizer.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with <span pulumi-lang-nodejs="`versionNamePrefix`" pulumi-lang-dotnet="`VersionNamePrefix`" pulumi-lang-go="`versionNamePrefix`" pulumi-lang-python="`version_name_prefix`" pulumi-lang-yaml="`versionNamePrefix`" pulumi-lang-java="`versionNamePrefix`">`version_name_prefix`</span>.
  late final Output<String> versionName;

  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with <span pulumi-lang-nodejs="`versionName`" pulumi-lang-dotnet="`VersionName`" pulumi-lang-go="`versionName`" pulumi-lang-python="`version_name`" pulumi-lang-yaml="`versionName`" pulumi-lang-java="`versionName`">`version_name`</span>.
  late final Output<String> versionNamePrefix;

  /// ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  late final Output<String?> volumeKmsKeyId;

  /// Configuration parameters for VPC to contain Entity Recognizer resources.
  /// See the <span pulumi-lang-nodejs="`vpcConfig`" pulumi-lang-dotnet="`VpcConfig`" pulumi-lang-go="`vpcConfig`" pulumi-lang-python="`vpc_config`" pulumi-lang-yaml="`vpcConfig`" pulumi-lang-java="`vpcConfig`">`vpc_config`</span> Configuration Block section below.
  late final Output<EntityRecognizerVpcConfig?> vpcConfig;

  EntityRecognizer(
    String name, {
    EntityRecognizerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:comprehend/entityRecognizer:EntityRecognizer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.dataAccessRoleArn = Output.createUnknown<String>();
    this.inputDataConfig =
        Output.createUnknown<EntityRecognizerInputDataConfig>();
    this.languageCode = Output.createUnknown<String>();
    this.modelKmsKeyId = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.versionName = Output.createUnknown<String>();
    this.versionNamePrefix = Output.createUnknown<String>();
    this.volumeKmsKeyId = Output.createUnknown<String?>();
    this.vpcConfig = Output.createUnknown<EntityRecognizerVpcConfig?>();
  }
}
