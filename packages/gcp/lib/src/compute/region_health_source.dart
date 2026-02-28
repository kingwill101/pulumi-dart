import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_health_source_args.dart';

/// A health source resource specifies the source resources and the health
/// aggregation policy applied to the source resources to determine the
/// aggregated health status.
///
/// To get more information about RegionHealthSource, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionHealthSources)
/// * How-to Guides
/// * [Health checks overview](https://cloud.google.com/load-balancing/docs/health-check-concepts)
///
/// ## Example Usage
///
/// ### Compute Region Health Source Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hap = new gcp.compute.RegionHealthAggregationPolicy("hap", {
///     name: "test-health-source-hap",
///     description: "health aggregation policy for health source",
///     region: "us-central1",
/// });
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "test-health-source-hc",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "test-health-source-bs",
///     region: "us-central1",
///     healthChecks: _default.id,
///     loadBalancingScheme: "INTERNAL",
/// });
/// const exampleTestHealthSource = new gcp.compute.RegionHealthSource("example_test_health_source", {
///     name: "test-health-source",
///     description: "Example health source basic",
///     region: "us-central1",
///     sourceType: "BACKEND_SERVICE",
///     sources: defaultRegionBackendService.id,
///     healthAggregationPolicy: hap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hap = gcp.compute.RegionHealthAggregationPolicy("hap",
///     name="test-health-source-hap",
///     description="health aggregation policy for health source",
///     region="us-central1")
/// default = gcp.compute.HealthCheck("default",
///     name="test-health-source-hc",
///     http_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="test-health-source-bs",
///     region="us-central1",
///     health_checks=default.id,
///     load_balancing_scheme="INTERNAL")
/// example_test_health_source = gcp.compute.RegionHealthSource("example_test_health_source",
///     name="test-health-source",
///     description="Example health source basic",
///     region="us-central1",
///     source_type="BACKEND_SERVICE",
///     sources=default_region_backend_service.id,
///     health_aggregation_policy=hap.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hap = new Gcp.Compute.RegionHealthAggregationPolicy("hap", new()
///     {
///         Name = "test-health-source-hap",
///         Description = "health aggregation policy for health source",
///         Region = "us-central1",
///     });
///
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "test-health-source-hc",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "test-health-source-bs",
///         Region = "us-central1",
///         HealthChecks = @default.Id,
///         LoadBalancingScheme = "INTERNAL",
///     });
///
///     var exampleTestHealthSource = new Gcp.Compute.RegionHealthSource("example_test_health_source", new()
///     {
///         Name = "test-health-source",
///         Description = "Example health source basic",
///         Region = "us-central1",
///         SourceType = "BACKEND_SERVICE",
///         Sources = defaultRegionBackendService.Id,
///         HealthAggregationPolicy = hap.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		hap, err := compute.NewRegionHealthAggregationPolicy(ctx, "hap", &compute.RegionHealthAggregationPolicyArgs{
/// 			Name:        pulumi.String("test-health-source-hap"),
/// 			Description: pulumi.String("health aggregation policy for health source"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("test-health-source-hc"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("test-health-source-bs"),
/// 			Region:              pulumi.String("us-central1"),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionHealthSource(ctx, "example_test_health_source", &compute.RegionHealthSourceArgs{
/// 			Name:                    pulumi.String("test-health-source"),
/// 			Description:             pulumi.String("Example health source basic"),
/// 			Region:                  pulumi.String("us-central1"),
/// 			SourceType:              pulumi.String("BACKEND_SERVICE"),
/// 			Sources:                 defaultRegionBackendService.ID(),
/// 			HealthAggregationPolicy: hap.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthAggregationPolicy;
/// import com.pulumi.gcp.compute.RegionHealthAggregationPolicyArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionHealthSource;
/// import com.pulumi.gcp.compute.RegionHealthSourceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var hap = new RegionHealthAggregationPolicy("hap", RegionHealthAggregationPolicyArgs.builder()
///             .name("test-health-source-hap")
///             .description("health aggregation policy for health source")
///             .region("us-central1")
///             .build());
///
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("test-health-source-hc")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("test-health-source-bs")
///             .region("us-central1")
///             .healthChecks(default_.id())
///             .loadBalancingScheme("INTERNAL")
///             .build());
///
///         var exampleTestHealthSource = new RegionHealthSource("exampleTestHealthSource", RegionHealthSourceArgs.builder()
///             .name("test-health-source")
///             .description("Example health source basic")
///             .region("us-central1")
///             .sourceType("BACKEND_SERVICE")
///             .sources(defaultRegionBackendService.id())
///             .healthAggregationPolicy(hap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hap:
///     type: gcp:compute:RegionHealthAggregationPolicy
///     properties:
///       name: test-health-source-hap
///       description: health aggregation policy for health source
///       region: us-central1
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: test-health-source-hc
///       httpHealthCheck:
///         port: 80
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: test-health-source-bs
///       region: us-central1
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL
///   exampleTestHealthSource:
///     type: gcp:compute:RegionHealthSource
///     name: example_test_health_source
///     properties:
///       name: test-health-source
///       description: Example health source basic
///       region: us-central1
///       sourceType: BACKEND_SERVICE
///       sources: ${defaultRegionBackendService.id}
///       healthAggregationPolicy: ${hap.id}
/// ```
///
///
/// ## Import
///
/// RegionHealthSource can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/healthSources/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionHealthSource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default projects/{{project}}/regions/{{region}}/healthSources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default {{name}}
/// ```
class RegionHealthSource extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking.
  late final pulumi.Output<String> fingerprint;

  /// URL to the `HealthAggregationPolicy` resource. Must be set. Must
  /// be regional and in the same region as the `HealthSource`. Can be
  /// mutated.
  late final pulumi.Output<String?> healthAggregationPolicy;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// URL of the region where the health source resides.
  late final pulumi.Output<String> region;

  /// Server-defined URL with id for the resource.
  late final pulumi.Output<String> selfLinkWithId;

  /// Specifies the type of the `HealthSource`. The only allowed value
  /// is `BACKEND_SERVICE`. Must be specified when the
  /// `HealthSource` is created, and cannot be mutated.
  /// Possible values are: `BACKEND_SERVICE`.
  late final pulumi.Output<String> sourceType;

  /// URLs to the source resources. Must be size 1. Must be a
  /// `BackendService` if the `sourceType` is `BACKEND_SERVICE`. The
  /// `BackendService` must have load balancing scheme
  /// `INTERNAL` or `INTERNAL_MANAGED` and must be regional
  /// and in the same region as the `HealthSource` (cross-region
  /// deployment for `INTERNAL_MANAGED` is not supported). The
  /// `BackendService` may use only IGs, MIGs, or NEGs of type
  /// `GCE_VM_IP` or `GCE_VM_IP_PORT`. The
  /// `BackendService` may not use `haPolicy`. Can be
  /// mutated.
  late final pulumi.Output<String?> sources;

  /// Creates a new [RegionHealthSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionHealthSource]. {@macro pulumi_compute_region_health_source_region_health_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionHealthSource(
    String name, {
    RegionHealthSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionHealthSource:RegionHealthSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.healthAggregationPolicy =
        registerOutput<String?>('healthAggregationPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.sourceType = registerOutput<String>('sourceType');
    this.sources = registerOutput<String?>('sources');
  }
}
