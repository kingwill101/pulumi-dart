import 'package:pulumi/pulumi.dart';
import '../baseline_parameters/baseline_parameters.dart';
import '../baseline_timeouts/baseline_timeouts.dart';
import 'baseline_args.dart';

/// Resource for managing an AWS Control Tower Baseline.
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
/// const example = new aws.controltower.Baseline("example", {
/// baselineIdentifier: "arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2",
/// baselineVersion: "4.0",
/// targetIdentifier: test.arn,
/// parameters: {
/// key: "IdentityCenterEnabledBaselineArn",
/// value: "arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.controltower.Baseline("example",
/// baseline_identifier="arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2",
/// baseline_version="4.0",
/// target_identifier=test["arn"],
/// parameters={
/// "key": "IdentityCenterEnabledBaselineArn",
/// "value": "arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC",
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
/// var example = new Aws.ControlTower.Baseline("example", new()
/// {
/// BaselineIdentifier = "arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2",
/// BaselineVersion = "4.0",
/// TargetIdentifier = test.Arn,
/// Parameters = new Aws.ControlTower.Inputs.BaselineParametersArgs
/// {
/// Key = "IdentityCenterEnabledBaselineArn",
/// Value = "arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/controltower"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := controltower.NewBaseline(ctx, "example", &controltower.BaselineArgs{
/// BaselineIdentifier: pulumi.String("arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2"),
/// BaselineVersion:    pulumi.String("4.0"),
/// TargetIdentifier:   pulumi.Any(test.Arn),
/// Parameters: &controltower.BaselineParametersArgs{
/// Key:   pulumi.String("IdentityCenterEnabledBaselineArn"),
/// Value: pulumi.String("arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC"),
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
/// import com.pulumi.aws.controltower.Baseline;
/// import com.pulumi.aws.controltower.BaselineArgs;
/// import com.pulumi.aws.controltower.inputs.BaselineParametersArgs;
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
/// var example = new Baseline("example", BaselineArgs.builder()
/// .baselineIdentifier("arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2")
/// .baselineVersion("4.0")
/// .targetIdentifier(test.arn())
/// .parameters(BaselineParametersArgs.builder()
/// .key("IdentityCenterEnabledBaselineArn")
/// .value("arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:controltower:Baseline
/// properties:
/// baselineIdentifier: arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2
/// baselineVersion: '4.0'
/// targetIdentifier: ${test.arn}
/// parameters:
/// key: IdentityCenterEnabledBaselineArn
/// value: arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Control Tower Baseline using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:controltower/baseline:Baseline example arn:aws:controltower:us-east-1:012345678912:enabledbaseline/XALULM96QHI525UOC
/// ```
class Baseline extends CustomResource {
  /// ARN of the Baseline.
  late final Output<String> arn;

  /// The ARN of the baseline to be enabled.
  late final Output<String> baselineIdentifier;

  /// The version of the baseline to be enabled.
  late final Output<String> baselineVersion;
  late final Output<String> operationIdentifier;

  /// A list of key-value objects that specify enablement parameters, where key is a string and value is a document of any type. See Parameter below for details.
  late final Output<BaselineParameters?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the landing zone. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the landing zone, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  ///
  /// The following arguments are optional:
  late final Output<String> targetIdentifier;
  late final Output<BaselineTimeouts?> timeouts;

  Baseline(
    String name, {
    BaselineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:controltower/baseline:Baseline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.baselineIdentifier = Output.createUnknown<String>();
    this.baselineVersion = Output.createUnknown<String>();
    this.operationIdentifier = Output.createUnknown<String>();
    this.parameters = Output.createUnknown<BaselineParameters?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetIdentifier = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<BaselineTimeouts?>();
  }
}
