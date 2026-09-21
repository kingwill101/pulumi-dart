import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_args.dart';
import 'microvm_idle_policy.dart';
import 'microvm_logging.dart';
import 'microvm_state.dart';
import 'microvm_timeouts.dart';

/// Manages an AWS Lambda MicroVMs MicroVM. Use this resource to run a MicroVM from a MicroVM image, which provisions a dedicated HTTPS endpoint and starts your application from the image snapshot.
///
/// &gt; MicroVMs are immutable. Because the service has no update operation, changing any argument terminates the MicroVM and runs a new one.
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
/// const example = new aws.lambdamicrovms.Microvm("example", {imageArn: exampleAwsLambdamicrovmsImage.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambdamicrovms.Microvm("example", image_arn=example_aws_lambdamicrovms_image["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LambdaMicroVMs.Microvm("example", new()
///     {
///         ImageArn = exampleAwsLambdamicrovmsImage.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdamicrovms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambdamicrovms.NewMicrovm(ctx, "example", &lambdamicrovms.MicrovmArgs{
/// 			ImageArn: pulumi.Any(exampleAwsLambdamicrovmsImage.Arn),
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
/// resource "aws_lambdamicrovms_microvm" "example" {
///   image_arn = exampleAwsLambdamicrovmsImage.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdamicrovms.Microvm;
/// import com.pulumi.aws.lambdamicrovms.MicrovmArgs;
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
///         var example = new Microvm("example", MicrovmArgs.builder()
///             .imageArn(exampleAwsLambdamicrovmsImage.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambdamicrovms:Microvm
///     properties:
///       imageArn: ${exampleAwsLambdamicrovmsImage.arn}
/// ```
///
///
/// ### With Idle Policy and Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambdamicrovms.Microvm("example", {
///     idlePolicy: {
///         autoResumeEnabled: true,
///         maxIdleDurationSeconds: 900,
///         suspendedDurationSeconds: 1800,
///     },
///     logging: {
///         cloudwatch: {
///             logGroup: exampleAwsCloudwatchLogGroup.name,
///         },
///     },
///     imageArn: exampleAwsLambdamicrovmsImage.arn,
///     executionRoleArn: exampleAwsIamRole.arn,
///     maximumDurationInSeconds: 14400,
///     egressNetworkConnectors: ["arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:INTERNET_EGRESS"],
///     ingressNetworkConnectors: ["arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:ALL_INGRESS"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambdamicrovms.Microvm("example",
///     idle_policy={
///         "auto_resume_enabled": True,
///         "max_idle_duration_seconds": 900,
///         "suspended_duration_seconds": 1800,
///     },
///     logging={
///         "cloudwatch": {
///             "log_group": example_aws_cloudwatch_log_group["name"],
///         },
///     },
///     image_arn=example_aws_lambdamicrovms_image["arn"],
///     execution_role_arn=example_aws_iam_role["arn"],
///     maximum_duration_in_seconds=14400,
///     egress_network_connectors=["arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:INTERNET_EGRESS"],
///     ingress_network_connectors=["arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:ALL_INGRESS"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LambdaMicroVMs.Microvm("example", new()
///     {
///         IdlePolicy = new Aws.LambdaMicroVMs.Inputs.MicrovmIdlePolicyArgs
///         {
///             AutoResumeEnabled = true,
///             MaxIdleDurationSeconds = 900,
///             SuspendedDurationSeconds = 1800,
///         },
///         Logging = new Aws.LambdaMicroVMs.Inputs.MicrovmLoggingArgs
///         {
///             Cloudwatch = new Aws.LambdaMicroVMs.Inputs.MicrovmLoggingCloudwatchArgs
///             {
///                 LogGroup = exampleAwsCloudwatchLogGroup.Name,
///             },
///         },
///         ImageArn = exampleAwsLambdamicrovmsImage.Arn,
///         ExecutionRoleArn = exampleAwsIamRole.Arn,
///         MaximumDurationInSeconds = 14400,
///         EgressNetworkConnectors = new[]
///         {
///             "arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:INTERNET_EGRESS",
///         },
///         IngressNetworkConnectors = new[]
///         {
///             "arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:ALL_INGRESS",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdamicrovms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambdamicrovms.NewMicrovm(ctx, "example", &lambdamicrovms.MicrovmArgs{
/// 			IdlePolicy: &lambdamicrovms.MicrovmIdlePolicyArgs{
/// 				AutoResumeEnabled:        pulumi.Bool(true),
/// 				MaxIdleDurationSeconds:   pulumi.Int(900),
/// 				SuspendedDurationSeconds: pulumi.Int(1800),
/// 			},
/// 			Logging: &lambdamicrovms.MicrovmLoggingArgs{
/// 				Cloudwatch: &lambdamicrovms.MicrovmLoggingCloudwatchArgs{
/// 					LogGroup: pulumi.Any(exampleAwsCloudwatchLogGroup.Name),
/// 				},
/// 			},
/// 			ImageArn:                 pulumi.Any(exampleAwsLambdamicrovmsImage.Arn),
/// 			ExecutionRoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			MaximumDurationInSeconds: pulumi.Int(14400),
/// 			EgressNetworkConnectors: pulumi.StringArray{
/// 				pulumi.String("arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:INTERNET_EGRESS"),
/// 			},
/// 			IngressNetworkConnectors: pulumi.StringArray{
/// 				pulumi.String("arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:ALL_INGRESS"),
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
/// resource "aws_lambdamicrovms_microvm" "example" {
///   idle_policy = {
///     auto_resume_enabled        = true
///     max_idle_duration_seconds  = 900
///     suspended_duration_seconds = 1800
///   }
///   logging = {
///     cloudwatch = {
///       log_group = exampleAwsCloudwatchLogGroup.name
///     }
///   }
///   image_arn                   = exampleAwsLambdamicrovmsImage.arn
///   execution_role_arn          = exampleAwsIamRole.arn
///   maximum_duration_in_seconds = 14400
///   egress_network_connectors   = ["arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:INTERNET_EGRESS"]
///   ingress_network_connectors  = ["arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:ALL_INGRESS"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdamicrovms.Microvm;
/// import com.pulumi.aws.lambdamicrovms.MicrovmArgs;
/// import com.pulumi.aws.lambdamicrovms.inputs.MicrovmIdlePolicyArgs;
/// import com.pulumi.aws.lambdamicrovms.inputs.MicrovmLoggingArgs;
/// import com.pulumi.aws.lambdamicrovms.inputs.MicrovmLoggingCloudwatchArgs;
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
///         var example = new Microvm("example", MicrovmArgs.builder()
///             .idlePolicy(MicrovmIdlePolicyArgs.builder()
///                 .autoResumeEnabled(true)
///                 .maxIdleDurationSeconds(900)
///                 .suspendedDurationSeconds(1800)
///                 .build())
///             .logging(MicrovmLoggingArgs.builder()
///                 .cloudwatch(MicrovmLoggingCloudwatchArgs.builder()
///                     .logGroup(exampleAwsCloudwatchLogGroup.name())
///                     .build())
///                 .build())
///             .imageArn(exampleAwsLambdamicrovmsImage.arn())
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .maximumDurationInSeconds(14400)
///             .egressNetworkConnectors("arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:INTERNET_EGRESS")
///             .ingressNetworkConnectors("arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:ALL_INGRESS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambdamicrovms:Microvm
///     properties:
///       idlePolicy:
///         autoResumeEnabled: true
///         maxIdleDurationSeconds: 900
///         suspendedDurationSeconds: 1800
///       logging:
///         cloudwatch:
///           logGroup: ${exampleAwsCloudwatchLogGroup.name}
///       imageArn: ${exampleAwsLambdamicrovmsImage.arn}
///       executionRoleArn: ${exampleAwsIamRole.arn}
///       maximumDurationInSeconds: 14400
///       egressNetworkConnectors:
///         - arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:INTERNET_EGRESS
///       ingressNetworkConnectors:
///         - arn:aws:lambda:us-east-1:aws:network-connector:aws-network-connector:ALL_INGRESS
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `microvmId` (String) Unique identifier of the MicroVM.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Lambda MicroVMs MicroVM using the `microvmId`. For example:
///
/// ```sh
/// $ pulumi import aws:lambdamicrovms/microvm:Microvm example mvm-01234567-abcd-ef01-2345-6789abcdef01
/// ```
class Microvm extends pulumi.CustomResource {
  /// List of egress network connector ARNs for outbound connectivity. Changing this value creates a new resource.
  late final pulumi.Output<List<String>> egressNetworkConnectors;
  /// HTTPS endpoint URL for communicating with the MicroVM.
  late final pulumi.Output<String> endpoint;
  /// ARN of the IAM role assumed by the MicroVM during execution. Changing this value creates a new resource.
  late final pulumi.Output<String?> executionRoleArn;
  /// Configuration controlling automatic suspend and resume behavior. See below. Changing this value creates a new resource.
  late final pulumi.Output<MicrovmIdlePolicy?> idlePolicy;
  /// ARN of the MicroVM image to run. Changing this value creates a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> imageArn;
  /// Version of the MicroVM image to run. Defaults to the latest active version. Changing this value creates a new resource.
  late final pulumi.Output<String> imageVersion;
  /// List of ingress network connector ARNs for inbound connectivity. Changing this value creates a new resource.
  late final pulumi.Output<List<String>> ingressNetworkConnectors;
  /// Logging configuration for the MicroVM. See below. Changing this value creates a new resource.
  late final pulumi.Output<MicrovmLogging?> logging;
  /// Maximum duration in seconds that the MicroVM can exist before the platform terminates it. Valid range: `1`–`28800` (8 hours). Changing this value creates a new resource.
  late final pulumi.Output<int> maximumDurationInSeconds;
  /// Unique identifier of the MicroVM.
  late final pulumi.Output<String> microvmId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// String payload (maximum 16 KB) delivered to the `/run` lifecycle hook when the MicroVM starts. Changing this value creates a new resource.
  late final pulumi.Output<String?> runHookPayload;
  /// Timestamp when the MicroVM first started, in RFC 3339 format.
  late final pulumi.Output<String> startedAt;
  /// Current lifecycle state of the MicroVM (e.g., `RUNNING`).
  late final pulumi.Output<String> state;
  late final pulumi.Output<MicrovmTimeouts?> timeouts;

