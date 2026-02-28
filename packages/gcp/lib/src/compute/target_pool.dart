import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_pool_args.dart';

/// Manages a Target Pool within GCE. This is a collection of instances used as
/// target of a network load balancer (Forwarding Rule). For more information see
/// [the official
/// documentation](https://cloud.google.com/compute/docs/load-balancing/network/target-pools)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/targetPools).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "default",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.TargetPool("default", {
///     name: "instance-pool",
///     instances: [
///         "us-central1-a/myinstance1",
///         "us-central1-b/myinstance2",
///     ],
///     healthChecks: defaultHttpHealthCheck.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="default",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.TargetPool("default",
///     name="instance-pool",
///     instances=[
///         "us-central1-a/myinstance1",
///         "us-central1-b/myinstance2",
///     ],
///     health_checks=default_http_health_check.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "default",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.TargetPool("default", new()
///     {
///         Name = "instance-pool",
///         Instances = new[]
///         {
///             "us-central1-a/myinstance1",
///             "us-central1-b/myinstance2",
///         },
///         HealthChecks = defaultHttpHealthCheck.Name,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("default"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetPool(ctx, "default", &compute.TargetPoolArgs{
/// 			Name: pulumi.String("instance-pool"),
/// 			Instances: pulumi.StringArray{
/// 				pulumi.String("us-central1-a/myinstance1"),
/// 				pulumi.String("us-central1-b/myinstance2"),
/// 			},
/// 			HealthChecks: defaultHttpHealthCheck.Name,
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.TargetPool;
/// import com.pulumi.gcp.compute.TargetPoolArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("default")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new TargetPool("default", TargetPoolArgs.builder()
///             .name("instance-pool")
///             .instances(
///                 "us-central1-a/myinstance1",
///                 "us-central1-b/myinstance2")
///             .healthChecks(defaultHttpHealthCheck.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetPool
///     properties:
///       name: instance-pool
///       instances:
///         - us-central1-a/myinstance1
///         - us-central1-b/myinstance2
///       healthChecks: ${defaultHttpHealthCheck.name}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: default
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
///
/// ## Import
///
/// Target pools can be imported using any of the following formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetPools/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, target pools can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default projects/{{project}}/regions/{{region}}/targetPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default {{name}}
/// ```
class TargetPool extends pulumi.CustomResource {
  /// URL to the backup target pool. Must also set
  /// failover_ratio.
  late final pulumi.Output<String?> backupPool;

  /// Textual description field.
  late final pulumi.Output<String?> description;

  /// Ratio (0 to 1) of failed nodes before using the
  /// backup pool (which must also be set).
  late final pulumi.Output<double?> failoverRatio;

  /// List of zero or one health check name or self_link. Only
  /// legacy `gcp.compute.HttpHealthCheck` is supported.
  late final pulumi.Output<String?> healthChecks;

  /// List of instances in the pool. They can be given as
  /// URLs, or in the form of "zone/name". Note that the instances need not exist
  /// at the time of target pool creation, so there is no need to use the
  /// interpolation to create a dependency on the instances from the
  /// target pool.
  late final pulumi.Output<List<String>> instances;

  /// A unique name for the resource, required by GCE. Changing
  /// this forces a new resource to be created.
  ///
  /// - - -
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Where the target pool resides. Defaults to project
  /// region.
  late final pulumi.Output<String> region;

  /// The resource URL for the security policy associated with this target pool.
  late final pulumi.Output<String?> securityPolicy;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// How to distribute load. Options are "NONE" (no
  /// affinity). "CLIENT_IP" (hash of the source/dest addresses / ports), and
  /// "CLIENT_IP_PROTO" also includes the protocol (default "NONE").
  late final pulumi.Output<String?> sessionAffinity;

  /// Creates a new [TargetPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetPool]. {@macro pulumi_compute_target_pool_target_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetPool(
    String name, {
    TargetPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetPool:TargetPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPool = registerOutput<String?>('backupPool');
    this.description = registerOutput<String?>('description');
    this.failoverRatio = registerOutput<double?>('failoverRatio');
    this.healthChecks = registerOutput<String?>('healthChecks');
    this.instances = registerOutput<List<String>>('instances');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.sessionAffinity = registerOutput<String?>('sessionAffinity');
  }
}
