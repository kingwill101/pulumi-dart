import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_enrichment_args.dart';
import 'telemetry_enrichment_state.dart';
import 'telemetry_enrichment_timeouts.dart';

/// Manages an AWS CloudWatch Observability Admin Telemetry Enrichment.
///
/// Telemetry enrichment enables resource tags for telemetry data in your account, enhancing telemetry with additional resource metadata from AWS Resource Explorer to provide richer context for monitoring and observability.
///
/// For more information, see the [AWS CloudWatch Observability Admin documentation](https://docs.aws.amazon.com/cloudwatch/latest/observabilityadmin/what-is-observabilityadmin.html).
///
/// &gt; **NOTE:** Only one telemetry enrichment can exist per account per region. Creating this resource enables the feature; destroying it disables the feature.
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
/// const example = new aws.observabilityadmin.TelemetryEnrichment("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEnrichment("example")
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
/// 		_, err := observabilityadmin.NewTelemetryEnrichment(ctx, "example", nil)
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEnrichment;
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEnrichment
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
/// Using `pulumi import`, import CloudWatch Observability Admin Telemetry Enrichment using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/telemetryEnrichment:TelemetryEnrichment example us-west-2
/// ```
class TelemetryEnrichment extends pulumi.CustomResource {
  /// ARN of the AWS Resource Explorer managed view created for the telemetry enrichment feature.
  late final pulumi.Output<String> awsResourceExplorerManagedViewArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<TelemetryEnrichmentTimeouts?> timeouts;

  /// Creates a new [TelemetryEnrichment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TelemetryEnrichment]. {@macro pulumi_observabilityadmin_telemetry_enrichment_telemetry_enrichment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TelemetryEnrichment(
    String name, {
    TelemetryEnrichmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryEnrichment:TelemetryEnrichment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsResourceExplorerManagedViewArn = registerOutput<String>('awsResourceExplorerManagedViewArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<TelemetryEnrichmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TelemetryEnrichment] resource's state with the given [name] and [id].
  static TelemetryEnrichment get(
    String name,
    pulumi.Input<String> id, {
    TelemetryEnrichmentState? state,
  }) {
    return TelemetryEnrichment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TelemetryEnrichment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryEnrichment:TelemetryEnrichment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsResourceExplorerManagedViewArn = registerOutput<String>('awsResourceExplorerManagedViewArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<TelemetryEnrichmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
