import 'package:pulumi/pulumi.dart';
import 'retention_configuration_args.dart';

/// Provides a resource to manage the AWS Config retention configuration.
/// The retention configuration defines the number of days that AWS Config stores historical information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Cfg.RetentionConfiguration("example", new()
/// {
/// RetentionPeriodInDays = 90,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cfg.NewRetentionConfiguration(ctx, "example", &cfg.RetentionConfigurationArgs{
/// RetentionPeriodInDays: pulumi.Int(90),
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
/// import com.pulumi.aws.cfg.RetentionConfiguration;
/// import com.pulumi.aws.cfg.RetentionConfigurationArgs;
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
/// var example = new RetentionConfiguration("example", RetentionConfigurationArgs.builder()
/// .retentionPeriodInDays(90)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cfg:RetentionConfiguration
/// properties:
/// retentionPeriodInDays: 90
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the AWS Config retention configuration using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/retentionConfiguration:RetentionConfiguration example default
/// ```
class RetentionConfiguration extends CustomResource {
  /// The name of the retention configuration object. The object is always named **default**.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of days AWS Config stores historical information.
  late final Output<int> retentionPeriodInDays;

  RetentionConfiguration(
    String name, {
    RetentionConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/retentionConfiguration:RetentionConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.retentionPeriodInDays = Output.createUnknown<int>();
  }
}
