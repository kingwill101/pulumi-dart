import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_all_instances_config.dart';
import 'region_instance_group_manager_args.dart';
import 'region_instance_group_manager_auto_healing_policies.dart';
import 'region_instance_group_manager_instance_flexibility_policy.dart';
import 'region_instance_group_manager_instance_lifecycle_policy.dart';
import 'region_instance_group_manager_named_port.dart';
import 'region_instance_group_manager_params.dart';
import 'region_instance_group_manager_standby_policy.dart';
import 'region_instance_group_manager_stateful_disk.dart';
import 'region_instance_group_manager_stateful_external_ip.dart';
import 'region_instance_group_manager_stateful_internal_ip.dart';
import 'region_instance_group_manager_status.dart';
import 'region_instance_group_manager_update_policy.dart';
import 'region_instance_group_manager_version.dart';

/// The Google Compute Engine Regional Instance Group Manager API creates and manages pools
/// of homogeneous Compute Engine virtual machine instances from a common instance
/// template.
///
/// To get more information about regionInstanceGroupManagers, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/latest/regionInstanceGroupManagers)
/// * How-to Guides
/// * [Regional Instance Groups Guide](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups)
///
/// > **Note:** Use [gcp.compute.InstanceGroupManager](https://www.terraform.io/docs/providers/google/r/compute_instance_group_manager.html) to create a zonal instance group manager.
///
/// ## Example Usage
///
/// ### With Top Level Instance Template (`Google` Provider)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const autohealing = new gcp.compute.HealthCheck("autohealing", {
///     name: "autohealing-health-check",
///     checkIntervalSec: 5,
///     timeoutSec: 5,
///     healthyThreshold: 2,
///     unhealthyThreshold: 10,
///     httpHealthCheck: {
///         requestPath: "/healthz",
///         port: 8080,
///     },
/// });
/// const appserver = new gcp.compute.RegionInstanceGroupManager("appserver", {
///     name: "appserver-igm",
///     baseInstanceName: "app",
///     region: "us-central1",
///     distributionPolicyZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
///     versions: [{
///         instanceTemplate: appserverGoogleComputeInstanceTemplate.selfLinkUnique,
///     }],
///     allInstancesConfig: {
///         metadata: {
///             metadata_key: "metadata_value",
///         },
///         labels: {
///             label_key: "label_value",
///         },
///     },
///     targetPools: [appserverGoogleComputeTargetPool.id],
///     targetSize: 2,
///     namedPorts: [{
///         name: "custom",
///         port: 8888,
///     }],
///     autoHealingPolicies: {
///         healthCheck: autohealing.id,
///         initialDelaySec: 300,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// autohealing = gcp.compute.HealthCheck("autohealing",
///     name="autohealing-health-check",
///     check_interval_sec=5,
///     timeout_sec=5,
///     healthy_threshold=2,
///     unhealthy_threshold=10,
///     http_health_check={
///         "request_path": "/healthz",
///         "port": 8080,
///     })
/// appserver = gcp.compute.RegionInstanceGroupManager("appserver",
///     name="appserver-igm",
///     base_instance_name="app",
///     region="us-central1",
///     distribution_policy_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ],
///     versions=[{
///         "instance_template": appserver_google_compute_instance_template["selfLinkUnique"],
///     }],
///     all_instances_config={
///         "metadata": {
///             "metadata_key": "metadata_value",
///         },
///         "labels": {
///             "label_key": "label_value",
///         },
///     },
///     target_pools=[appserver_google_compute_target_pool["id"]],
///     target_size=2,
///     named_ports=[{
///         "name": "custom",
///         "port": 8888,
///     }],
///     auto_healing_policies={
///         "health_check": autohealing.id,
///         "initial_delay_sec": 300,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autohealing = new Gcp.Compute.HealthCheck("autohealing", new()
///     {
///         Name = "autohealing-health-check",
///         CheckIntervalSec = 5,
///         TimeoutSec = 5,
///         HealthyThreshold = 2,
///         UnhealthyThreshold = 10,
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             RequestPath = "/healthz",
///             Port = 8080,
///         },
///     });
///
///     var appserver = new Gcp.Compute.RegionInstanceGroupManager("appserver", new()
///     {
///         Name = "appserver-igm",
///         BaseInstanceName = "app",
///         Region = "us-central1",
///         DistributionPolicyZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
///         },
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = appserverGoogleComputeInstanceTemplate.SelfLinkUnique,
///             },
///         },
///         AllInstancesConfig = new Gcp.Compute.Inputs.RegionInstanceGroupManagerAllInstancesConfigArgs
///         {
///             Metadata =
///             {
///                 { "metadata_key", "metadata_value" },
///             },
///             Labels =
///             {
///                 { "label_key", "label_value" },
///             },
///         },
///         TargetPools = new[]
///         {
///             appserverGoogleComputeTargetPool.Id,
///         },
///         TargetSize = 2,
///         NamedPorts = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerNamedPortArgs
///             {
///                 Name = "custom",
///                 Port = 8888,
///             },
///         },
///         AutoHealingPolicies = new Gcp.Compute.Inputs.RegionInstanceGroupManagerAutoHealingPoliciesArgs
///         {
///             HealthCheck = autohealing.Id,
///             InitialDelaySec = 300,
///         },
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
/// 		autohealing, err := compute.NewHealthCheck(ctx, "autohealing", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("autohealing-health-check"),
/// 			CheckIntervalSec:   pulumi.Int(5),
/// 			TimeoutSec:         pulumi.Int(5),
/// 			HealthyThreshold:   pulumi.Int(2),
/// 			UnhealthyThreshold: pulumi.Int(10),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				RequestPath: pulumi.String("/healthz"),
/// 				Port:        pulumi.Int(8080),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionInstanceGroupManager(ctx, "appserver", &compute.RegionInstanceGroupManagerArgs{
/// 			Name:             pulumi.String("appserver-igm"),
/// 			BaseInstanceName: pulumi.String("app"),
/// 			Region:           pulumi.String("us-central1"),
/// 			DistributionPolicyZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
/// 			},
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: pulumi.Any(appserverGoogleComputeInstanceTemplate.SelfLinkUnique),
/// 				},
/// 			},
/// 			AllInstancesConfig: &compute.RegionInstanceGroupManagerAllInstancesConfigArgs{
/// 				Metadata: pulumi.StringMap{
/// 					"metadata_key": pulumi.String("metadata_value"),
/// 				},
/// 				Labels: pulumi.StringMap{
/// 					"label_key": pulumi.String("label_value"),
/// 				},
/// 			},
/// 			TargetPools: pulumi.StringArray{
/// 				appserverGoogleComputeTargetPool.Id,
/// 			},
/// 			TargetSize: pulumi.Int(2),
/// 			NamedPorts: compute.RegionInstanceGroupManagerNamedPortArray{
/// 				&compute.RegionInstanceGroupManagerNamedPortArgs{
/// 					Name: pulumi.String("custom"),
/// 					Port: pulumi.Int(8888),
/// 				},
/// 			},
/// 			AutoHealingPolicies: &compute.RegionInstanceGroupManagerAutoHealingPoliciesArgs{
/// 				HealthCheck:     autohealing.ID(),
/// 				InitialDelaySec: pulumi.Int(300),
/// 			},
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
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerAllInstancesConfigArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerNamedPortArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerAutoHealingPoliciesArgs;
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
///         var autohealing = new HealthCheck("autohealing", HealthCheckArgs.builder()
///             .name("autohealing-health-check")
///             .checkIntervalSec(5)
///             .timeoutSec(5)
///             .healthyThreshold(2)
///             .unhealthyThreshold(10)
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .requestPath("/healthz")
///                 .port(8080)
///                 .build())
///             .build());
///
///         var appserver = new RegionInstanceGroupManager("appserver", RegionInstanceGroupManagerArgs.builder()
///             .name("appserver-igm")
///             .baseInstanceName("app")
///             .region("us-central1")
///             .distributionPolicyZones(
///                 "us-central1-a",
///                 "us-central1-f")
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(appserverGoogleComputeInstanceTemplate.selfLinkUnique())
///                 .build())
///             .allInstancesConfig(RegionInstanceGroupManagerAllInstancesConfigArgs.builder()
///                 .metadata(Map.of("metadata_key", "metadata_value"))
///                 .labels(Map.of("label_key", "label_value"))
///                 .build())
///             .targetPools(appserverGoogleComputeTargetPool.id())
///             .targetSize(2)
///             .namedPorts(RegionInstanceGroupManagerNamedPortArgs.builder()
///                 .name("custom")
///                 .port(8888)
///                 .build())
///             .autoHealingPolicies(RegionInstanceGroupManagerAutoHealingPoliciesArgs.builder()
///                 .healthCheck(autohealing.id())
///                 .initialDelaySec(300)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   autohealing:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: autohealing-health-check
///       checkIntervalSec: 5
///       timeoutSec: 5
///       healthyThreshold: 2
///       unhealthyThreshold: 10 # 50 seconds
///       httpHealthCheck:
///         requestPath: /healthz
///         port: '8080'
///   appserver:
///     type: gcp:compute:RegionInstanceGroupManager
///     properties:
///       name: appserver-igm
///       baseInstanceName: app
///       region: us-central1
///       distributionPolicyZones:
///         - us-central1-a
///         - us-central1-f
///       versions:
///         - instanceTemplate: ${appserverGoogleComputeInstanceTemplate.selfLinkUnique}
///       allInstancesConfig:
///         metadata:
///           metadata_key: metadata_value
///         labels:
///           label_key: label_value
///       targetPools:
///         - ${appserverGoogleComputeTargetPool.id}
///       targetSize: 2
///       namedPorts:
///         - name: custom
///           port: 8888
///       autoHealingPolicies:
///         healthCheck: ${autohealing.id}
///         initialDelaySec: 300
/// ```
///
///
///
/// ### With Multiple Versions
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserver = new gcp.compute.RegionInstanceGroupManager("appserver", {
///     name: "appserver-igm",
///     baseInstanceName: "app",
///     region: "us-central1",
///     targetSize: 5,
///     versions: [
///         {
///             instanceTemplate: appserverGoogleComputeInstanceTemplate.selfLinkUnique,
///         },
///         {
///             instanceTemplate: appserver_canary.selfLinkUnique,
///             targetSize: {
///                 fixed: 1,
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver = gcp.compute.RegionInstanceGroupManager("appserver",
///     name="appserver-igm",
///     base_instance_name="app",
///     region="us-central1",
///     target_size=5,
///     versions=[
///         {
///             "instance_template": appserver_google_compute_instance_template["selfLinkUnique"],
///         },
///         {
///             "instance_template": appserver_canary["selfLinkUnique"],
///             "target_size": {
///                 "fixed": 1,
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appserver = new Gcp.Compute.RegionInstanceGroupManager("appserver", new()
///     {
///         Name = "appserver-igm",
///         BaseInstanceName = "app",
///         Region = "us-central1",
///         TargetSize = 5,
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = appserverGoogleComputeInstanceTemplate.SelfLinkUnique,
///             },
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = appserver_canary.SelfLinkUnique,
///                 TargetSize = new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionTargetSizeArgs
///                 {
///                     Fixed = 1,
///                 },
///             },
///         },
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
/// 		_, err := compute.NewRegionInstanceGroupManager(ctx, "appserver", &compute.RegionInstanceGroupManagerArgs{
/// 			Name:             pulumi.String("appserver-igm"),
/// 			BaseInstanceName: pulumi.String("app"),
/// 			Region:           pulumi.String("us-central1"),
/// 			TargetSize:       pulumi.Int(5),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: pulumi.Any(appserverGoogleComputeInstanceTemplate.SelfLinkUnique),
/// 				},
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: pulumi.Any(appserver_canary.SelfLinkUnique),
/// 					TargetSize: &compute.RegionInstanceGroupManagerVersionTargetSizeArgs{
/// 						Fixed: pulumi.Int(1),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionTargetSizeArgs;
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
///         var appserver = new RegionInstanceGroupManager("appserver", RegionInstanceGroupManagerArgs.builder()
///             .name("appserver-igm")
///             .baseInstanceName("app")
///             .region("us-central1")
///             .targetSize(5)
///             .versions(
///                 RegionInstanceGroupManagerVersionArgs.builder()
///                     .instanceTemplate(appserverGoogleComputeInstanceTemplate.selfLinkUnique())
///                     .build(),
///                 RegionInstanceGroupManagerVersionArgs.builder()
///                     .instanceTemplate(appserver_canary.selfLinkUnique())
///                     .targetSize(RegionInstanceGroupManagerVersionTargetSizeArgs.builder()
///                         .fixed(1)
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appserver:
///     type: gcp:compute:RegionInstanceGroupManager
///     properties:
///       name: appserver-igm
///       baseInstanceName: app
///       region: us-central1
///       targetSize: 5
///       versions:
///         - instanceTemplate: ${appserverGoogleComputeInstanceTemplate.selfLinkUnique}
///         - instanceTemplate: ${["appserver-canary"].selfLinkUnique}
///           targetSize:
///             fixed: 1
/// ```
///
///
/// ### With Standby Policy (`Google` Provider)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const igm_sr = new gcp.compute.RegionInstanceGroupManager("igm-sr", {
///     name: "tf-sr-igm",
///     baseInstanceName: "tf-sr-igm-instance",
///     region: "us-central1",
///     targetSize: 5,
///     versions: [{
///         instanceTemplate: sr_igm.selfLink,
///         name: "primary",
///     }],
///     standbyPolicy: {
///         initialDelaySec: 50,
///         mode: "SCALE_OUT_POOL",
///     },
///     targetSuspendedSize: 1,
///     targetStoppedSize: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// igm_sr = gcp.compute.RegionInstanceGroupManager("igm-sr",
///     name="tf-sr-igm",
///     base_instance_name="tf-sr-igm-instance",
///     region="us-central1",
///     target_size=5,
///     versions=[{
///         "instance_template": sr_igm["selfLink"],
///         "name": "primary",
///     }],
///     standby_policy={
///         "initial_delay_sec": 50,
///         "mode": "SCALE_OUT_POOL",
///     },
///     target_suspended_size=1,
///     target_stopped_size=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var igm_sr = new Gcp.Compute.RegionInstanceGroupManager("igm-sr", new()
///     {
///         Name = "tf-sr-igm",
///         BaseInstanceName = "tf-sr-igm-instance",
///         Region = "us-central1",
///         TargetSize = 5,
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = sr_igm.SelfLink,
///                 Name = "primary",
///             },
///         },
///         StandbyPolicy = new Gcp.Compute.Inputs.RegionInstanceGroupManagerStandbyPolicyArgs
///         {
///             InitialDelaySec = 50,
///             Mode = "SCALE_OUT_POOL",
///         },
///         TargetSuspendedSize = 1,
///         TargetStoppedSize = 1,
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
/// 		_, err := compute.NewRegionInstanceGroupManager(ctx, "igm-sr", &compute.RegionInstanceGroupManagerArgs{
/// 			Name:             pulumi.String("tf-sr-igm"),
/// 			BaseInstanceName: pulumi.String("tf-sr-igm-instance"),
/// 			Region:           pulumi.String("us-central1"),
/// 			TargetSize:       pulumi.Int(5),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: pulumi.Any(sr_igm.SelfLink),
/// 					Name:             pulumi.String("primary"),
/// 				},
/// 			},
/// 			StandbyPolicy: &compute.RegionInstanceGroupManagerStandbyPolicyArgs{
/// 				InitialDelaySec: pulumi.Int(50),
/// 				Mode:            pulumi.String("SCALE_OUT_POOL"),
/// 			},
/// 			TargetSuspendedSize: pulumi.Int(1),
/// 			TargetStoppedSize:   pulumi.Int(1),
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
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerStandbyPolicyArgs;
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
///         var igm_sr = new RegionInstanceGroupManager("igm-sr", RegionInstanceGroupManagerArgs.builder()
///             .name("tf-sr-igm")
///             .baseInstanceName("tf-sr-igm-instance")
///             .region("us-central1")
///             .targetSize(5)
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(sr_igm.selfLink())
///                 .name("primary")
///                 .build())
///             .standbyPolicy(RegionInstanceGroupManagerStandbyPolicyArgs.builder()
///                 .initialDelaySec(50)
///                 .mode("SCALE_OUT_POOL")
///                 .build())
///             .targetSuspendedSize(1)
///             .targetStoppedSize(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   igm-sr:
///     type: gcp:compute:RegionInstanceGroupManager
///     properties:
///       name: tf-sr-igm
///       baseInstanceName: tf-sr-igm-instance
///       region: us-central1
///       targetSize: 5
///       versions:
///         - instanceTemplate: ${["sr-igm"].selfLink}
///           name: primary
///       standbyPolicy:
///         initialDelaySec: 50
///         mode: SCALE_OUT_POOL
///       targetSuspendedSize: 1
///       targetStoppedSize: 1
/// ```
///
///
/// ## Import
///
/// Instance group managers can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instance group managers can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceGroupManager:RegionInstanceGroupManager default {{name}}
/// ```
class RegionInstanceGroupManager extends pulumi.CustomResource {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  late final pulumi.Output<RegionInstanceGroupManagerAllInstancesConfig?> allInstancesConfig;
  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  late final pulumi.Output<RegionInstanceGroupManagerAutoHealingPolicies?> autoHealingPolicies;
  /// The base instance name to use for
  /// instances in this group. The value must be a valid
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt) name. Supported characters
  /// are lowercase letters, numbers, and hyphens (-). Instances are named by
  /// appending a hyphen and a random four-character string to the base instance
  /// name.
  late final pulumi.Output<String> baseInstanceName;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional textual description of the instance
  /// group manager.
  late final pulumi.Output<String?> description;
  /// The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/regional-mig-distribution-shape).
  late final pulumi.Output<String> distributionPolicyTargetShape;
  /// The distribution policy for this managed instance
  /// group. You can specify one or more values. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups#selectingzones).
  late final pulumi.Output<List<String>> distributionPolicyZones;
  /// The fingerprint of the instance group manager.
  late final pulumi.Output<String> fingerprint;
  /// The flexibility policy for managed instance group. Instance flexibility allows managed instance group to create VMs from multiple types of machines. Instance flexibility configuration on managed instance group overrides instance template configuration. Structure is documented below.
  /// - - -
  late final pulumi.Output<RegionInstanceGroupManagerInstanceFlexibilityPolicy?> instanceFlexibilityPolicy;
  /// The full URL of the instance group created by the manager.
  late final pulumi.Output<String> instanceGroup;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> instanceGroupManagerId;
  /// The instance lifecycle policy for this managed instance group.
  late final pulumi.Output<RegionInstanceGroupManagerInstanceLifecyclePolicy> instanceLifecyclePolicy;
  /// Pagination behavior of the `listManagedInstances` API
  /// method for this managed instance group. Valid values are: `PAGELESS`, `PAGINATED`.
  /// If `PAGELESS` (default), Pagination is disabled for the group's `listManagedInstances` API method.
  /// `maxResults` and `pageToken` query parameters are ignored and all instances are returned in a single
  /// response. If `PAGINATED`, pagination is enabled, `maxResults` and `pageToken` query parameters are
  /// respected.
  late final pulumi.Output<String?> listManagedInstancesResults;
  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> name;
  /// The named port configuration. See the section below
  /// for details on configuration.
  late final pulumi.Output<List<RegionInstanceGroupManagerNamedPort>?> namedPorts;
  /// Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  late final pulumi.Output<RegionInstanceGroupManagerParams?> params;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region where the managed instance group resides. If not provided, the provider region is used.
  ///
  /// - - -
  late final pulumi.Output<String> region;
  /// The URL of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  late final pulumi.Output<RegionInstanceGroupManagerStandbyPolicy> standbyPolicy;
  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs). Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the `update_policy`.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatefulDisk>?> statefulDisks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatefulExternalIp>?> statefulExternalIps;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatefulInternalIp>?> statefulInternalIps;
  /// The status of this managed instance group.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatus>> statuses;
  /// The full URL of all target pools to which new
  /// instances in the group are added. Updating the target pools attribute does
  /// not affect existing instances.
  late final pulumi.Output<List<String>?> targetPools;
  /// The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  late final pulumi.Output<int> targetSize;
  /// The target number of stopped instances for this managed instance group.
  late final pulumi.Output<int> targetStoppedSize;
  /// The target number of suspended instances for this managed instance group.
  late final pulumi.Output<int> targetSuspendedSize;
  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagers/patch)
  late final pulumi.Output<RegionInstanceGroupManagerUpdatePolicy> updatePolicy;
  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionInstanceGroupManagerVersion>> versions;
  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, the provider will
  /// continue trying until it times out.
  late final pulumi.Output<bool?> waitForInstances;
  /// When used with `wait_for_instances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  late final pulumi.Output<String?> waitForInstancesStatus;

  /// Creates a new [RegionInstanceGroupManager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionInstanceGroupManager]. {@macro pulumi_compute_region_instance_group_manager_region_instance_group_manager_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionInstanceGroupManager(
    String name, {
    RegionInstanceGroupManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstanceGroupManager:RegionInstanceGroupManager',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allInstancesConfig = registerOutput<RegionInstanceGroupManagerAllInstancesConfig?>('allInstancesConfig');
    this.autoHealingPolicies = registerOutput<RegionInstanceGroupManagerAutoHealingPolicies?>('autoHealingPolicies');
    this.baseInstanceName = registerOutput<String>('baseInstanceName');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.distributionPolicyTargetShape = registerOutput<String>('distributionPolicyTargetShape');
    this.distributionPolicyZones = registerOutput<List<String>>('distributionPolicyZones');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.instanceFlexibilityPolicy = registerOutput<RegionInstanceGroupManagerInstanceFlexibilityPolicy?>('instanceFlexibilityPolicy');
    this.instanceGroup = registerOutput<String>('instanceGroup');
    this.instanceGroupManagerId = registerOutput<int>('instanceGroupManagerId');
    this.instanceLifecyclePolicy = registerOutput<RegionInstanceGroupManagerInstanceLifecyclePolicy>('instanceLifecyclePolicy');
    this.listManagedInstancesResults = registerOutput<String?>('listManagedInstancesResults');
    this.name = registerOutput<String>('name');
    this.namedPorts = registerOutput<List<RegionInstanceGroupManagerNamedPort>?>('namedPorts');
    this.params = registerOutput<RegionInstanceGroupManagerParams?>('params');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.standbyPolicy = registerOutput<RegionInstanceGroupManagerStandbyPolicy>('standbyPolicy');
    this.statefulDisks = registerOutput<List<RegionInstanceGroupManagerStatefulDisk>?>('statefulDisks');
    this.statefulExternalIps = registerOutput<List<RegionInstanceGroupManagerStatefulExternalIp>?>('statefulExternalIps');
    this.statefulInternalIps = registerOutput<List<RegionInstanceGroupManagerStatefulInternalIp>?>('statefulInternalIps');
    this.statuses = registerOutput<List<RegionInstanceGroupManagerStatus>>('statuses');
    this.targetPools = registerOutput<List<String>?>('targetPools');
    this.targetSize = registerOutput<int>('targetSize');
    this.targetStoppedSize = registerOutput<int>('targetStoppedSize');
    this.targetSuspendedSize = registerOutput<int>('targetSuspendedSize');
    this.updatePolicy = registerOutput<RegionInstanceGroupManagerUpdatePolicy>('updatePolicy');
    this.versions = registerOutput<List<RegionInstanceGroupManagerVersion>>('versions');
    this.waitForInstances = registerOutput<bool?>('waitForInstances');
    this.waitForInstancesStatus = registerOutput<String?>('waitForInstancesStatus');
  }
}
