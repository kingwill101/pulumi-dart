import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_evaluation_args.dart';
import 'telemetry_evaluation_state.dart';
import 'telemetry_evaluation_timeouts.dart';

/// Manages an AWS CloudWatch Observability Admin Telemetry Evaluation.
///
/// Telemetry evaluation begins onboarding the caller AWS account to the telemetry config feature, enabling CloudWatch to evaluate and discover the state of telemetry configuration for your AWS resources.
///
/// For more information, see the [AWS CloudWatch Observability Admin documentation](https://docs.aws.amazon.com/cloudwatch/latest/observabilityadmin/what-is-observabilityadmin.html).
///
/// &gt; **NOTE:** Only one telemetry evaluation can exist per account per region. Creating this resource enables the feature; destroying it disables the feature.
///
/// &gt; **NOTE:** Do not use this resource in an account where telemetry evaluation is centrally managed by an AWS Organization via `aws.observabilityadmin.TelemetryEvaluationForOrganization`. In that case, the per-account `StartTelemetryEvaluation` API silently returns success without changing per-account state, and `GetTelemetryEvaluationStatus` reports the org-derived `RUNNING` status — so `pulumi up` appears to succeed. However, the matching `StopTelemetryEvaluation` call is rejected with `ValidationException: Telemetry evaluation is managed by the caller's organization`, so a later `terraform destroy` will fail and leave the resource in state. Use the organization variant from the management account instead.
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
/// const example = new aws.observabilityadmin.TelemetryEvaluation("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluation("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluation("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := observabilityadmin.NewTelemetryEvaluation(ctx, "example", nil)
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
/// resource "aws_observabilityadmin_telemetryevaluation" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluation;
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
///         var example = new TelemetryEvaluation("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluation
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch Observability Admin Telemetry Evaluation using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/telemetryEvaluation:TelemetryEvaluation example us-west-2
/// ```
class TelemetryEvaluation extends pulumi.CustomResource {
  /// Reason for the failure status. Only populated if `status` is `FAILED_START` or `FAILED_STOP`.
  late final pulumi.Output<String> failureReason;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Onboarding status of the telemetry config feature. Valid values: `NOT_STARTED`, `STARTING`, `FAILED_START`, `RUNNING`, `STOPPING`, `FAILED_STOP`, `STOPPED`.
  late final pulumi.Output<String> status;
  late final pulumi.Output<TelemetryEvaluationTimeouts?> timeouts;

  /// Creates a new [TelemetryEvaluation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TelemetryEvaluation]. {@macro pulumi_observabilityadmin_telemetry_evaluation_telemetry_evaluation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TelemetryEvaluation(
    String name, {
    TelemetryEvaluationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryEvaluation:TelemetryEvaluation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    failureReason = registerOutput<String>('failureReason');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<TelemetryEvaluationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryEvaluationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TelemetryEvaluation] resource's state with the given [name] and [id].
  static TelemetryEvaluation get(
    String name,
    pulumi.Input<String> id, {
    TelemetryEvaluationState? state,
  }) {
    return TelemetryEvaluation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TelemetryEvaluation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryEvaluation:TelemetryEvaluation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    failureReason = registerOutput<String>('failureReason');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<TelemetryEvaluationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryEvaluationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
