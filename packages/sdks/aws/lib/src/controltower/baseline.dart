import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_args.dart';
import 'baseline_parameters.dart';
import 'baseline_state.dart';
import 'baseline_timeouts.dart';

/// Resource for managing an AWS Control Tower Baseline.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.controltower.Baseline("example", {
///     parameters: {
///         key: "IdentityCenterEnabledBaselineArn",
///         value: "arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC",
///     },
///     baselineIdentifier: "arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2",
///     baselineVersion: "4.0",
///     targetIdentifier: test.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.controltower.Baseline("example",
///     parameters={
///         "key": "IdentityCenterEnabledBaselineArn",
///         "value": "arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC",
///     },
///     baseline_identifier="arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2",
///     baseline_version="4.0",
///     target_identifier=test["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ControlTower.Baseline("example", new()
///     {
///         Parameters = new Aws.ControlTower.Inputs.BaselineParametersArgs
///         {
///             Key = "IdentityCenterEnabledBaselineArn",
///             Value = "arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC",
///         },
///         BaselineIdentifier = "arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2",
///         BaselineVersion = "4.0",
///         TargetIdentifier = test.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/controltower"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := controltower.NewBaseline(ctx, "example", &controltower.BaselineArgs{
/// 			Parameters: &controltower.BaselineParametersArgs{
/// 				Key:   pulumi.String("IdentityCenterEnabledBaselineArn"),
/// 				Value: pulumi.String("arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC"),
/// 			},
/// 			BaselineIdentifier: pulumi.String("arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2"),
/// 			BaselineVersion:    pulumi.String("4.0"),
/// 			TargetIdentifier:   pulumi.Any(test.Arn),
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
/// resource "aws_controltower_baseline" "example" {
///   parameters = {
///     key   = "IdentityCenterEnabledBaselineArn"
///     value = "arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC"
///   }
///   baseline_identifier = "arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2"
///   baseline_version    = "4.0"
///   target_identifier   = test.arn
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
///         var example = new Baseline("example", BaselineArgs.builder()
///             .parameters(BaselineParametersArgs.builder()
///                 .key("IdentityCenterEnabledBaselineArn")
///                 .value("arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC")
///                 .build())
///             .baselineIdentifier("arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2")
///             .baselineVersion("4.0")
///             .targetIdentifier(test.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:controltower:Baseline
///     properties:
///       parameters:
///         key: IdentityCenterEnabledBaselineArn
///         value: arn:aws:controltower:us-east-1:664418989480:enabledbaseline/XALULM96QHI525UOC
///       baselineIdentifier: arn:aws:controltower:us-east-1::baseline/17BSJV3IGJ2QSGA2
///       baselineVersion: '4.0'
///       targetIdentifier: ${test.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Control Tower Baseline using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:controltower/baseline:Baseline example arn:aws:controltower:us-east-1:012345678912:enabledbaseline/XALULM96QHI525UOC
/// ```
class Baseline extends pulumi.CustomResource {
  /// ARN of the Baseline.
  late final pulumi.Output<String> arn;
  /// The ARN of the baseline to be enabled.
  late final pulumi.Output<String> baselineIdentifier;
  /// The version of the baseline to be enabled.
  late final pulumi.Output<String> baselineVersion;
  late final pulumi.Output<String> operationIdentifier;
  /// A list of key-value objects that specify enablement parameters, where key is a string and value is a document of any type. See Parameter below for details.
  late final pulumi.Output<BaselineParameters?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tags to apply to the landing zone. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the landing zone, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetIdentifier;
  late final pulumi.Output<BaselineTimeouts?> timeouts;

  /// Creates a new [Baseline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Baseline]. {@macro pulumi_controltower_baseline_baseline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Baseline(
    String name, {
    BaselineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:controltower/baseline:Baseline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    baselineIdentifier = registerOutput<String>('baselineIdentifier');
    baselineVersion = registerOutput<String>('baselineVersion');
    operationIdentifier = registerOutput<String>('operationIdentifier');
    parameters = registerOutput<BaselineParameters?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BaselineParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetIdentifier = registerOutput<String>('targetIdentifier');
    timeouts = registerOutput<BaselineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BaselineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Baseline] resource's state with the given [name] and [id].
  static Baseline get(
    String name,
    pulumi.Input<String> id, {
    BaselineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Baseline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Baseline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:controltower/baseline:Baseline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    baselineIdentifier = registerOutput<String>('baselineIdentifier');
    baselineVersion = registerOutput<String>('baselineVersion');
    operationIdentifier = registerOutput<String>('operationIdentifier');
    parameters = registerOutput<BaselineParameters?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BaselineParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetIdentifier = registerOutput<String>('targetIdentifier');
    timeouts = registerOutput<BaselineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BaselineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Baseline] resource.
  Baseline.reference(String urn)
    : super(
        'aws:controltower/baseline:Baseline',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    baselineIdentifier = registerOutput<String>('baselineIdentifier');
    baselineVersion = registerOutput<String>('baselineVersion');
    operationIdentifier = registerOutput<String>('operationIdentifier');
    parameters = registerOutput<BaselineParameters?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BaselineParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetIdentifier = registerOutput<String>('targetIdentifier');
    timeouts = registerOutput<BaselineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BaselineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
