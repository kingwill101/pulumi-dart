import 'package:pulumi/pulumi.dart';
import 'auto_scaling_configuration_version_args.dart';

/// Manages an App Runner AutoScaling Configuration Version.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.AutoScalingConfigurationVersion("example", {
/// autoScalingConfigurationName: "example",
/// maxConcurrency: 50,
/// maxSize: 10,
/// minSize: 2,
/// tags: {
/// Name: "example-apprunner-autoscaling",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.AutoScalingConfigurationVersion("example",
/// auto_scaling_configuration_name="example",
/// max_concurrency=50,
/// max_size=10,
/// min_size=2,
/// tags={
/// "Name": "example-apprunner-autoscaling",
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
/// var example = new Aws.AppRunner.AutoScalingConfigurationVersion("example", new()
/// {
/// AutoScalingConfigurationName = "example",
/// MaxConcurrency = 50,
/// MaxSize = 10,
/// MinSize = 2,
/// Tags =
/// {
/// { "Name", "example-apprunner-autoscaling" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apprunner.NewAutoScalingConfigurationVersion(ctx, "example", &apprunner.AutoScalingConfigurationVersionArgs{
/// AutoScalingConfigurationName: pulumi.String("example"),
/// MaxConcurrency:               pulumi.Int(50),
/// MaxSize:                      pulumi.Int(10),
/// MinSize:                      pulumi.Int(2),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-apprunner-autoscaling"),
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
/// import com.pulumi.aws.apprunner.AutoScalingConfigurationVersion;
/// import com.pulumi.aws.apprunner.AutoScalingConfigurationVersionArgs;
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
/// var example = new AutoScalingConfigurationVersion("example", AutoScalingConfigurationVersionArgs.builder()
/// .autoScalingConfigurationName("example")
/// .maxConcurrency(50)
/// .maxSize(10)
/// .minSize(2)
/// .tags(Map.of("Name", "example-apprunner-autoscaling"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apprunner:AutoScalingConfigurationVersion
/// properties:
/// autoScalingConfigurationName: example
/// maxConcurrency: 50
/// maxSize: 10
/// minSize: 2
/// tags:
/// Name: example-apprunner-autoscaling
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the App Runner auto scaling configuration version.
///
///
/// Using `pulumi import`, import App Runner AutoScaling Configuration Versions using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/autoScalingConfigurationVersion:AutoScalingConfigurationVersion example "arn:aws:apprunner:us-east-1:1234567890:autoscalingconfiguration/example/1/69bdfe0115224b0db49398b7beb68e0f
/// ```
class AutoScalingConfigurationVersion extends CustomResource {
  /// ARN of this auto scaling configuration version.
  late final Output<String> arn;

  /// Name of the auto scaling configuration.
  late final Output<String> autoScalingConfigurationName;

  /// The revision of this auto scaling configuration.
  late final Output<int> autoScalingConfigurationRevision;
  late final Output<bool> hasAssociatedService;
  late final Output<bool> isDefault;

  /// Whether the auto scaling configuration has the highest <span pulumi-lang-nodejs="`autoScalingConfigurationRevision`" pulumi-lang-dotnet="`AutoScalingConfigurationRevision`" pulumi-lang-go="`autoScalingConfigurationRevision`" pulumi-lang-python="`auto_scaling_configuration_revision`" pulumi-lang-yaml="`autoScalingConfigurationRevision`" pulumi-lang-java="`autoScalingConfigurationRevision`">`auto_scaling_configuration_revision`</span> among all configurations that share the same <span pulumi-lang-nodejs="`autoScalingConfigurationName`" pulumi-lang-dotnet="`AutoScalingConfigurationName`" pulumi-lang-go="`autoScalingConfigurationName`" pulumi-lang-python="`auto_scaling_configuration_name`" pulumi-lang-yaml="`autoScalingConfigurationName`" pulumi-lang-java="`autoScalingConfigurationName`">`auto_scaling_configuration_name`</span>.
  late final Output<bool> latest;

  /// Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  late final Output<int?> maxConcurrency;

  /// Maximal number of instances that App Runner provisions for your service.
  late final Output<int?> maxSize;

  /// Minimal number of instances that App Runner provisions for your service.
  late final Output<int?> minSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current state of the auto scaling configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  AutoScalingConfigurationVersion(
    String name, {
    AutoScalingConfigurationVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/autoScalingConfigurationVersion:AutoScalingConfigurationVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingConfigurationName =
        registerOutput<String>('autoScalingConfigurationName');
    this.autoScalingConfigurationRevision =
        registerOutput<int>('autoScalingConfigurationRevision');
    this.hasAssociatedService = registerOutput<bool>('hasAssociatedService');
    this.isDefault = registerOutput<bool>('isDefault');
    this.latest = registerOutput<bool>('latest');
    this.maxConcurrency = registerOutput<int?>('maxConcurrency');
    this.maxSize = registerOutput<int?>('maxSize');
    this.minSize = registerOutput<int?>('minSize');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
