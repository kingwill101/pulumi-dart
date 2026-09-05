import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_evaluation_for_organization_args.dart';
import 'telemetry_evaluation_for_organization_state.dart';
import 'telemetry_evaluation_for_organization_timeouts.dart';

/// Manages an AWS CloudWatch Observability Admin Telemetry Evaluation For Organization.
///
/// Telemetry evaluation for organization begins onboarding the organization and all member accounts to the telemetry config feature, enabling CloudWatch to evaluate and discover the state of telemetry configuration for AWS resources across the organization.
///
/// For more information, see the [AWS CloudWatch Observability Admin documentation](https://docs.aws.amazon.com/cloudwatch/latest/observabilityadmin/what-is-observabilityadmin.html).
///
/// &gt; **NOTE:** This resource can only be used from the management account or a delegated admin account of an AWS Organization. Only one telemetry evaluation for organization can exist per organization. Creating this resource enables the feature; destroying it disables the feature.
///
/// ## Example Usage
///
/// ### Basic Usage (Current Region Only)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEvaluationForOrganization("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluationForOrganization("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluationForOrganization("example");
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
/// 		_, err := observabilityadmin.NewTelemetryEvaluationForOrganization(ctx, "example", nil)
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
/// resource "aws_observabilityadmin_telemetryevaluationfororganization" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganization;
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
///         var example = new TelemetryEvaluationForOrganization("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluationForOrganization
/// ```
///
///
/// ### All Regions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEvaluationForOrganization("example", {allRegions: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluationForOrganization("example", all_regions=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluationForOrganization("example", new()
///     {
///         AllRegions = true,
///     });
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
/// 		_, err := observabilityadmin.NewTelemetryEvaluationForOrganization(ctx, "example", &observabilityadmin.TelemetryEvaluationForOrganizationArgs{
/// 			AllRegions: pulumi.Bool(true),
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
/// resource "aws_observabilityadmin_telemetryevaluationfororganization" "example" {
///   all_regions = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganizationArgs;
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
///         var example = new TelemetryEvaluationForOrganization("example", TelemetryEvaluationForOrganizationArgs.builder()
///             .allRegions(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluationForOrganization
///     properties:
///       allRegions: true
/// ```
///
///
/// ### Specific Regions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEvaluationForOrganization("example", {regions: [
///     "us-east-1",
///     "eu-west-1",
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluationForOrganization("example", regions=[
///     "us-east-1",
///     "eu-west-1",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluationForOrganization("example", new()
///     {
///         Regions = new[]
///         {
///             "us-east-1",
///             "eu-west-1",
///         },
///     });
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
/// 		_, err := observabilityadmin.NewTelemetryEvaluationForOrganization(ctx, "example", &observabilityadmin.TelemetryEvaluationForOrganizationArgs{
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("eu-west-1"),
/// 			},
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
/// resource "aws_observabilityadmin_telemetryevaluationfororganization" "example" {
///   regions = ["us-east-1", "eu-west-1"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganizationArgs;
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
///         var example = new TelemetryEvaluationForOrganization("example", TelemetryEvaluationForOrganizationArgs.builder()
///             .regions(
///                 "us-east-1",
///                 "eu-west-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluationForOrganization
///     properties:
///       regions:
///         - us-east-1
///         - eu-west-1
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
/// Using `pulumi import`, import CloudWatch Observability Admin Telemetry Evaluation For Organization using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/telemetryEvaluationForOrganization:TelemetryEvaluationForOrganization example us-west-2
/// ```
class TelemetryEvaluationForOrganization extends pulumi.CustomResource {
  /// Whether to start telemetry evaluation in all AWS Regions where CloudWatch Observability Admin is available. The current region becomes the home region. Mutually exclusive with `regions`.
  late final pulumi.Output<bool?> allRegions;
  /// Reason for the failure status. Only populated if `status` is `FAILED_START` or `FAILED_STOP`.
  late final pulumi.Output<String> failureReason;
  /// AWS Region designated as the home region for multi-region telemetry evaluation. Only present when multi-region evaluation is active.
  late final pulumi.Output<String> homeRegion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of AWS Regions to include in multi-region telemetry evaluation. The current region is always implicitly included. Mutually exclusive with `allRegions`.
  late final pulumi.Output<List<String>?> regions;
  /// Onboarding status of the telemetry config feature for the organization. Valid values: `NOT_STARTED`, `STARTING`, `FAILED_START`, `RUNNING`, `STOPPING`, `FAILED_STOP`, `STOPPED`.
  late final pulumi.Output<String> status;
  late final pulumi.Output<TelemetryEvaluationForOrganizationTimeouts?> timeouts;

  /// Creates a new [TelemetryEvaluationForOrganization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TelemetryEvaluationForOrganization]. {@macro pulumi_observabilityadmin_telemetry_evaluation_for_organization_telemetry_evaluation_for_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TelemetryEvaluationForOrganization(
    String name, {
    TelemetryEvaluationForOrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryEvaluationForOrganization:TelemetryEvaluationForOrganization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    allRegions = registerOutput<bool?>('allRegions');
    failureReason = registerOutput<String>('failureReason');
    homeRegion = registerOutput<String>('homeRegion');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>?>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    timeouts = registerOutput<TelemetryEvaluationForOrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryEvaluationForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TelemetryEvaluationForOrganization] resource's state with the given [name] and [id].
  static TelemetryEvaluationForOrganization get(
    String name,
    pulumi.Input<String> id, {
    TelemetryEvaluationForOrganizationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TelemetryEvaluationForOrganization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TelemetryEvaluationForOrganization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryEvaluationForOrganization:TelemetryEvaluationForOrganization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allRegions = registerOutput<bool?>('allRegions');
    failureReason = registerOutput<String>('failureReason');
    homeRegion = registerOutput<String>('homeRegion');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>?>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    timeouts = registerOutput<TelemetryEvaluationForOrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryEvaluationForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [TelemetryEvaluationForOrganization] resource.
  TelemetryEvaluationForOrganization.reference(String urn)
    : super(
        'aws:observabilityadmin/telemetryEvaluationForOrganization:TelemetryEvaluationForOrganization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allRegions = registerOutput<bool?>('allRegions');
    failureReason = registerOutput<String>('failureReason');
    homeRegion = registerOutput<String>('homeRegion');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>?>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    timeouts = registerOutput<TelemetryEvaluationForOrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryEvaluationForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
