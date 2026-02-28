import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_tcpproxy_args.dart';

/// Represents a TargetTcpProxy resource, which is used by one or more
/// global forwarding rule to route incoming TCP requests to a Backend
/// service.
///
///
/// To get more information about TargetTcpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetTcpProxies)
/// * How-to Guides
/// * [Setting Up TCP proxy for Google Cloud Load Balancing](https://cloud.google.com/compute/docs/load-balancing/tcp-ssl/tcp-proxy)
///
/// ## Example Usage
///
/// ### Target Tcp Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 443,
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     healthChecks: defaultHealthCheck.id,
/// });
/// const _default = new gcp.compute.TargetTCPProxy("default", {
///     name: "test-proxy",
///     backendService: defaultBackendService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 443,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     health_checks=default_health_check.id)
/// default = gcp.compute.TargetTCPProxy("default",
///     name="test-proxy",
///     backend_service=default_backend_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var @default = new Gcp.Compute.TargetTCPProxy("default", new()
///     {
///         Name = "test-proxy",
///         BackendService = defaultBackendService.Id,
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			Protocol:     pulumi.String("TCP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetTCPProxy(ctx, "default", &compute.TargetTCPProxyArgs{
/// 			Name:           pulumi.String("test-proxy"),
/// 			BackendService: defaultBackendService.ID(),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.TargetTCPProxy;
/// import com.pulumi.gcp.compute.TargetTCPProxyArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var default_ = new TargetTCPProxy("default", TargetTCPProxyArgs.builder()
///             .name("test-proxy")
///             .backendService(defaultBackendService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetTCPProxy
///     properties:
///       name: test-proxy
///       backendService: ${defaultBackendService.id}
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       protocol: TCP
///       timeoutSec: 10
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '443'
/// ```
///
///
/// ## Import
///
/// TargetTcpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetTcpProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetTcpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default projects/{{project}}/global/targetTcpProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default {{name}}
/// ```
class TargetTCPProxy extends pulumi.CustomResource {
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

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [TargetTCPProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetTCPProxy]. {@macro pulumi_compute_target_tcpproxy_target_tcpproxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetTCPProxy(
    String name, {
    TargetTCPProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetTCPProxy:TargetTCPProxy',
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
    this.selfLink = registerOutput<String>('selfLink');
  }
}