  /// Creates a new [Microvm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Microvm]. {@macro pulumi_lambdamicrovms_microvm_microvm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Microvm(
    String name, {
    MicrovmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdamicrovms/microvm:Microvm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    egressNetworkConnectors = registerOutput<List<String>>('egressNetworkConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    endpoint = registerOutput<String>('endpoint');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    idlePolicy = registerOutput<MicrovmIdlePolicy?>('idlePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmIdlePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageArn = registerOutput<String>('imageArn');
    imageVersion = registerOutput<String>('imageVersion');
    ingressNetworkConnectors = registerOutput<List<String>>('ingressNetworkConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    logging = registerOutput<MicrovmLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumDurationInSeconds = registerOutput<int>('maximumDurationInSeconds');
    microvmId = registerOutput<String>('microvmId');
    region = registerOutput<String>('region');
    runHookPayload = registerOutput<String?>('runHookPayload');
    startedAt = registerOutput<String>('startedAt');
    state = registerOutput<String>('state');
    timeouts = registerOutput<MicrovmTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Microvm] resource's state with the given [name] and [id].
  static Microvm get(
    String name,
    pulumi.Input<String> id, {
    MicrovmState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Microvm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Microvm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdamicrovms/microvm:Microvm',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    egressNetworkConnectors = registerOutput<List<String>>('egressNetworkConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    endpoint = registerOutput<String>('endpoint');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    idlePolicy = registerOutput<MicrovmIdlePolicy?>('idlePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmIdlePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageArn = registerOutput<String>('imageArn');
    imageVersion = registerOutput<String>('imageVersion');
    ingressNetworkConnectors = registerOutput<List<String>>('ingressNetworkConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    logging = registerOutput<MicrovmLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumDurationInSeconds = registerOutput<int>('maximumDurationInSeconds');
    microvmId = registerOutput<String>('microvmId');
    region = registerOutput<String>('region');
    runHookPayload = registerOutput<String?>('runHookPayload');
    startedAt = registerOutput<String>('startedAt');
    this.state = registerOutput<String>('state');
    timeouts = registerOutput<MicrovmTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Microvm] resource.
  Microvm.reference(String urn)
    : super(
        'aws:lambdamicrovms/microvm:Microvm',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    egressNetworkConnectors = registerOutput<List<String>>('egressNetworkConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    endpoint = registerOutput<String>('endpoint');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    idlePolicy = registerOutput<MicrovmIdlePolicy?>('idlePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmIdlePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageArn = registerOutput<String>('imageArn');
    imageVersion = registerOutput<String>('imageVersion');
    ingressNetworkConnectors = registerOutput<List<String>>('ingressNetworkConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    logging = registerOutput<MicrovmLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumDurationInSeconds = registerOutput<int>('maximumDurationInSeconds');
    microvmId = registerOutput<String>('microvmId');
    region = registerOutput<String>('region');
    runHookPayload = registerOutput<String?>('runHookPayload');
    startedAt = registerOutput<String>('startedAt');
    state = registerOutput<String>('state');
    timeouts = registerOutput<MicrovmTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
