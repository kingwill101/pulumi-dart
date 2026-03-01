import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scaling_configuration_version_args.dart';
import 'auto_scaling_configuration_version_state.dart';

/// Manages an App Runner AutoScaling Configuration Version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.AutoScalingConfigurationVersion("example", {
///     autoScalingConfigurationName: "example",
///     maxConcurrency: 50,
///     maxSize: 10,
///     minSize: 2,
///     tags: {
///         Name: "example-apprunner-autoscaling",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.AutoScalingConfigurationVersion("example",
///     auto_scaling_configuration_name="example",
///     max_concurrency=50,
///     max_size=10,
///     min_size=2,
///     tags={
///         "Name": "example-apprunner-autoscaling",
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
///     var example = new Aws.AppRunner.AutoScalingConfigurationVersion("example", new()
///     {
///         AutoScalingConfigurationName = "example",
///         MaxConcurrency = 50,
///         MaxSize = 10,
///         MinSize = 2,
///         Tags =
///         {
///             { "Name", "example-apprunner-autoscaling" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apprunner.NewAutoScalingConfigurationVersion(ctx, "example", &apprunner.AutoScalingConfigurationVersionArgs{
/// 			AutoScalingConfigurationName: pulumi.String("example"),
/// 			MaxConcurrency:               pulumi.Int(50),
/// 			MaxSize:                      pulumi.Int(10),
/// 			MinSize:                      pulumi.Int(2),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-apprunner-autoscaling"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AutoScalingConfigurationVersion("example", AutoScalingConfigurationVersionArgs.builder()
///             .autoScalingConfigurationName("example")
///             .maxConcurrency(50)
///             .maxSize(10)
///             .minSize(2)
///             .tags(Map.of("Name", "example-apprunner-autoscaling"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:AutoScalingConfigurationVersion
///     properties:
///       autoScalingConfigurationName: example
///       maxConcurrency: 50
///       maxSize: 10
///       minSize: 2
///       tags:
///         Name: example-apprunner-autoscaling
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner auto scaling configuration version.
///
///
/// Using `pulumi import`, import App Runner AutoScaling Configuration Versions using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/autoScalingConfigurationVersion:AutoScalingConfigurationVersion example "arn:aws:apprunner:us-east-1:1234567890:autoscalingconfiguration/example/1/69bdfe0115224b0db49398b7beb68e0f
/// ```
class AutoScalingConfigurationVersion extends pulumi.CustomResource {
  /// ARN of this auto scaling configuration version.
  late final pulumi.Output<String> arn;
  /// Name of the auto scaling configuration.
  late final pulumi.Output<String> autoScalingConfigurationName;
  /// The revision of this auto scaling configuration.
  late final pulumi.Output<int> autoScalingConfigurationRevision;
  late final pulumi.Output<bool> hasAssociatedService;
  late final pulumi.Output<bool> isDefault;
  /// Whether the auto scaling configuration has the highest `auto_scaling_configuration_revision` among all configurations that share the same `auto_scaling_configuration_name`.
  late final pulumi.Output<bool> latest;
  /// Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  late final pulumi.Output<int?> maxConcurrency;
  /// Maximal number of instances that App Runner provisions for your service.
  late final pulumi.Output<int?> maxSize;
  /// Minimal number of instances that App Runner provisions for your service.
  late final pulumi.Output<int?> minSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current state of the auto scaling configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AutoScalingConfigurationVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoScalingConfigurationVersion]. {@macro pulumi_apprunner_auto_scaling_configuration_version_auto_scaling_configuration_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoScalingConfigurationVersion(
    String name, {
    AutoScalingConfigurationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/autoScalingConfigurationVersion:AutoScalingConfigurationVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingConfigurationName = registerOutput<String>('autoScalingConfigurationName');
    this.autoScalingConfigurationRevision = registerOutput<int>('autoScalingConfigurationRevision');
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

  /// Gets an existing [AutoScalingConfigurationVersion] resource's state with the given [name] and [id].
  static AutoScalingConfigurationVersion get(
    String name,
    pulumi.Input<String> id, {
    AutoScalingConfigurationVersionState? state,
  }) {
    return AutoScalingConfigurationVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutoScalingConfigurationVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/autoScalingConfigurationVersion:AutoScalingConfigurationVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingConfigurationName = registerOutput<String>('autoScalingConfigurationName');
    this.autoScalingConfigurationRevision = registerOutput<int>('autoScalingConfigurationRevision');
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
