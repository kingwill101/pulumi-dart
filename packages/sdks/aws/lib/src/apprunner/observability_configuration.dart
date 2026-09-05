import 'package:pulumi/pulumi.dart' as pulumi;
import 'observability_configuration_args.dart';
import 'observability_configuration_state.dart';
import 'observability_configuration_trace_configuration.dart';

/// Manages an App Runner Observability Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.ObservabilityConfiguration("example", {
///     traceConfiguration: {
///         vendor: "AWSXRAY",
///     },
///     observabilityConfigurationName: "example",
///     tags: {
///         Name: "example-apprunner-observability-configuration",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.ObservabilityConfiguration("example",
///     trace_configuration={
///         "vendor": "AWSXRAY",
///     },
///     observability_configuration_name="example",
///     tags={
///         "Name": "example-apprunner-observability-configuration",
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
///     var example = new Aws.AppRunner.ObservabilityConfiguration("example", new()
///     {
///         TraceConfiguration = new Aws.AppRunner.Inputs.ObservabilityConfigurationTraceConfigurationArgs
///         {
///             Vendor = "AWSXRAY",
///         },
///         ObservabilityConfigurationName = "example",
///         Tags =
///         {
///             { "Name", "example-apprunner-observability-configuration" },
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
/// 		_, err := apprunner.NewObservabilityConfiguration(ctx, "example", &apprunner.ObservabilityConfigurationArgs{
/// 			TraceConfiguration: &apprunner.ObservabilityConfigurationTraceConfigurationArgs{
/// 				Vendor: pulumi.String("AWSXRAY"),
/// 			},
/// 			ObservabilityConfigurationName: pulumi.String("example"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-apprunner-observability-configuration"),
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
/// resource "aws_apprunner_observabilityconfiguration" "example" {
///   trace_configuration = {
///     vendor = "AWSXRAY"
///   }
///   observability_configuration_name = "example"
///   tags = {
///     "Name" = "example-apprunner-observability-configuration"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apprunner.ObservabilityConfiguration;
/// import com.pulumi.aws.apprunner.ObservabilityConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ObservabilityConfigurationTraceConfigurationArgs;
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
///         var example = new ObservabilityConfiguration("example", ObservabilityConfigurationArgs.builder()
///             .traceConfiguration(ObservabilityConfigurationTraceConfigurationArgs.builder()
///                 .vendor("AWSXRAY")
///                 .build())
///             .observabilityConfigurationName("example")
///             .tags(Map.of("Name", "example-apprunner-observability-configuration"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:ObservabilityConfiguration
///     properties:
///       traceConfiguration:
///         vendor: AWSXRAY
///       observabilityConfigurationName: example
///       tags:
///         Name: example-apprunner-observability-configuration
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the App Runner observability configuration.
///
///
/// Using `pulumi import`, import App Runner Observability Configuration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/observabilityConfiguration:ObservabilityConfiguration example arn:aws:apprunner:us-east-1:1234567890:observabilityconfiguration/example/1/d75bc7ea55b71e724fe5c23452fe22a1
/// ```
class ObservabilityConfiguration extends pulumi.CustomResource {
  /// ARN of this observability configuration.
  late final pulumi.Output<String> arn;
  /// Whether the observability configuration has the highest `observabilityConfigurationRevision` among all configurations that share the same `observabilityConfigurationName`.
  late final pulumi.Output<bool> latest;
  /// Name of the observability configuration.
  late final pulumi.Output<String> observabilityConfigurationName;
  /// Revision of this observability configuration.
  late final pulumi.Output<int> observabilityConfigurationRevision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See `traceConfiguration` Block below for more details.
  late final pulumi.Output<ObservabilityConfigurationTraceConfiguration?> traceConfiguration;

  /// Creates a new [ObservabilityConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObservabilityConfiguration]. {@macro pulumi_apprunner_observability_configuration_observability_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObservabilityConfiguration(
    String name, {
    ObservabilityConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/observabilityConfiguration:ObservabilityConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    latest = registerOutput<bool>('latest');
    observabilityConfigurationName = registerOutput<String>('observabilityConfigurationName');
    observabilityConfigurationRevision = registerOutput<int>('observabilityConfigurationRevision');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    traceConfiguration = registerOutput<ObservabilityConfigurationTraceConfiguration?>('traceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservabilityConfigurationTraceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ObservabilityConfiguration] resource's state with the given [name] and [id].
  static ObservabilityConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ObservabilityConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ObservabilityConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ObservabilityConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/observabilityConfiguration:ObservabilityConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    latest = registerOutput<bool>('latest');
    observabilityConfigurationName = registerOutput<String>('observabilityConfigurationName');
    observabilityConfigurationRevision = registerOutput<int>('observabilityConfigurationRevision');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    traceConfiguration = registerOutput<ObservabilityConfigurationTraceConfiguration?>('traceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservabilityConfigurationTraceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ObservabilityConfiguration] resource.
  ObservabilityConfiguration.reference(String urn)
    : super(
        'aws:apprunner/observabilityConfiguration:ObservabilityConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    latest = registerOutput<bool>('latest');
    observabilityConfigurationName = registerOutput<String>('observabilityConfigurationName');
    observabilityConfigurationRevision = registerOutput<int>('observabilityConfigurationRevision');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    traceConfiguration = registerOutput<ObservabilityConfigurationTraceConfiguration?>('traceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservabilityConfigurationTraceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
