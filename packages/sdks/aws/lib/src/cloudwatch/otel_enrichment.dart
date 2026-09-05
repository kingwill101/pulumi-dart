import 'package:pulumi/pulumi.dart' as pulumi;
import 'otel_enrichment_args.dart';
import 'otel_enrichment_state.dart';
import 'otel_enrichment_timeouts.dart';

/// Manages AWS CloudWatch OTel enrichment. This is a singleton resource that enables OTel enrichment at the account level.
///
/// &gt; **NOTE:** This resource requires the `aws.observabilityadmin.TelemetryEnrichment` resource to be configured first. Without telemetry enrichment enabled, OTel enrichment will not function properly even if the API accepts the configuration.
///
/// ## Example Usage
///
/// ### Enable OTel Enrichment
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEnrichment("example", {});
/// const exampleOtelEnrichment = new aws.cloudwatch.OtelEnrichment("example", {}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEnrichment("example")
/// example_otel_enrichment = aws.cloudwatch.OtelEnrichment("example", opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEnrichment("example");
///
///     var exampleOtelEnrichment = new Aws.CloudWatch.OtelEnrichment("example", new()
///     {
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := observabilityadmin.NewTelemetryEnrichment(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewOtelEnrichment(ctx, "example", nil, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_observabilityadmin_telemetryenrichment" "example" {
/// }
/// resource "aws_cloudwatch_otelenrichment" "example" {
///   depends_on = [aws_observabilityadmin_telemetryenrichment.example]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEnrichment;
/// import com.pulumi.aws.cloudwatch.OtelEnrichment;
/// import com.pulumi.aws.cloudwatch.OtelEnrichmentArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new TelemetryEnrichment("example");
///
///         var exampleOtelEnrichment = new OtelEnrichment("exampleOtelEnrichment", OtelEnrichmentArgs.Empty, CustomResourceOptions.builder()
///             .dependsOn(Arrays.asList(example))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEnrichment
///   exampleOtelEnrichment:
///     type: aws:cloudwatch:OtelEnrichment
///     name: example
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// No required attributes for singleton identity.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch OTel Enrichment using the region. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/otelEnrichment:OtelEnrichment example us-west-2
/// ```
class OtelEnrichment extends pulumi.CustomResource {
  /// AWS region where this resource is managed.
  late final pulumi.Output<String> region;
  late final pulumi.Output<OtelEnrichmentTimeouts?> timeouts;

  /// Creates a new [OtelEnrichment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OtelEnrichment]. {@macro pulumi_cloudwatch_otel_enrichment_otel_enrichment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OtelEnrichment(
    String name, {
    OtelEnrichmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/otelEnrichment:OtelEnrichment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    timeouts = registerOutput<OtelEnrichmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OtelEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [OtelEnrichment] resource's state with the given [name] and [id].
  static OtelEnrichment get(
    String name,
    pulumi.Input<String> id, {
    OtelEnrichmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OtelEnrichment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OtelEnrichment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/otelEnrichment:OtelEnrichment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    timeouts = registerOutput<OtelEnrichmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OtelEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [OtelEnrichment] resource.
  OtelEnrichment.reference(String urn)
    : super(
        'aws:cloudwatch/otelEnrichment:OtelEnrichment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    timeouts = registerOutput<OtelEnrichmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OtelEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
