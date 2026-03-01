import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_auto_scaling_configuration_version_args.dart';
import 'default_auto_scaling_configuration_version_state.dart';

/// Manages the default App Runner auto scaling configuration.
/// When creating or updating this resource the existing default auto scaling configuration will be set to non-default automatically.
/// When creating or updating this resource the configuration is automatically assigned as the default to the new services you create in the future. The new default designation doesn't affect the associations that were previously set for existing services.
/// Each account can have only one default auto scaling configuration per Region.
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
/// });
/// const exampleDefaultAutoScalingConfigurationVersion = new aws.apprunner.DefaultAutoScalingConfigurationVersion("example", {autoScalingConfigurationArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.AutoScalingConfigurationVersion("example",
///     auto_scaling_configuration_name="example",
///     max_concurrency=50,
///     max_size=10,
///     min_size=2)
/// example_default_auto_scaling_configuration_version = aws.apprunner.DefaultAutoScalingConfigurationVersion("example", auto_scaling_configuration_arn=example.arn)
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
///     });
///
///     var exampleDefaultAutoScalingConfigurationVersion = new Aws.AppRunner.DefaultAutoScalingConfigurationVersion("example", new()
///     {
///         AutoScalingConfigurationArn = example.Arn,
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
/// 		example, err := apprunner.NewAutoScalingConfigurationVersion(ctx, "example", &apprunner.AutoScalingConfigurationVersionArgs{
/// 			AutoScalingConfigurationName: pulumi.String("example"),
/// 			MaxConcurrency:               pulumi.Int(50),
/// 			MaxSize:                      pulumi.Int(10),
/// 			MinSize:                      pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apprunner.NewDefaultAutoScalingConfigurationVersion(ctx, "example", &apprunner.DefaultAutoScalingConfigurationVersionArgs{
/// 			AutoScalingConfigurationArn: example.Arn,
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
/// import com.pulumi.aws.apprunner.DefaultAutoScalingConfigurationVersion;
/// import com.pulumi.aws.apprunner.DefaultAutoScalingConfigurationVersionArgs;
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
///             .build());
///
///         var exampleDefaultAutoScalingConfigurationVersion = new DefaultAutoScalingConfigurationVersion("exampleDefaultAutoScalingConfigurationVersion", DefaultAutoScalingConfigurationVersionArgs.builder()
///             .autoScalingConfigurationArn(example.arn())
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
///   exampleDefaultAutoScalingConfigurationVersion:
///     type: aws:apprunner:DefaultAutoScalingConfigurationVersion
///     name: example
///     properties:
///       autoScalingConfigurationArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Runner default auto scaling configurations using the current Region. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/defaultAutoScalingConfigurationVersion:DefaultAutoScalingConfigurationVersion example us-west-2
/// ```
class DefaultAutoScalingConfigurationVersion extends pulumi.CustomResource {
  /// The ARN of the App Runner auto scaling configuration that you want to set as the default.
  late final pulumi.Output<String> autoScalingConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DefaultAutoScalingConfigurationVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultAutoScalingConfigurationVersion]. {@macro pulumi_apprunner_default_auto_scaling_configuration_version_default_auto_scaling_configuration_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultAutoScalingConfigurationVersion(
    String name, {
    DefaultAutoScalingConfigurationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/defaultAutoScalingConfigurationVersion:DefaultAutoScalingConfigurationVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoScalingConfigurationArn = registerOutput<String>('autoScalingConfigurationArn');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [DefaultAutoScalingConfigurationVersion] resource's state with the given [name] and [id].
  static DefaultAutoScalingConfigurationVersion get(
    String name,
    pulumi.Input<String> id, {
    DefaultAutoScalingConfigurationVersionState? state,
  }) {
    return DefaultAutoScalingConfigurationVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefaultAutoScalingConfigurationVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/defaultAutoScalingConfigurationVersion:DefaultAutoScalingConfigurationVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoScalingConfigurationArn = registerOutput<String>('autoScalingConfigurationArn');
    this.region = registerOutput<String>('region');
  }
}
