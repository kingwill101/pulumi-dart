import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_target_tcp_proxy_args.dart';

/// Represents a RegionTargetTcpProxy resource, which is used by one or more
/// forwarding rules to route incoming TCP requests to a regional TCP proxy load
/// balancer.
///
///
/// To get more information about RegionTargetTcpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/tcp/internal-proxy)
///
/// ## Example Usage
///
/// ### Region Target Tcp Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     region: "europe-west4",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     region: "europe-west4",
///     healthChecks: defaultRegionHealthCheck.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const _default = new gcp.compute.RegionTargetTcpProxy("default", {
///     name: "test-proxy",
///     region: "europe-west4",
///     backendService: defaultRegionBackendService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     region="europe-west4",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     region="europe-west4",
///     health_checks=default_region_health_check.id,
///     load_balancing_scheme="INTERNAL_MANAGED")
/// default = gcp.compute.RegionTargetTcpProxy("default",
///     name="test-proxy",
///     region="europe-west4",
///     backend_service=default_region_backend_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         Region = "europe-west4",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         Region = "europe-west4",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var @default = new Gcp.Compute.RegionTargetTcpProxy("default", new()
///     {
///         Name = "test-proxy",
///         Region = "europe-west4",
///         BackendService = defaultRegionBackendService.Id,
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
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			Region:           pulumi.String("europe-west4"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			Region:              pulumi.String("europe-west4"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionTargetTcpProxy(ctx, "default", &compute.RegionTargetTcpProxyArgs{
/// 			Name:           pulumi.String("test-proxy"),
/// 			Region:         pulumi.String("europe-west4"),
/// 			BackendService: defaultRegionBackendService.ID(),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxy;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxyArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .region("europe-west4")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .region("europe-west4")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var default_ = new RegionTargetTcpProxy("default", RegionTargetTcpProxyArgs.builder()
///             .name("test-proxy")
///             .region("europe-west4")
///             .backendService(defaultRegionBackendService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionTargetTcpProxy
///     properties:
///       name: test-proxy
///       region: europe-west4
///       backendService: ${defaultRegionBackendService.id}
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: backend-service
///       protocol: TCP
///       timeoutSec: 10
///       region: europe-west4
///       healthChecks: ${defaultRegionHealthCheck.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: health-check
///       region: europe-west4
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
/// ```
///
///
/// ## Import
///
/// RegionTargetTcpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetTcpProxies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionTargetTcpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default projects/{{project}}/regions/{{region}}/targetTcpProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{name}}
/// ```
class RegionTargetTcpProxy extends pulumi.CustomResource {
  /// A reference to the BackendService resource.
  late final pulumi.Output<String> backendService;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  late final pulumi.Output<bool> proxyBind;

  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  late final pulumi.Output<String?> proxyHeader;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;

  /// The Region in which the created target TCP proxy should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RegionTargetTcpProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionTargetTcpProxy]. {@macro pulumi_compute_region_target_tcp_proxy_region_target_tcp_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionTargetTcpProxy(
    String name, {
    RegionTargetTcpProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.backendService = registerOutput<String>('backendService');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyBind = registerOutput<bool>('proxyBind');
    this.proxyHeader = registerOutput<String?>('proxyHeader');
    this.proxyId = registerOutput<int>('proxyId');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
