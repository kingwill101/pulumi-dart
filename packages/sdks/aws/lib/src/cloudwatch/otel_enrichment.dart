import 'package:pulumi/pulumi.dart' as pulumi;
import 'otel_enrichment_args.dart';
import 'otel_enrichment_exclude_filter.dart';
import 'otel_enrichment_include_filter.dart';
import 'otel_enrichment_state.dart';
import 'otel_enrichment_timeouts.dart';

/// Manages AWS CloudWatch OTel enrichment. This is a singleton resource that enables OTel enrichment at the account level.
///
/// &gt; **NOTE:** This resource requires the `aws.observabilityadmin.TelemetryEnrichment` resource to be configured first. Without telemetry enrichment enabled, OTel enrichment will not function properly even if the API accepts the configuration.
///
/// &gt; **NOTE:** Creating this Terraform resource starts AWS CloudWatch OTel enrichment and deleting this Terraform resource stops AWS CloudWatch OTel enrichment.
///
/// Filters are evaluated as follows. `includeFilter` is applied first, then the `excludeFilter` match set is subtracted from the result. Exclusion always wins, so a metric matched by both is not enriched. An inactive direction is permissive: with no `includeFilter`, every supported namespace is in scope, and with no `excludeFilter`, nothing is removed. Namespaces and metric names are matched exactly and case-sensitively, with no wildcards or prefixes, so `AWS/EC2` matches only `AWS/EC2`. At most 100 selectors are allowed across `includeFilter` and `excludeFilter` **combined**. Two lists of 60 selectors each satisfy the per-list limit but are rejected together.
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
/// ### Filter Enrichment by Namespace and Metric
///
/// By default every namespace that CloudWatch supports is enriched. Narrow that scope with `includeFilter` and `excludeFilter`. The configuration below enriches all of `AWS/EC2` except two network metrics, plus exactly two `AWS/RDS` metrics, and nothing else.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEnrichment("example", {});
/// const exampleOtelEnrichment = new aws.cloudwatch.OtelEnrichment("example", {
///     excludeFilters: [{
///         namespace: "AWS/EC2",
///         metricNames: [
///             "NetworkPacketsIn",
///             "NetworkPacketsOut",
///         ],
///     }],
///     includeFilters: [
///         {
///             namespace: "AWS/EC2",
///         },
///         {
///             namespace: "AWS/RDS",
///             metricNames: [
///                 "CPUUtilization",
///                 "DatabaseConnections",
///             ],
///         },
///     ],
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEnrichment("example")
/// example_otel_enrichment = aws.cloudwatch.OtelEnrichment("example",
///     exclude_filters=[{
///         "namespace": "AWS/EC2",
///         "metric_names": [
///             "NetworkPacketsIn",
///             "NetworkPacketsOut",
///         ],
///     }],
///     include_filters=[
///         {
///             "namespace": "AWS/EC2",
///         },
///         {
///             "namespace": "AWS/RDS",
///             "metric_names": [
///                 "CPUUtilization",
///                 "DatabaseConnections",
///             ],
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example]))
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
///         ExcludeFilters = new[]
///         {
///             new Aws.CloudWatch.Inputs.OtelEnrichmentExcludeFilterArgs
///             {
///                 Namespace = "AWS/EC2",
///                 MetricNames = new[]
///                 {
///                     "NetworkPacketsIn",
///                     "NetworkPacketsOut",
///                 },
///             },
///         },
///         IncludeFilters = new[]
///         {
///             new Aws.CloudWatch.Inputs.OtelEnrichmentIncludeFilterArgs
///             {
///                 Namespace = "AWS/EC2",
///             },
///             new Aws.CloudWatch.Inputs.OtelEnrichmentIncludeFilterArgs
///             {
///                 Namespace = "AWS/RDS",
///                 MetricNames = new[]
///                 {
///                     "CPUUtilization",
///                     "DatabaseConnections",
///                 },
///             },
///         },
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
/// 		_, err = cloudwatch.NewOtelEnrichment(ctx, "example", &cloudwatch.OtelEnrichmentArgs{
/// 			ExcludeFilters: cloudwatch.OtelEnrichmentExcludeFilterArray{
/// 				&cloudwatch.OtelEnrichmentExcludeFilterArgs{
/// 					Namespace: pulumi.String("AWS/EC2"),
/// 					MetricNames: pulumi.StringArray{
/// 						pulumi.String("NetworkPacketsIn"),
/// 						pulumi.String("NetworkPacketsOut"),
/// 					},
/// 				},
/// 			},
/// 			IncludeFilters: cloudwatch.OtelEnrichmentIncludeFilterArray{
/// 				&cloudwatch.OtelEnrichmentIncludeFilterArgs{
/// 					Namespace: pulumi.String("AWS/EC2"),
/// 				},
/// 				&cloudwatch.OtelEnrichmentIncludeFilterArgs{
/// 					Namespace: pulumi.String("AWS/RDS"),
/// 					MetricNames: pulumi.StringArray{
/// 						pulumi.String("CPUUtilization"),
/// 						pulumi.String("DatabaseConnections"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
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
///   exclude_filters {
///     namespace    = "AWS/EC2"
///     metric_names = ["NetworkPacketsIn", "NetworkPacketsOut"]
///   }
///   include_filters {
///     namespace = "AWS/EC2"
///   }
///   include_filters {
///     namespace    = "AWS/RDS"
///     metric_names = ["CPUUtilization", "DatabaseConnections"]
///   }
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
/// import com.pulumi.aws.cloudwatch.inputs.OtelEnrichmentExcludeFilterArgs;
/// import com.pulumi.aws.cloudwatch.inputs.OtelEnrichmentIncludeFilterArgs;
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
///         var exampleOtelEnrichment = new OtelEnrichment("exampleOtelEnrichment", OtelEnrichmentArgs.builder()
///             .excludeFilters(OtelEnrichmentExcludeFilterArgs.builder()
///                 .namespace("AWS/EC2")
///                 .metricNames(
///                     "NetworkPacketsIn",
///                     "NetworkPacketsOut")
///                 .build())
///             .includeFilters(
///                 OtelEnrichmentIncludeFilterArgs.builder()
///                     .namespace("AWS/EC2")
///                     .build(),
///                 OtelEnrichmentIncludeFilterArgs.builder()
///                     .namespace("AWS/RDS")
///                     .metricNames(
///                         "CPUUtilization",
///                         "DatabaseConnections")
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
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
///     properties:
///       excludeFilters:
///         - namespace: AWS/EC2
///           metricNames:
///             - NetworkPacketsIn
///             - NetworkPacketsOut
///       includeFilters:
///         - namespace: AWS/EC2
///         - namespace: AWS/RDS
///           metricNames:
///             - CPUUtilization
///             - DatabaseConnections
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
  /// Namespaces and metric names to leave unenriched. See below.
  late final pulumi.Output<List<OtelEnrichmentExcludeFilter>?> excludeFilters;
  /// Namespaces and metric names to enrich. See below.
  late final pulumi.Output<List<OtelEnrichmentIncludeFilter>?> includeFilters;
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
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    excludeFilters = registerOutput<List<OtelEnrichmentExcludeFilter>?>('excludeFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OtelEnrichmentExcludeFilter>(guardedValue, (value) => OtelEnrichmentExcludeFilter.fromMap((value as Map).cast<String, dynamic>())); });
    includeFilters = registerOutput<List<OtelEnrichmentIncludeFilter>?>('includeFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OtelEnrichmentIncludeFilter>(guardedValue, (value) => OtelEnrichmentIncludeFilter.fromMap((value as Map).cast<String, dynamic>())); });
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
    excludeFilters = registerOutput<List<OtelEnrichmentExcludeFilter>?>('excludeFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OtelEnrichmentExcludeFilter>(guardedValue, (value) => OtelEnrichmentExcludeFilter.fromMap((value as Map).cast<String, dynamic>())); });
    includeFilters = registerOutput<List<OtelEnrichmentIncludeFilter>?>('includeFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OtelEnrichmentIncludeFilter>(guardedValue, (value) => OtelEnrichmentIncludeFilter.fromMap((value as Map).cast<String, dynamic>())); });
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
    excludeFilters = registerOutput<List<OtelEnrichmentExcludeFilter>?>('excludeFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OtelEnrichmentExcludeFilter>(guardedValue, (value) => OtelEnrichmentExcludeFilter.fromMap((value as Map).cast<String, dynamic>())); });
    includeFilters = registerOutput<List<OtelEnrichmentIncludeFilter>?>('includeFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OtelEnrichmentIncludeFilter>(guardedValue, (value) => OtelEnrichmentIncludeFilter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<OtelEnrichmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OtelEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
