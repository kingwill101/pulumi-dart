import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_configuration_args.dart';
import 'retention_configuration_state.dart';

/// Provides a resource to manage the AWS Config retention configuration.
/// The retention configuration defines the number of days that AWS Config stores historical information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cfg.RetentionConfiguration("example", {retentionPeriodInDays: 90});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cfg.RetentionConfiguration("example", retention_period_in_days=90)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cfg.RetentionConfiguration("example", new()
///     {
///         RetentionPeriodInDays = 90,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewRetentionConfiguration(ctx, "example", &cfg.RetentionConfigurationArgs{
/// 			RetentionPeriodInDays: pulumi.Int(90),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cfg_retentionconfiguration" "example" {
///   retention_period_in_days = 90
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cfg.RetentionConfiguration;
/// import com.pulumi.aws.cfg.RetentionConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new RetentionConfiguration("example", RetentionConfigurationArgs.builder()
///             .retentionPeriodInDays(90)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cfg:RetentionConfiguration
///     properties:
///       retentionPeriodInDays: 90
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Config Retention Configurations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/retentionConfiguration:RetentionConfiguration example default
/// ```
class RetentionConfiguration extends pulumi.CustomResource {
  /// The name of the retention configuration object. The object is always named **default**.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The number of days AWS Config stores historical information.
  late final pulumi.Output<int> retentionPeriodInDays;

  /// Creates a new [RetentionConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RetentionConfiguration]. {@macro pulumi_cfg_retention_configuration_retention_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RetentionConfiguration(
    String name, {
    RetentionConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/retentionConfiguration:RetentionConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
  }

  /// Gets an existing [RetentionConfiguration] resource's state with the given [name] and [id].
  static RetentionConfiguration get(
    String name,
    pulumi.Input<String> id, {
    RetentionConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RetentionConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RetentionConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/retentionConfiguration:RetentionConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
  }

  /// Creates a typed reference to an existing [RetentionConfiguration] resource.
  RetentionConfiguration.reference(String urn)
    : super(
        'aws:cfg/retentionConfiguration:RetentionConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
  }
}
