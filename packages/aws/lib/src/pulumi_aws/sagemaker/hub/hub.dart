import 'package:pulumi/pulumi.dart';
import '../hub_s3_storage_config/hub_s3_storage_config.dart';
import 'hub_args.dart';

/// Provides a SageMaker AI Hub resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Hub("example", {
/// hubName: "example",
/// hubDescription: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Hub("example",
/// hub_name="example",
/// hub_description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.Hub("example", new()
/// {
/// HubName = "example",
/// HubDescription = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewHub(ctx, "example", &sagemaker.HubArgs{
/// HubName:        pulumi.String("example"),
/// HubDescription: pulumi.String("example"),
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
/// import com.pulumi.aws.sagemaker.Hub;
/// import com.pulumi.aws.sagemaker.HubArgs;
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
/// var example = new Hub("example", HubArgs.builder()
/// .hubName("example")
/// .hubDescription("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:Hub
/// properties:
/// hubName: example
/// hubDescription: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Hubs using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/hub:Hub test_hub my-code-repo
/// ```
class Hub extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Hub.
  late final Output<String> arn;

  /// A description of the hub.
  late final Output<String> hubDescription;

  /// The display name of the hub.
  late final Output<String?> hubDisplayName;

  /// The name of the hub.
  late final Output<String> hubName;

  /// The searchable keywords for the hub.
  late final Output<List<String>?> hubSearchKeywords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  late final Output<HubS3StorageConfig?> s3StorageConfig;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Hub(
    String name, {
    HubArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/hub:Hub',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.hubDescription = Output.createUnknown<String>();
    this.hubDisplayName = Output.createUnknown<String?>();
    this.hubName = Output.createUnknown<String>();
    this.hubSearchKeywords = Output.createUnknown<List<String>?>();
    this.region = Output.createUnknown<String>();
    this.s3StorageConfig = Output.createUnknown<HubS3StorageConfig?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
