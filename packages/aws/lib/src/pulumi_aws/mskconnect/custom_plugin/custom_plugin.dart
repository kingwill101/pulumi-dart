import 'package:pulumi/pulumi.dart';
import '../custom_plugin_location/custom_plugin_location.dart';
import 'custom_plugin_args.dart';

/// Provides an Amazon MSK Connect Custom Plugin Resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
/// bucket: example.id,
/// key: "debezium.zip",
/// source: new pulumi.asset.FileAsset("debezium.zip"),
/// });
/// const exampleCustomPlugin = new aws.mskconnect.CustomPlugin("example", {
/// name: "debezium-example",
/// contentType: "ZIP",
/// location: {
/// s3: {
/// bucketArn: example.arn,
/// fileKey: exampleBucketObjectv2.key,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
/// bucket=example.id,
/// key="debezium.zip",
/// source=pulumi.FileAsset("debezium.zip"))
/// example_custom_plugin = aws.mskconnect.CustomPlugin("example",
/// name="debezium-example",
/// content_type="ZIP",
/// location={
/// "s3": {
/// "bucket_arn": example.arn,
/// "file_key": example_bucket_objectv2.key,
/// },
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
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example",
/// });
///
/// var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
/// {
/// Bucket = example.Id,
/// Key = "debezium.zip",
/// Source = new FileAsset("debezium.zip"),
/// });
///
/// var exampleCustomPlugin = new Aws.MskConnect.CustomPlugin("example", new()
/// {
/// Name = "debezium-example",
/// ContentType = "ZIP",
/// Location = new Aws.MskConnect.Inputs.CustomPluginLocationArgs
/// {
/// S3 = new Aws.MskConnect.Inputs.CustomPluginLocationS3Args
/// {
/// BucketArn = example.Arn,
/// FileKey = exampleBucketObjectv2.Key,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// Bucket: example.ID(),
/// Key:    pulumi.String("debezium.zip"),
/// Source: pulumi.NewFileAsset("debezium.zip"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = mskconnect.NewCustomPlugin(ctx, "example", &mskconnect.CustomPluginArgs{
/// Name:        pulumi.String("debezium-example"),
/// ContentType: pulumi.String("ZIP"),
/// Location: &mskconnect.CustomPluginLocationArgs{
/// S3: &mskconnect.CustomPluginLocationS3Args{
/// BucketArn: example.Arn,
/// FileKey:   exampleBucketObjectv2.Key,
/// },
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.mskconnect.CustomPlugin;
/// import com.pulumi.aws.mskconnect.CustomPluginArgs;
/// import com.pulumi.aws.mskconnect.inputs.CustomPluginLocationArgs;
/// import com.pulumi.aws.mskconnect.inputs.CustomPluginLocationS3Args;
/// import com.pulumi.asset.FileAsset;
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
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("example")
/// .build());
///
/// var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
/// .bucket(example.id())
/// .key("debezium.zip")
/// .source(new FileAsset("debezium.zip"))
/// .build());
///
/// var exampleCustomPlugin = new CustomPlugin("exampleCustomPlugin", CustomPluginArgs.builder()
/// .name("debezium-example")
/// .contentType("ZIP")
/// .location(CustomPluginLocationArgs.builder()
/// .s3(CustomPluginLocationS3Args.builder()
/// .bucketArn(example.arn())
/// .fileKey(exampleBucketObjectv2.key())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example
/// exampleBucketObjectv2:
/// type: aws:s3:BucketObjectv2
/// name: example
/// properties:
/// bucket: ${example.id}
/// key: debezium.zip
/// source:
/// fn::FileAsset: debezium.zip
/// exampleCustomPlugin:
/// type: aws:mskconnect:CustomPlugin
/// name: example
/// properties:
/// name: debezium-example
/// contentType: ZIP
/// location:
/// s3:
/// bucketArn: ${example.arn}
/// fileKey: ${exampleBucketObjectv2.key}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import MSK Connect Custom Plugin using the plugin's <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:mskconnect/customPlugin:CustomPlugin example 'arn:aws:kafkaconnect:eu-central-1:123456789012:custom-plugin/debezium-example/abcdefgh-1234-5678-9abc-defghijklmno-4'
/// ```
class CustomPlugin extends CustomResource {
  /// the Amazon Resource Name (ARN) of the custom plugin.
  late final Output<String> arn;

  /// The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  late final Output<String> contentType;

  /// A summary description of the custom plugin.
  late final Output<String?> description;

  /// an ID of the latest successfully created revision of the custom plugin.
  late final Output<int> latestRevision;

  /// Information about the location of a custom plugin. See <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> Block for details.
  late final Output<CustomPluginLocation> location;

  /// The name of the custom plugin..
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// the state of the custom plugin.
  late final Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  CustomPlugin(
    String name, {
    CustomPluginArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/customPlugin:CustomPlugin',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.contentType = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.latestRevision = Output.createUnknown<int>();
    this.location = Output.createUnknown<CustomPluginLocation>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
