import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_activations_args.dart';
import 'get_activations_result.dart';
import 'get_auto_snapshot_policies_args.dart';
import 'get_auto_snapshot_policies_result.dart';
import 'get_capacity_reservations_args.dart';
import 'get_capacity_reservations_result.dart';
import 'get_commands_args.dart';
import 'get_commands_result.dart';
import 'get_dedicated_hosts_args.dart';
import 'get_dedicated_hosts_result.dart';
import 'get_disks_args.dart';
import 'get_disks_result.dart';
import 'get_ecs_dedicated_host_clusters_args.dart';
import 'get_ecs_dedicated_host_clusters_result.dart';
import 'get_ecs_deployment_sets_args.dart';
import 'get_ecs_deployment_sets_result.dart';
import 'get_ecs_disks_args.dart';
import 'get_ecs_disks_result.dart';
import 'get_ecs_image_components_args.dart';
import 'get_ecs_image_components_result.dart';
import 'get_ecs_image_pipeline_args.dart';
import 'get_ecs_image_pipeline_result.dart';
import 'get_ecs_invocations_args.dart';
import 'get_ecs_invocations_result.dart';
import 'get_ecs_key_pairs_args.dart';
import 'get_ecs_key_pairs_result.dart';
import 'get_ecs_launch_templates_args.dart';
import 'get_ecs_launch_templates_result.dart';
import 'get_ecs_network_interface_permissions_args.dart';
import 'get_ecs_network_interface_permissions_result.dart';
import 'get_ecs_network_interfaces_args.dart';
import 'get_ecs_network_interfaces_result.dart';
import 'get_ecs_prefix_lists_args.dart';
import 'get_ecs_prefix_lists_result.dart';
import 'get_ecs_snapshot_groups_args.dart';
import 'get_ecs_snapshot_groups_result.dart';
import 'get_ecs_snapshots_args.dart';
import 'get_ecs_snapshots_result.dart';
import 'get_ecs_storage_capacity_units_args.dart';
import 'get_ecs_storage_capacity_units_result.dart';
import 'get_eip_addresses_args.dart';
import 'get_eip_addresses_result.dart';
import 'get_eips_args.dart';
import 'get_eips_result.dart';
import 'get_elasticity_assurances_args.dart';
import 'get_elasticity_assurances_result.dart';
import 'get_hpc_clusters_args.dart';
import 'get_hpc_clusters_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_instance_keywords_args.dart';
import 'get_instance_keywords_result.dart';
import 'get_instance_type_families_args.dart';
import 'get_instance_type_families_result.dart';
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_key_pairs_args.dart';
import 'get_key_pairs_result.dart';
import 'get_network_interfaces_args.dart';
import 'get_network_interfaces_result.dart';
import 'get_security_group_rules_args.dart';
import 'get_security_group_rules_result.dart';
import 'get_security_groups_args.dart';
import 'get_security_groups_result.dart';
import 'get_snapshots_args.dart';
import 'get_snapshots_result.dart';

/// This data source provides the Ecs Activations of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.177.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getActivations({});
/// export const ecsActivationId1 = ids.then(ids => ids.activations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_activations()
/// pulumi.export("ecsActivationId1", ids.activations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetActivations.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsActivationId1"] = ids.Apply(getActivationsResult => getActivationsResult.Activations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetActivations(ctx, &ecs.GetActivationsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsActivationId1", ids.Activations[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetActivationsArgs;
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
///         final var ids = EcsFunctions.getActivations(GetActivationsArgs.builder()
///             .build());
///
///         ctx.export("ecsActivationId1", ids.activations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getActivations
///       arguments: {}
/// outputs:
///   ecsActivationId1: ${ids.activations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_activations_get_activations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActivationsResult> getActivations(
  GetActivationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getActivations:getActivations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActivationsResult.fromMap(result);
}

/// This data source provides the Ecs Auto Snapshot Policies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.117.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ecs.getAutoSnapshotPolicies({
///     ids: ["sp-bp14e66xxxxxxxx"],
///     nameRegex: "tf-testAcc",
/// });
/// export const firstEcsAutoSnapshotPolicyId = example.then(example => example.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.get_auto_snapshot_policies(ids=["sp-bp14e66xxxxxxxx"],
///     name_regex="tf-testAcc")
/// pulumi.export("firstEcsAutoSnapshotPolicyId", example.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ecs.GetAutoSnapshotPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "sp-bp14e66xxxxxxxx",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEcsAutoSnapshotPolicyId"] = example.Apply(getAutoSnapshotPoliciesResult => getAutoSnapshotPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.GetAutoSnapshotPolicies(ctx, &ecs.GetAutoSnapshotPoliciesArgs{
/// 			Ids: []string{
/// 				"sp-bp14e66xxxxxxxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEcsAutoSnapshotPolicyId", example.Policies[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetAutoSnapshotPoliciesArgs;
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
///         final var example = EcsFunctions.getAutoSnapshotPolicies(GetAutoSnapshotPoliciesArgs.builder()
///             .ids("sp-bp14e66xxxxxxxx")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("firstEcsAutoSnapshotPolicyId", example.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getAutoSnapshotPolicies
///       arguments:
///         ids:
///           - sp-bp14e66xxxxxxxx
///         nameRegex: tf-testAcc
/// outputs:
///   firstEcsAutoSnapshotPolicyId: ${example.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_auto_snapshot_policies_get_auto_snapshot_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoSnapshotPoliciesResult> getAutoSnapshotPolicies(
  GetAutoSnapshotPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getAutoSnapshotPolicies:getAutoSnapshotPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoSnapshotPoliciesResult.fromMap(result);
}

/// This data source provides Ecs Capacity Reservation available to the user.
///
/// > **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ecs.getCapacityReservations({
///     ids: [defaultAlicloudEcsCapacityReservation.id],
///     nameRegex: defaultAlicloudEcsCapacityReservation.name,
///     instanceType: "ecs.c6.large",
///     platform: "linux",
/// });
/// export const alicloudEcsCapacityReservationExampleId = _default.then(_default => _default.reservations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.get_capacity_reservations(ids=[default_alicloud_ecs_capacity_reservation["id"]],
///     name_regex=default_alicloud_ecs_capacity_reservation["name"],
///     instance_type="ecs.c6.large",
///     platform="linux")
/// pulumi.export("alicloudEcsCapacityReservationExampleId", default.reservations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecs.GetCapacityReservations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudEcsCapacityReservation.Id,
///         },
///         NameRegex = defaultAlicloudEcsCapacityReservation.Name,
///         InstanceType = "ecs.c6.large",
///         Platform = "linux",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEcsCapacityReservationExampleId"] = @default.Apply(@default => @default.Apply(getCapacityReservationsResult => getCapacityReservationsResult.Reservations[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := ecs.GetCapacityReservations(ctx, &ecs.GetCapacityReservationsArgs{
/// Ids: interface{}{
/// defaultAlicloudEcsCapacityReservation.Id,
/// },
/// NameRegex: pulumi.StringRef(defaultAlicloudEcsCapacityReservation.Name),
/// InstanceType: pulumi.StringRef("ecs.c6.large"),
/// Platform: pulumi.StringRef("linux"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudEcsCapacityReservationExampleId", _default.Reservations[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetCapacityReservationsArgs;
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
///         final var default = EcsFunctions.getCapacityReservations(GetCapacityReservationsArgs.builder()
///             .ids(defaultAlicloudEcsCapacityReservation.id())
///             .nameRegex(defaultAlicloudEcsCapacityReservation.name())
///             .instanceType("ecs.c6.large")
///             .platform("linux")
///             .build());
///
///         ctx.export("alicloudEcsCapacityReservationExampleId", default_.reservations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getCapacityReservations
///       arguments:
///         ids:
///           - ${defaultAlicloudEcsCapacityReservation.id}
///         nameRegex: ${defaultAlicloudEcsCapacityReservation.name}
///         instanceType: ecs.c6.large
///         platform: linux
/// outputs:
///   alicloudEcsCapacityReservationExampleId: ${default.reservations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_capacity_reservations_get_capacity_reservations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityReservationsResult> getCapacityReservations(
  GetCapacityReservationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getCapacityReservations:getCapacityReservations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityReservationsResult.fromMap(result);
}

/// This data source provides the Ecs Commands of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.116.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ecs.getCommands({
///     ids: ["E2RY53-xxxx"],
///     nameRegex: "tf-testAcc",
/// });
/// export const firstEcsCommandId = example.then(example => example.commands?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.get_commands(ids=["E2RY53-xxxx"],
///     name_regex="tf-testAcc")
/// pulumi.export("firstEcsCommandId", example.commands[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ecs.GetCommands.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "E2RY53-xxxx",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEcsCommandId"] = example.Apply(getCommandsResult => getCommandsResult.Commands[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.GetCommands(ctx, &ecs.GetCommandsArgs{
/// 			Ids: []string{
/// 				"E2RY53-xxxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEcsCommandId", example.Commands[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetCommandsArgs;
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
///         final var example = EcsFunctions.getCommands(GetCommandsArgs.builder()
///             .ids("E2RY53-xxxx")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("firstEcsCommandId", example.commands()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getCommands
///       arguments:
///         ids:
///           - E2RY53-xxxx
///         nameRegex: tf-testAcc
/// outputs:
///   firstEcsCommandId: ${example.commands[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_commands_get_commands_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommandsResult> getCommands(
  GetCommandsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getCommands:getCommands',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommandsResult.fromMap(result);
}

/// This data source provides the ECS Dedicated Hosts of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.91.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.ecs.DedicatedHost("default", {
///     dedicatedHostType: "ddh.c5",
///     description: "From_Terraform",
///     dedicatedHostName: name,
///     actionOnMaintenance: "Migrate",
///     tags: {
///         Create: "TF",
///         For: "ddh-test",
///     },
/// });
/// const ids = alicloud.ecs.getDedicatedHostsOutput({
///     ids: [_default.id],
/// });
/// export const ecsDedicatedHostId0 = ids.apply(ids => ids.hosts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ecs.DedicatedHost("default",
///     dedicated_host_type="ddh.c5",
///     description="From_Terraform",
///     dedicated_host_name=name,
///     action_on_maintenance="Migrate",
///     tags={
///         "Create": "TF",
///         "For": "ddh-test",
///     })
/// ids = alicloud.ecs.get_dedicated_hosts_output(ids=[default.id])
/// pulumi.export("ecsDedicatedHostId0", ids.hosts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Ecs.DedicatedHost("default", new()
///     {
///         DedicatedHostType = "ddh.c5",
///         Description = "From_Terraform",
///         DedicatedHostName = name,
///         ActionOnMaintenance = "Migrate",
///         Tags =
///         {
///             { "Create", "TF" },
///             { "For", "ddh-test" },
///         },
///     });
///
///     var ids = AliCloud.Ecs.GetDedicatedHosts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsDedicatedHostId0"] = ids.Apply(getDedicatedHostsResult => getDedicatedHostsResult.Hosts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := ecs.NewDedicatedHost(ctx, "default", &ecs.DedicatedHostArgs{
/// 			DedicatedHostType:   pulumi.String("ddh.c5"),
/// 			Description:         pulumi.String("From_Terraform"),
/// 			DedicatedHostName:   pulumi.String(name),
/// 			ActionOnMaintenance: pulumi.String("Migrate"),
/// 			Tags: pulumi.StringMap{
/// 				"Create": pulumi.String("TF"),
/// 				"For":    pulumi.String("ddh-test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := ecs.GetDedicatedHostsOutput(ctx, ecs.GetDedicatedHostsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ecsDedicatedHostId0", ids.ApplyT(func(ids ecs.GetDedicatedHostsResult) (*string, error) {
/// 			return &ids.Hosts[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ecs.DedicatedHost;
/// import com.pulumi.alicloud.ecs.DedicatedHostArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetDedicatedHostsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new DedicatedHost("default", DedicatedHostArgs.builder()
///             .dedicatedHostType("ddh.c5")
///             .description("From_Terraform")
///             .dedicatedHostName(name)
///             .actionOnMaintenance("Migrate")
///             .tags(Map.ofEntries(
///                 Map.entry("Create", "TF"),
///                 Map.entry("For", "ddh-test")
///             ))
///             .build());
///
///         final var ids = EcsFunctions.getDedicatedHosts(GetDedicatedHostsArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("ecsDedicatedHostId0", ids.applyValue(_ids -> _ids.hosts()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:ecs:DedicatedHost
///     properties:
///       dedicatedHostType: ddh.c5
///       description: From_Terraform
///       dedicatedHostName: ${name}
///       actionOnMaintenance: Migrate
///       tags:
///         Create: TF
///         For: ddh-test
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getDedicatedHosts
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   ecsDedicatedHostId0: ${ids.hosts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_dedicated_hosts_get_dedicated_hosts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostsResult> getDedicatedHosts(
  GetDedicatedHostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getDedicatedHosts:getDedicatedHosts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostsResult.fromMap(result);
}

/// > **DEPRECATED:** This datasource has been renamed to alicloud.ecs.getEcsDisks from version 1.122.0.
///
/// This data source provides the disks of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const disksDs = alicloud.ecs.getDisks({
///     nameRegex: "sample_disk",
/// });
/// export const firstDiskId = disksDs.then(disksDs => disksDs.disks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// disks_ds = alicloud.ecs.get_disks(name_regex="sample_disk")
/// pulumi.export("firstDiskId", disks_ds.disks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disksDs = AliCloud.Ecs.GetDisks.Invoke(new()
///     {
///         NameRegex = "sample_disk",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDiskId"] = disksDs.Apply(getDisksResult => getDisksResult.Disks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		disksDs, err := ecs.GetDisks(ctx, &ecs.GetDisksArgs{
/// 			NameRegex: pulumi.StringRef("sample_disk"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDiskId", disksDs.Disks[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetDisksArgs;
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
///         final var disksDs = EcsFunctions.getDisks(GetDisksArgs.builder()
///             .nameRegex("sample_disk")
///             .build());
///
///         ctx.export("firstDiskId", disksDs.disks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   disksDs:
///     fn::invoke:
///       function: alicloud:ecs:getDisks
///       arguments:
///         nameRegex: sample_disk
/// outputs:
///   firstDiskId: ${disksDs.disks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_disks_get_disks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDisksResult> getDisks(
  GetDisksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getDisks:getDisks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDisksResult.fromMap(result);
}

/// This data source provides the Ecs Dedicated Host Clusters of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.146.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsDedicatedHostClusters({
///     ids: ["example_id"],
/// });
/// export const ecsDedicatedHostClusterId1 = ids.then(ids => ids.clusters?.[0]?.id);
/// const nameRegex = alicloud.ecs.getEcsDedicatedHostClusters({
///     nameRegex: "^my-DedicatedHostCluster",
/// });
/// export const ecsDedicatedHostClusterId2 = nameRegex.then(nameRegex => nameRegex.clusters?.[0]?.id);
/// const zoneId = alicloud.ecs.getEcsDedicatedHostClusters({
///     zoneId: "example_value",
/// });
/// export const ecsDedicatedHostClusterId3 = zoneId.then(zoneId => zoneId.clusters?.[0]?.id);
/// const clusterName = alicloud.ecs.getEcsDedicatedHostClusters({
///     dedicatedHostClusterName: "example_value",
/// });
/// export const ecsDedicatedHostClusterId4 = clusterName.then(clusterName => clusterName.clusters?.[0]?.id);
/// const clusterIds = alicloud.ecs.getEcsDedicatedHostClusters({
///     dedicatedHostClusterIds: ["example_id"],
/// });
/// export const ecsDedicatedHostClusterId5 = clusterIds.then(clusterIds => clusterIds.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_dedicated_host_clusters(ids=["example_id"])
/// pulumi.export("ecsDedicatedHostClusterId1", ids.clusters[0].id)
/// name_regex = alicloud.ecs.get_ecs_dedicated_host_clusters(name_regex="^my-DedicatedHostCluster")
/// pulumi.export("ecsDedicatedHostClusterId2", name_regex.clusters[0].id)
/// zone_id = alicloud.ecs.get_ecs_dedicated_host_clusters(zone_id="example_value")
/// pulumi.export("ecsDedicatedHostClusterId3", zone_id.clusters[0].id)
/// cluster_name = alicloud.ecs.get_ecs_dedicated_host_clusters(dedicated_host_cluster_name="example_value")
/// pulumi.export("ecsDedicatedHostClusterId4", cluster_name.clusters[0].id)
/// cluster_ids = alicloud.ecs.get_ecs_dedicated_host_clusters(dedicated_host_cluster_ids=["example_id"])
/// pulumi.export("ecsDedicatedHostClusterId5", cluster_ids.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsDedicatedHostClusters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Ecs.GetEcsDedicatedHostClusters.Invoke(new()
///     {
///         NameRegex = "^my-DedicatedHostCluster",
///     });
///
///     var zoneId = AliCloud.Ecs.GetEcsDedicatedHostClusters.Invoke(new()
///     {
///         ZoneId = "example_value",
///     });
///
///     var clusterName = AliCloud.Ecs.GetEcsDedicatedHostClusters.Invoke(new()
///     {
///         DedicatedHostClusterName = "example_value",
///     });
///
///     var clusterIds = AliCloud.Ecs.GetEcsDedicatedHostClusters.Invoke(new()
///     {
///         DedicatedHostClusterIds = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsDedicatedHostClusterId1"] = ids.Apply(getEcsDedicatedHostClustersResult => getEcsDedicatedHostClustersResult.Clusters[0]?.Id),
///         ["ecsDedicatedHostClusterId2"] = nameRegex.Apply(getEcsDedicatedHostClustersResult => getEcsDedicatedHostClustersResult.Clusters[0]?.Id),
///         ["ecsDedicatedHostClusterId3"] = zoneId.Apply(getEcsDedicatedHostClustersResult => getEcsDedicatedHostClustersResult.Clusters[0]?.Id),
///         ["ecsDedicatedHostClusterId4"] = clusterName.Apply(getEcsDedicatedHostClustersResult => getEcsDedicatedHostClustersResult.Clusters[0]?.Id),
///         ["ecsDedicatedHostClusterId5"] = clusterIds.Apply(getEcsDedicatedHostClustersResult => getEcsDedicatedHostClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetEcsDedicatedHostClusters(ctx, &ecs.GetEcsDedicatedHostClustersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsDedicatedHostClusterId1", ids.Clusters[0].Id)
/// 		nameRegex, err := ecs.GetEcsDedicatedHostClusters(ctx, &ecs.GetEcsDedicatedHostClustersArgs{
/// 			NameRegex: pulumi.StringRef("^my-DedicatedHostCluster"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsDedicatedHostClusterId2", nameRegex.Clusters[0].Id)
/// 		zoneId, err := ecs.GetEcsDedicatedHostClusters(ctx, &ecs.GetEcsDedicatedHostClustersArgs{
/// 			ZoneId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsDedicatedHostClusterId3", zoneId.Clusters[0].Id)
/// 		clusterName, err := ecs.GetEcsDedicatedHostClusters(ctx, &ecs.GetEcsDedicatedHostClustersArgs{
/// 			DedicatedHostClusterName: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsDedicatedHostClusterId4", clusterName.Clusters[0].Id)
/// 		clusterIds, err := ecs.GetEcsDedicatedHostClusters(ctx, &ecs.GetEcsDedicatedHostClustersArgs{
/// 			DedicatedHostClusterIds: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsDedicatedHostClusterId5", clusterIds.Clusters[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsDedicatedHostClustersArgs;
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
///         final var ids = EcsFunctions.getEcsDedicatedHostClusters(GetEcsDedicatedHostClustersArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ecsDedicatedHostClusterId1", ids.clusters()[0].id());
///         final var nameRegex = EcsFunctions.getEcsDedicatedHostClusters(GetEcsDedicatedHostClustersArgs.builder()
///             .nameRegex("^my-DedicatedHostCluster")
///             .build());
///
///         ctx.export("ecsDedicatedHostClusterId2", nameRegex.clusters()[0].id());
///         final var zoneId = EcsFunctions.getEcsDedicatedHostClusters(GetEcsDedicatedHostClustersArgs.builder()
///             .zoneId("example_value")
///             .build());
///
///         ctx.export("ecsDedicatedHostClusterId3", zoneId.clusters()[0].id());
///         final var clusterName = EcsFunctions.getEcsDedicatedHostClusters(GetEcsDedicatedHostClustersArgs.builder()
///             .dedicatedHostClusterName("example_value")
///             .build());
///
///         ctx.export("ecsDedicatedHostClusterId4", clusterName.clusters()[0].id());
///         final var clusterIds = EcsFunctions.getEcsDedicatedHostClusters(GetEcsDedicatedHostClustersArgs.builder()
///             .dedicatedHostClusterIds("example_id")
///             .build());
///
///         ctx.export("ecsDedicatedHostClusterId5", clusterIds.clusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDedicatedHostClusters
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDedicatedHostClusters
///       arguments:
///         nameRegex: ^my-DedicatedHostCluster
///   zoneId:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDedicatedHostClusters
///       arguments:
///         zoneId: example_value
///   clusterName:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDedicatedHostClusters
///       arguments:
///         dedicatedHostClusterName: example_value
///   clusterIds:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDedicatedHostClusters
///       arguments:
///         dedicatedHostClusterIds:
///           - example_id
/// outputs:
///   ecsDedicatedHostClusterId1: ${ids.clusters[0].id}
///   ecsDedicatedHostClusterId2: ${nameRegex.clusters[0].id}
///   ecsDedicatedHostClusterId3: ${zoneId.clusters[0].id}
///   ecsDedicatedHostClusterId4: ${clusterName.clusters[0].id}
///   ecsDedicatedHostClusterId5: ${clusterIds.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_dedicated_host_clusters_get_ecs_dedicated_host_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsDedicatedHostClustersResult> getEcsDedicatedHostClusters(
  GetEcsDedicatedHostClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsDedicatedHostClusters:getEcsDedicatedHostClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsDedicatedHostClustersResult.fromMap(result);
}

/// This data source provides the Ecs Deployment Sets of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.140.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsDeploymentSets({
///     ids: ["example_id"],
/// });
/// export const ecsDeploymentSetId1 = ids.then(ids => ids.sets?.[0]?.id);
/// const nameRegex = alicloud.ecs.getEcsDeploymentSets({
///     nameRegex: "^my-DeploymentSet",
/// });
/// export const ecsDeploymentSetId2 = nameRegex.then(nameRegex => nameRegex.sets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_deployment_sets(ids=["example_id"])
/// pulumi.export("ecsDeploymentSetId1", ids.sets[0].id)
/// name_regex = alicloud.ecs.get_ecs_deployment_sets(name_regex="^my-DeploymentSet")
/// pulumi.export("ecsDeploymentSetId2", name_regex.sets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsDeploymentSets.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Ecs.GetEcsDeploymentSets.Invoke(new()
///     {
///         NameRegex = "^my-DeploymentSet",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsDeploymentSetId1"] = ids.Apply(getEcsDeploymentSetsResult => getEcsDeploymentSetsResult.Sets[0]?.Id),
///         ["ecsDeploymentSetId2"] = nameRegex.Apply(getEcsDeploymentSetsResult => getEcsDeploymentSetsResult.Sets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetEcsDeploymentSets(ctx, &ecs.GetEcsDeploymentSetsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsDeploymentSetId1", ids.Sets[0].Id)
/// 		nameRegex, err := ecs.GetEcsDeploymentSets(ctx, &ecs.GetEcsDeploymentSetsArgs{
/// 			NameRegex: pulumi.StringRef("^my-DeploymentSet"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsDeploymentSetId2", nameRegex.Sets[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsDeploymentSetsArgs;
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
///         final var ids = EcsFunctions.getEcsDeploymentSets(GetEcsDeploymentSetsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ecsDeploymentSetId1", ids.sets()[0].id());
///         final var nameRegex = EcsFunctions.getEcsDeploymentSets(GetEcsDeploymentSetsArgs.builder()
///             .nameRegex("^my-DeploymentSet")
///             .build());
///
///         ctx.export("ecsDeploymentSetId2", nameRegex.sets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDeploymentSets
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDeploymentSets
///       arguments:
///         nameRegex: ^my-DeploymentSet
/// outputs:
///   ecsDeploymentSetId1: ${ids.sets[0].id}
///   ecsDeploymentSetId2: ${nameRegex.sets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_deployment_sets_get_ecs_deployment_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsDeploymentSetsResult> getEcsDeploymentSets(
  GetEcsDeploymentSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsDeploymentSets:getEcsDeploymentSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsDeploymentSetsResult.fromMap(result);
}

/// This data source provides the Ecs Disks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.122.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultEcsDisk = new alicloud.ecs.EcsDisk("default", {
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     diskName: "terraform-example",
///     description: "terraform-example",
///     category: "cloud_efficiency",
///     size: 30,
///     tags: {
///         Name: "terraform-example",
///     },
/// });
/// const ids = alicloud.ecs.getEcsDisksOutput({
///     ids: [defaultEcsDisk.id],
/// });
/// export const ecsDiskId0 = ids.apply(ids => ids.disks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_ecs_disk = alicloud.ecs.EcsDisk("default",
///     zone_id=default.zones[0].id,
///     disk_name="terraform-example",
///     description="terraform-example",
///     category="cloud_efficiency",
///     size=30,
///     tags={
///         "Name": "terraform-example",
///     })
/// ids = alicloud.ecs.get_ecs_disks_output(ids=[default_ecs_disk.id])
/// pulumi.export("ecsDiskId0", ids.disks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultEcsDisk = new AliCloud.Ecs.EcsDisk("default", new()
///     {
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         DiskName = "terraform-example",
///         Description = "terraform-example",
///         Category = "cloud_efficiency",
///         Size = 30,
///         Tags =
///         {
///             { "Name", "terraform-example" },
///         },
///     });
///
///     var ids = AliCloud.Ecs.GetEcsDisks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultEcsDisk.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsDiskId0"] = ids.Apply(getEcsDisksResult => getEcsDisksResult.Disks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsDisk, err := ecs.NewEcsDisk(ctx, "default", &ecs.EcsDiskArgs{
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			DiskName:    pulumi.String("terraform-example"),
/// 			Description: pulumi.String("terraform-example"),
/// 			Category:    pulumi.String("cloud_efficiency"),
/// 			Size:        pulumi.Int(30),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("terraform-example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := ecs.GetEcsDisksOutput(ctx, ecs.GetEcsDisksOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultEcsDisk.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ecsDiskId0", ids.ApplyT(func(ids ecs.GetEcsDisksResult) (*string, error) {
/// 			return &ids.Disks[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsDisk;
/// import com.pulumi.alicloud.ecs.EcsDiskArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsDisksArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultEcsDisk = new EcsDisk("defaultEcsDisk", EcsDiskArgs.builder()
///             .zoneId(default_.zones()[0].id())
///             .diskName("terraform-example")
///             .description("terraform-example")
///             .category("cloud_efficiency")
///             .size(30)
///             .tags(Map.of("Name", "terraform-example"))
///             .build());
///
///         final var ids = EcsFunctions.getEcsDisks(GetEcsDisksArgs.builder()
///             .ids(defaultEcsDisk.id())
///             .build());
///
///         ctx.export("ecsDiskId0", ids.applyValue(_ids -> _ids.disks()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultEcsDisk:
///     type: alicloud:ecs:EcsDisk
///     name: default
///     properties:
///       zoneId: ${default.zones[0].id}
///       diskName: terraform-example
///       description: terraform-example
///       category: cloud_efficiency
///       size: '30'
///       tags:
///         Name: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsDisks
///       arguments:
///         ids:
///           - ${defaultEcsDisk.id}
/// outputs:
///   ecsDiskId0: ${ids.disks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_disks_get_ecs_disks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsDisksResult> getEcsDisks(
  GetEcsDisksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsDisks:getEcsDisks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsDisksResult.fromMap(result);
}

/// This data source provides the Ecs Image Components of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.159.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsImageComponents({
///     ids: ["example_id"],
/// });
/// export const ecsImageComponentId1 = ids.then(ids => ids.components?.[0]?.id);
/// const nameRegex = alicloud.ecs.getEcsImageComponents({
///     nameRegex: "^my-ImageComponent",
/// });
/// export const ecsImageComponentId2 = nameRegex.then(nameRegex => nameRegex.components?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_image_components(ids=["example_id"])
/// pulumi.export("ecsImageComponentId1", ids.components[0].id)
/// name_regex = alicloud.ecs.get_ecs_image_components(name_regex="^my-ImageComponent")
/// pulumi.export("ecsImageComponentId2", name_regex.components[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsImageComponents.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Ecs.GetEcsImageComponents.Invoke(new()
///     {
///         NameRegex = "^my-ImageComponent",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsImageComponentId1"] = ids.Apply(getEcsImageComponentsResult => getEcsImageComponentsResult.Components[0]?.Id),
///         ["ecsImageComponentId2"] = nameRegex.Apply(getEcsImageComponentsResult => getEcsImageComponentsResult.Components[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetEcsImageComponents(ctx, &ecs.GetEcsImageComponentsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsImageComponentId1", ids.Components[0].Id)
/// 		nameRegex, err := ecs.GetEcsImageComponents(ctx, &ecs.GetEcsImageComponentsArgs{
/// 			NameRegex: pulumi.StringRef("^my-ImageComponent"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsImageComponentId2", nameRegex.Components[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsImageComponentsArgs;
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
///         final var ids = EcsFunctions.getEcsImageComponents(GetEcsImageComponentsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ecsImageComponentId1", ids.components()[0].id());
///         final var nameRegex = EcsFunctions.getEcsImageComponents(GetEcsImageComponentsArgs.builder()
///             .nameRegex("^my-ImageComponent")
///             .build());
///
///         ctx.export("ecsImageComponentId2", nameRegex.components()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsImageComponents
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ecs:getEcsImageComponents
///       arguments:
///         nameRegex: ^my-ImageComponent
/// outputs:
///   ecsImageComponentId1: ${ids.components[0].id}
///   ecsImageComponentId2: ${nameRegex.components[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_image_components_get_ecs_image_components_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsImageComponentsResult> getEcsImageComponents(
  GetEcsImageComponentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsImageComponents:getEcsImageComponents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsImageComponentsResult.fromMap(result);
}

/// This data source provides the Ecs Image Pipelines of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.163.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsImagePipeline({
///     ids: ["example_value"],
/// });
/// export const ecsImagePipelineId1 = ids.then(ids => ids.pipelines?.[0]?.id);
/// const nameRegex = alicloud.ecs.getEcsImagePipeline({
///     nameRegex: "^my-ImagePipeline",
/// });
/// export const ecsImagePipelineId2 = nameRegex.then(nameRegex => nameRegex.pipelines?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_image_pipeline(ids=["example_value"])
/// pulumi.export("ecsImagePipelineId1", ids.pipelines[0].id)
/// name_regex = alicloud.ecs.get_ecs_image_pipeline(name_regex="^my-ImagePipeline")
/// pulumi.export("ecsImagePipelineId2", name_regex.pipelines[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsImagePipeline.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var nameRegex = AliCloud.Ecs.GetEcsImagePipeline.Invoke(new()
///     {
///         NameRegex = "^my-ImagePipeline",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsImagePipelineId1"] = ids.Apply(getEcsImagePipelineResult => getEcsImagePipelineResult.Pipelines[0]?.Id),
///         ["ecsImagePipelineId2"] = nameRegex.Apply(getEcsImagePipelineResult => getEcsImagePipelineResult.Pipelines[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.LookupEcsImagePipeline(ctx, &ecs.LookupEcsImagePipelineArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsImagePipelineId1", ids.Pipelines[0].Id)
/// 		nameRegex, err := ecs.LookupEcsImagePipeline(ctx, &ecs.LookupEcsImagePipelineArgs{
/// 			NameRegex: pulumi.StringRef("^my-ImagePipeline"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsImagePipelineId2", nameRegex.Pipelines[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsImagePipelineArgs;
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
///         final var ids = EcsFunctions.getEcsImagePipeline(GetEcsImagePipelineArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("ecsImagePipelineId1", ids.pipelines()[0].id());
///         final var nameRegex = EcsFunctions.getEcsImagePipeline(GetEcsImagePipelineArgs.builder()
///             .nameRegex("^my-ImagePipeline")
///             .build());
///
///         ctx.export("ecsImagePipelineId2", nameRegex.pipelines()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsImagePipeline
///       arguments:
///         ids:
///           - example_value
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ecs:getEcsImagePipeline
///       arguments:
///         nameRegex: ^my-ImagePipeline
/// outputs:
///   ecsImagePipelineId1: ${ids.pipelines[0].id}
///   ecsImagePipelineId2: ${nameRegex.pipelines[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_image_pipeline_get_ecs_image_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsImagePipelineResult> getEcsImagePipeline(
  GetEcsImagePipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsImagePipeline:getEcsImagePipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsImagePipelineResult.fromMap(result);
}

/// This data source provides the Ecs Invocations of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.168.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsInvocations({
///     ids: ["example-id"],
/// });
/// export const ecsInvocationId1 = ids.then(ids => ids.invocations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_invocations(ids=["example-id"])
/// pulumi.export("ecsInvocationId1", ids.invocations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsInvocations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example-id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsInvocationId1"] = ids.Apply(getEcsInvocationsResult => getEcsInvocationsResult.Invocations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetEcsInvocations(ctx, &ecs.GetEcsInvocationsArgs{
/// 			Ids: []string{
/// 				"example-id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsInvocationId1", ids.Invocations[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsInvocationsArgs;
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
///         final var ids = EcsFunctions.getEcsInvocations(GetEcsInvocationsArgs.builder()
///             .ids("example-id")
///             .build());
///
///         ctx.export("ecsInvocationId1", ids.invocations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsInvocations
///       arguments:
///         ids:
///           - example-id
/// outputs:
///   ecsInvocationId1: ${ids.invocations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_invocations_get_ecs_invocations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsInvocationsResult> getEcsInvocations(
  GetEcsInvocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsInvocations:getEcsInvocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsInvocationsResult.fromMap(result);
}

/// This data source provides the Ecs Key Pairs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.121.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultEcsKeyPair = new alicloud.ecs.EcsKeyPair("default", {
///     keyPairName: name,
///     publicKey: "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
///     resourceGroupId: _default.then(_default => _default.ids?.[1]),
///     tags: {
///         Created: "TF",
///         For: "KeyPair",
///     },
/// });
/// const ids = alicloud.ecs.getEcsKeyPairsOutput({
///     ids: [defaultEcsKeyPair.id],
/// });
/// export const ecsKeyPairId0 = ids.apply(ids => ids.pairs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_ecs_key_pair = alicloud.ecs.EcsKeyPair("default",
///     key_pair_name=name,
///     public_key="ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
///     resource_group_id=default.ids[1],
///     tags={
///         "Created": "TF",
///         "For": "KeyPair",
///     })
/// ids = alicloud.ecs.get_ecs_key_pairs_output(ids=[default_ecs_key_pair.id])
/// pulumi.export("ecsKeyPairId0", ids.pairs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultEcsKeyPair = new AliCloud.Ecs.EcsKeyPair("default", new()
///     {
///         KeyPairName = name,
///         PublicKey = "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[1])),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "KeyPair" },
///         },
///     });
///
///     var ids = AliCloud.Ecs.GetEcsKeyPairs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultEcsKeyPair.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsKeyPairId0"] = ids.Apply(getEcsKeyPairsResult => getEcsKeyPairsResult.Pairs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsKeyPair, err := ecs.NewEcsKeyPair(ctx, "default", &ecs.EcsKeyPairArgs{
/// 			KeyPairName:     pulumi.String(name),
/// 			PublicKey:       pulumi.String("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg"),
/// 			ResourceGroupId: pulumi.String(_default.Ids[1]),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("KeyPair"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := ecs.GetEcsKeyPairsOutput(ctx, ecs.GetEcsKeyPairsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultEcsKeyPair.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ecsKeyPairId0", ids.ApplyT(func(ids ecs.GetEcsKeyPairsResult) (*string, error) {
/// 			return &ids.Pairs[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsKeyPairsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultEcsKeyPair = new EcsKeyPair("defaultEcsKeyPair", EcsKeyPairArgs.builder()
///             .keyPairName(name)
///             .publicKey("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
///             .resourceGroupId(default_.ids()[1])
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "KeyPair")
///             ))
///             .build());
///
///         final var ids = EcsFunctions.getEcsKeyPairs(GetEcsKeyPairsArgs.builder()
///             .ids(defaultEcsKeyPair.id())
///             .build());
///
///         ctx.export("ecsKeyPairId0", ids.applyValue(_ids -> _ids.pairs()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultEcsKeyPair:
///     type: alicloud:ecs:EcsKeyPair
///     name: default
///     properties:
///       keyPairName: ${name}
///       publicKey: ssh-rsa AAAAB3Nza12345678qwertyuudsfsg
///       resourceGroupId: ${default.ids[1]}
///       tags:
///         Created: TF
///         For: KeyPair
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsKeyPairs
///       arguments:
///         ids:
///           - ${defaultEcsKeyPair.id}
/// outputs:
///   ecsKeyPairId0: ${ids.pairs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_key_pairs_get_ecs_key_pairs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsKeyPairsResult> getEcsKeyPairs(
  GetEcsKeyPairsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsKeyPairs:getEcsKeyPairs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsKeyPairsResult.fromMap(result);
}

/// This data source provides the Ecs Launch Templates of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.120.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: "terraform-example",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultEcsLaunchTemplate = new alicloud.ecs.EcsLaunchTemplate("default", {
///     launchTemplateName: "terraform-example",
///     description: "terraform-example",
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     hostName: "terraform-example",
///     instanceChargeType: "PrePaid",
///     instanceName: "terraform-example",
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     internetChargeType: "PayByBandwidth",
///     internetMaxBandwidthIn: 5,
///     internetMaxBandwidthOut: 5,
///     ioOptimized: "optimized",
///     keyPairName: "key_pair_name",
///     ramRoleName: "ram_role_name",
///     networkType: "vpc",
///     securityEnhancementStrategy: "Active",
///     spotPriceLimit: 5,
///     spotStrategy: "SpotWithPriceLimit",
///     securityGroupIds: [defaultSecurityGroup.id],
///     systemDisk: {
///         category: "cloud_ssd",
///         description: "Test For Terraform",
///         name: "terraform-example",
///         size: 40,
///         deleteWithInstance: false,
///     },
///     userData: "xxxxxxx",
///     vswitchId: defaultSwitch.id,
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     templateTags: {
///         Create: "Terraform",
///         For: "example",
///     },
///     networkInterfaces: {
///         name: "eth0",
///         description: "hello1",
///         primaryIp: "10.0.0.2",
///         securityGroupId: defaultSecurityGroup.id,
///         vswitchId: defaultSwitch.id,
///     },
///     dataDisks: [
///         {
///             name: "disk1",
///             description: "description",
///             deleteWithInstance: true,
///             category: "cloud",
///             encrypted: false,
///             performanceLevel: "PL0",
///             size: 20,
///         },
///         {
///             name: "disk2",
///             description: "description2",
///             deleteWithInstance: true,
///             category: "cloud",
///             encrypted: false,
///             performanceLevel: "PL0",
///             size: 20,
///         },
///     ],
/// });
/// const ids = alicloud.ecs.getEcsLaunchTemplatesOutput({
///     ids: [defaultEcsLaunchTemplate.id],
/// });
/// export const ecsLaunchTemplateId0 = ids.apply(ids => ids.templates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name="terraform-example",
///     vpc_id=default_network.id)
/// default_ecs_launch_template = alicloud.ecs.EcsLaunchTemplate("default",
///     launch_template_name="terraform-example",
///     description="terraform-example",
///     image_id=default_get_images.images[0].id,
///     host_name="terraform-example",
///     instance_charge_type="PrePaid",
///     instance_name="terraform-example",
///     instance_type=default_get_instance_types.instance_types[0].id,
///     internet_charge_type="PayByBandwidth",
///     internet_max_bandwidth_in=5,
///     internet_max_bandwidth_out=5,
///     io_optimized="optimized",
///     key_pair_name="key_pair_name",
///     ram_role_name="ram_role_name",
///     network_type="vpc",
///     security_enhancement_strategy="Active",
///     spot_price_limit=5,
///     spot_strategy="SpotWithPriceLimit",
///     security_group_ids=[default_security_group.id],
///     system_disk={
///         "category": "cloud_ssd",
///         "description": "Test For Terraform",
///         "name": "terraform-example",
///         "size": 40,
///         "delete_with_instance": False,
///     },
///     user_data="xxxxxxx",
///     vswitch_id=default_switch.id,
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id,
///     template_tags={
///         "Create": "Terraform",
///         "For": "example",
///     },
///     network_interfaces={
///         "name": "eth0",
///         "description": "hello1",
///         "primary_ip": "10.0.0.2",
///         "security_group_id": default_security_group.id,
///         "vswitch_id": default_switch.id,
///     },
///     data_disks=[
///         {
///             "name": "disk1",
///             "description": "description",
///             "delete_with_instance": True,
///             "category": "cloud",
///             "encrypted": False,
///             "performance_level": "PL0",
///             "size": 20,
///         },
///         {
///             "name": "disk2",
///             "description": "description2",
///             "delete_with_instance": True,
///             "category": "cloud",
///             "encrypted": False,
///             "performance_level": "PL0",
///             "size": 20,
///         },
///     ])
/// ids = alicloud.ecs.get_ecs_launch_templates_output(ids=[default_ecs_launch_template.id])
/// pulumi.export("ecsLaunchTemplateId0", ids.templates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = "terraform-example",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultEcsLaunchTemplate = new AliCloud.Ecs.EcsLaunchTemplate("default", new()
///     {
///         LaunchTemplateName = "terraform-example",
///         Description = "terraform-example",
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         HostName = "terraform-example",
///         InstanceChargeType = "PrePaid",
///         InstanceName = "terraform-example",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InternetChargeType = "PayByBandwidth",
///         InternetMaxBandwidthIn = 5,
///         InternetMaxBandwidthOut = 5,
///         IoOptimized = "optimized",
///         KeyPairName = "key_pair_name",
///         RamRoleName = "ram_role_name",
///         NetworkType = "vpc",
///         SecurityEnhancementStrategy = "Active",
///         SpotPriceLimit = 5,
///         SpotStrategy = "SpotWithPriceLimit",
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         SystemDisk = new AliCloud.Ecs.Inputs.EcsLaunchTemplateSystemDiskArgs
///         {
///             Category = "cloud_ssd",
///             Description = "Test For Terraform",
///             Name = "terraform-example",
///             Size = 40,
///             DeleteWithInstance = false,
///         },
///         UserData = "xxxxxxx",
///         VswitchId = defaultSwitch.Id,
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         TemplateTags =
///         {
///             { "Create", "Terraform" },
///             { "For", "example" },
///         },
///         NetworkInterfaces = new AliCloud.Ecs.Inputs.EcsLaunchTemplateNetworkInterfacesArgs
///         {
///             Name = "eth0",
///             Description = "hello1",
///             PrimaryIp = "10.0.0.2",
///             SecurityGroupId = defaultSecurityGroup.Id,
///             VswitchId = defaultSwitch.Id,
///         },
///         DataDisks = new[]
///         {
///             new AliCloud.Ecs.Inputs.EcsLaunchTemplateDataDiskArgs
///             {
///                 Name = "disk1",
///                 Description = "description",
///                 DeleteWithInstance = true,
///                 Category = "cloud",
///                 Encrypted = false,
///                 PerformanceLevel = "PL0",
///                 Size = 20,
///             },
///             new AliCloud.Ecs.Inputs.EcsLaunchTemplateDataDiskArgs
///             {
///                 Name = "disk2",
///                 Description = "description2",
///                 DeleteWithInstance = true,
///                 Category = "cloud",
///                 Encrypted = false,
///                 PerformanceLevel = "PL0",
///                 Size = 20,
///             },
///         },
///     });
///
///     var ids = AliCloud.Ecs.GetEcsLaunchTemplates.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultEcsLaunchTemplate.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsLaunchTemplateId0"] = ids.Apply(getEcsLaunchTemplatesResult => getEcsLaunchTemplatesResult.Templates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String("terraform-example"),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsLaunchTemplate, err := ecs.NewEcsLaunchTemplate(ctx, "default", &ecs.EcsLaunchTemplateArgs{
/// 			LaunchTemplateName:          pulumi.String("terraform-example"),
/// 			Description:                 pulumi.String("terraform-example"),
/// 			ImageId:                     pulumi.String(defaultGetImages.Images[0].Id),
/// 			HostName:                    pulumi.String("terraform-example"),
/// 			InstanceChargeType:          pulumi.String("PrePaid"),
/// 			InstanceName:                pulumi.String("terraform-example"),
/// 			InstanceType:                pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			InternetChargeType:          pulumi.String("PayByBandwidth"),
/// 			InternetMaxBandwidthIn:      pulumi.Int(5),
/// 			InternetMaxBandwidthOut:     pulumi.Int(5),
/// 			IoOptimized:                 pulumi.String("optimized"),
/// 			KeyPairName:                 pulumi.String("key_pair_name"),
/// 			RamRoleName:                 pulumi.String("ram_role_name"),
/// 			NetworkType:                 pulumi.String("vpc"),
/// 			SecurityEnhancementStrategy: pulumi.String("Active"),
/// 			SpotPriceLimit:              pulumi.Float64(5),
/// 			SpotStrategy:                pulumi.String("SpotWithPriceLimit"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			SystemDisk: &ecs.EcsLaunchTemplateSystemDiskArgs{
/// 				Category:           pulumi.String("cloud_ssd"),
/// 				Description:        pulumi.String("Test For Terraform"),
/// 				Name:               pulumi.String("terraform-example"),
/// 				Size:               pulumi.Int(40),
/// 				DeleteWithInstance: pulumi.Bool(false),
/// 			},
/// 			UserData:  pulumi.String("xxxxxxx"),
/// 			VswitchId: defaultSwitch.ID(),
/// 			VpcId:     defaultNetwork.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			TemplateTags: pulumi.StringMap{
/// 				"Create": pulumi.String("Terraform"),
/// 				"For":    pulumi.String("example"),
/// 			},
/// 			NetworkInterfaces: &ecs.EcsLaunchTemplateNetworkInterfacesArgs{
/// 				Name:            pulumi.String("eth0"),
/// 				Description:     pulumi.String("hello1"),
/// 				PrimaryIp:       pulumi.String("10.0.0.2"),
/// 				SecurityGroupId: defaultSecurityGroup.ID(),
/// 				VswitchId:       defaultSwitch.ID(),
/// 			},
/// 			DataDisks: ecs.EcsLaunchTemplateDataDiskArray{
/// 				&ecs.EcsLaunchTemplateDataDiskArgs{
/// 					Name:               pulumi.String("disk1"),
/// 					Description:        pulumi.String("description"),
/// 					DeleteWithInstance: pulumi.Bool(true),
/// 					Category:           pulumi.String("cloud"),
/// 					Encrypted:          pulumi.Bool(false),
/// 					PerformanceLevel:   pulumi.String("PL0"),
/// 					Size:               pulumi.Int(20),
/// 				},
/// 				&ecs.EcsLaunchTemplateDataDiskArgs{
/// 					Name:               pulumi.String("disk2"),
/// 					Description:        pulumi.String("description2"),
/// 					DeleteWithInstance: pulumi.Bool(true),
/// 					Category:           pulumi.String("cloud"),
/// 					Encrypted:          pulumi.Bool(false),
/// 					PerformanceLevel:   pulumi.String("PL0"),
/// 					Size:               pulumi.Int(20),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := ecs.GetEcsLaunchTemplatesOutput(ctx, ecs.GetEcsLaunchTemplatesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultEcsLaunchTemplate.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ecsLaunchTemplateId0", ids.ApplyT(func(ids ecs.GetEcsLaunchTemplatesResult) (*string, error) {
/// 			return &ids.Templates[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsLaunchTemplate;
/// import com.pulumi.alicloud.ecs.EcsLaunchTemplateArgs;
/// import com.pulumi.alicloud.ecs.inputs.EcsLaunchTemplateSystemDiskArgs;
/// import com.pulumi.alicloud.ecs.inputs.EcsLaunchTemplateNetworkInterfacesArgs;
/// import com.pulumi.alicloud.ecs.inputs.EcsLaunchTemplateDataDiskArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsLaunchTemplatesArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name("terraform-example")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultEcsLaunchTemplate = new EcsLaunchTemplate("defaultEcsLaunchTemplate", EcsLaunchTemplateArgs.builder()
///             .launchTemplateName("terraform-example")
///             .description("terraform-example")
///             .imageId(defaultGetImages.images()[0].id())
///             .hostName("terraform-example")
///             .instanceChargeType("PrePaid")
///             .instanceName("terraform-example")
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .internetChargeType("PayByBandwidth")
///             .internetMaxBandwidthIn(5)
///             .internetMaxBandwidthOut(5)
///             .ioOptimized("optimized")
///             .keyPairName("key_pair_name")
///             .ramRoleName("ram_role_name")
///             .networkType("vpc")
///             .securityEnhancementStrategy("Active")
///             .spotPriceLimit(5.0)
///             .spotStrategy("SpotWithPriceLimit")
///             .securityGroupIds(defaultSecurityGroup.id())
///             .systemDisk(EcsLaunchTemplateSystemDiskArgs.builder()
///                 .category("cloud_ssd")
///                 .description("Test For Terraform")
///                 .name("terraform-example")
///                 .size(40)
///                 .deleteWithInstance(false)
///                 .build())
///             .userData("xxxxxxx")
///             .vswitchId(defaultSwitch.id())
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .templateTags(Map.ofEntries(
///                 Map.entry("Create", "Terraform"),
///                 Map.entry("For", "example")
///             ))
///             .networkInterfaces(EcsLaunchTemplateNetworkInterfacesArgs.builder()
///                 .name("eth0")
///                 .description("hello1")
///                 .primaryIp("10.0.0.2")
///                 .securityGroupId(defaultSecurityGroup.id())
///                 .vswitchId(defaultSwitch.id())
///                 .build())
///             .dataDisks(
///                 EcsLaunchTemplateDataDiskArgs.builder()
///                     .name("disk1")
///                     .description("description")
///                     .deleteWithInstance(true)
///                     .category("cloud")
///                     .encrypted(false)
///                     .performanceLevel("PL0")
///                     .size(20)
///                     .build(),
///                 EcsLaunchTemplateDataDiskArgs.builder()
///                     .name("disk2")
///                     .description("description2")
///                     .deleteWithInstance(true)
///                     .category("cloud")
///                     .encrypted(false)
///                     .performanceLevel("PL0")
///                     .size(20)
///                     .build())
///             .build());
///
///         final var ids = EcsFunctions.getEcsLaunchTemplates(GetEcsLaunchTemplatesArgs.builder()
///             .ids(defaultEcsLaunchTemplate.id())
///             .build());
///
///         ctx.export("ecsLaunchTemplateId0", ids.applyValue(_ids -> _ids.templates()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: terraform-example
///       vpcId: ${defaultNetwork.id}
///   defaultEcsLaunchTemplate:
///     type: alicloud:ecs:EcsLaunchTemplate
///     name: default
///     properties:
///       launchTemplateName: terraform-example
///       description: terraform-example
///       imageId: ${defaultGetImages.images[0].id}
///       hostName: terraform-example
///       instanceChargeType: PrePaid
///       instanceName: terraform-example
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       internetChargeType: PayByBandwidth
///       internetMaxBandwidthIn: '5'
///       internetMaxBandwidthOut: '5'
///       ioOptimized: optimized
///       keyPairName: key_pair_name
///       ramRoleName: ram_role_name
///       networkType: vpc
///       securityEnhancementStrategy: Active
///       spotPriceLimit: '5'
///       spotStrategy: SpotWithPriceLimit
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///       systemDisk:
///         category: cloud_ssd
///         description: Test For Terraform
///         name: terraform-example
///         size: '40'
///         deleteWithInstance: 'false'
///       userData: xxxxxxx
///       vswitchId: ${defaultSwitch.id}
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///       templateTags:
///         Create: Terraform
///         For: example
///       networkInterfaces:
///         name: eth0
///         description: hello1
///         primaryIp: 10.0.0.2
///         securityGroupId: ${defaultSecurityGroup.id}
///         vswitchId: ${defaultSwitch.id}
///       dataDisks:
///         - name: disk1
///           description: description
///           deleteWithInstance: 'true'
///           category: cloud
///           encrypted: 'false'
///           performanceLevel: PL0
///           size: '20'
///         - name: disk2
///           description: description2
///           deleteWithInstance: 'true'
///           category: cloud
///           encrypted: 'false'
///           performanceLevel: PL0
///           size: '20'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsLaunchTemplates
///       arguments:
///         ids:
///           - ${defaultEcsLaunchTemplate.id}
/// outputs:
///   ecsLaunchTemplateId0: ${ids.templates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_launch_templates_get_ecs_launch_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsLaunchTemplatesResult> getEcsLaunchTemplates(
  GetEcsLaunchTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsLaunchTemplates:getEcsLaunchTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsLaunchTemplatesResult.fromMap(result);
}

/// This data source provides the Ecs Network Interface Permissions of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.166.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsNetworkInterfacePermissions({
///     ids: ["example_value"],
///     networkInterfaceId: "example_value",
/// });
/// export const ecsNetworkInterfacePermissionId1 = ids.then(ids => ids.permissions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_network_interface_permissions(ids=["example_value"],
///     network_interface_id="example_value")
/// pulumi.export("ecsNetworkInterfacePermissionId1", ids.permissions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsNetworkInterfacePermissions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NetworkInterfaceId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsNetworkInterfacePermissionId1"] = ids.Apply(getEcsNetworkInterfacePermissionsResult => getEcsNetworkInterfacePermissionsResult.Permissions[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetEcsNetworkInterfacePermissions(ctx, &ecs.GetEcsNetworkInterfacePermissionsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NetworkInterfaceId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsNetworkInterfacePermissionId1", ids.Permissions[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsNetworkInterfacePermissionsArgs;
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
///         final var ids = EcsFunctions.getEcsNetworkInterfacePermissions(GetEcsNetworkInterfacePermissionsArgs.builder()
///             .ids("example_value")
///             .networkInterfaceId("example_value")
///             .build());
///
///         ctx.export("ecsNetworkInterfacePermissionId1", ids.permissions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsNetworkInterfacePermissions
///       arguments:
///         ids:
///           - example_value
///         networkInterfaceId: example_value
/// outputs:
///   ecsNetworkInterfacePermissionId1: ${ids.permissions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_network_interface_permissions_get_ecs_network_interface_permissions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsNetworkInterfacePermissionsResult> getEcsNetworkInterfacePermissions(
  GetEcsNetworkInterfacePermissionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsNetworkInterfacePermissions:getEcsNetworkInterfacePermissions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsNetworkInterfacePermissionsResult.fromMap(result);
}

/// This data source provides the Ecs Network Interfaces of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.123.1.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ecs.getEcsNetworkInterfaces({
///     nameRegex: "eni-ipv6",
/// });
/// export const firstEcsNetworkInterfaceId = example.then(example => example.interfaces?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.get_ecs_network_interfaces(name_regex="eni-ipv6")
/// pulumi.export("firstEcsNetworkInterfaceId", example.interfaces[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ecs.GetEcsNetworkInterfaces.Invoke(new()
///     {
///         NameRegex = "eni-ipv6",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEcsNetworkInterfaceId"] = example.Apply(getEcsNetworkInterfacesResult => getEcsNetworkInterfacesResult.Interfaces[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.GetEcsNetworkInterfaces(ctx, &ecs.GetEcsNetworkInterfacesArgs{
/// 			NameRegex: pulumi.StringRef("eni-ipv6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEcsNetworkInterfaceId", example.Interfaces[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsNetworkInterfacesArgs;
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
///         final var example = EcsFunctions.getEcsNetworkInterfaces(GetEcsNetworkInterfacesArgs.builder()
///             .nameRegex("eni-ipv6")
///             .build());
///
///         ctx.export("firstEcsNetworkInterfaceId", example.interfaces()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getEcsNetworkInterfaces
///       arguments:
///         nameRegex: eni-ipv6
/// outputs:
///   firstEcsNetworkInterfaceId: ${example.interfaces[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_network_interfaces_get_ecs_network_interfaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsNetworkInterfacesResult> getEcsNetworkInterfaces(
  GetEcsNetworkInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsNetworkInterfaces:getEcsNetworkInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsNetworkInterfacesResult.fromMap(result);
}

/// This data source provides the Ecs Prefix Lists of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.152.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ecs.getEcsPrefixLists({
///     ids: ["E2RY53-xxxx"],
///     nameRegex: "tf-testAcc",
/// });
/// export const outputId = example.then(example => example.lists?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.get_ecs_prefix_lists(ids=["E2RY53-xxxx"],
///     name_regex="tf-testAcc")
/// pulumi.export("outputId", example.lists[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ecs.GetEcsPrefixLists.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "E2RY53-xxxx",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["outputId"] = example.Apply(getEcsPrefixListsResult => getEcsPrefixListsResult.Lists[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.GetEcsPrefixLists(ctx, &ecs.GetEcsPrefixListsArgs{
/// 			Ids: []string{
/// 				"E2RY53-xxxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("outputId", example.Lists[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsPrefixListsArgs;
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
///         final var example = EcsFunctions.getEcsPrefixLists(GetEcsPrefixListsArgs.builder()
///             .ids("E2RY53-xxxx")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("outputId", example.lists()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getEcsPrefixLists
///       arguments:
///         ids:
///           - E2RY53-xxxx
///         nameRegex: tf-testAcc
/// outputs:
///   outputId: ${example.lists[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_prefix_lists_get_ecs_prefix_lists_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsPrefixListsResult> getEcsPrefixLists(
  GetEcsPrefixListsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsPrefixLists:getEcsPrefixLists',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsPrefixListsResult.fromMap(result);
}

/// This data source provides the Ecs Snapshot Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.160.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsSnapshotGroups({
///     ids: ["example-id"],
/// });
/// export const ecsSnapshotGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.ecs.getEcsSnapshotGroups({
///     nameRegex: "^my-SnapshotGroup",
/// });
/// export const ecsSnapshotGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// const status = alicloud.ecs.getEcsSnapshotGroups({
///     status: "accomplished",
/// });
/// export const ecsSnapshotGroupId3 = status.then(status => status.groups?.[0]?.id);
/// const instanceId = alicloud.ecs.getEcsSnapshotGroups({
///     instanceId: "example-instance_id",
/// });
/// export const ecsSnapshotGroupId4 = instanceId.then(instanceId => instanceId.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_snapshot_groups(ids=["example-id"])
/// pulumi.export("ecsSnapshotGroupId1", ids.groups[0].id)
/// name_regex = alicloud.ecs.get_ecs_snapshot_groups(name_regex="^my-SnapshotGroup")
/// pulumi.export("ecsSnapshotGroupId2", name_regex.groups[0].id)
/// status = alicloud.ecs.get_ecs_snapshot_groups(status="accomplished")
/// pulumi.export("ecsSnapshotGroupId3", status.groups[0].id)
/// instance_id = alicloud.ecs.get_ecs_snapshot_groups(instance_id="example-instance_id")
/// pulumi.export("ecsSnapshotGroupId4", instance_id.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsSnapshotGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example-id",
///         },
///     });
///
///     var nameRegex = AliCloud.Ecs.GetEcsSnapshotGroups.Invoke(new()
///     {
///         NameRegex = "^my-SnapshotGroup",
///     });
///
///     var status = AliCloud.Ecs.GetEcsSnapshotGroups.Invoke(new()
///     {
///         Status = "accomplished",
///     });
///
///     var instanceId = AliCloud.Ecs.GetEcsSnapshotGroups.Invoke(new()
///     {
///         InstanceId = "example-instance_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsSnapshotGroupId1"] = ids.Apply(getEcsSnapshotGroupsResult => getEcsSnapshotGroupsResult.Groups[0]?.Id),
///         ["ecsSnapshotGroupId2"] = nameRegex.Apply(getEcsSnapshotGroupsResult => getEcsSnapshotGroupsResult.Groups[0]?.Id),
///         ["ecsSnapshotGroupId3"] = status.Apply(getEcsSnapshotGroupsResult => getEcsSnapshotGroupsResult.Groups[0]?.Id),
///         ["ecsSnapshotGroupId4"] = instanceId.Apply(getEcsSnapshotGroupsResult => getEcsSnapshotGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetEcsSnapshotGroups(ctx, &ecs.GetEcsSnapshotGroupsArgs{
/// 			Ids: []string{
/// 				"example-id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsSnapshotGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := ecs.GetEcsSnapshotGroups(ctx, &ecs.GetEcsSnapshotGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-SnapshotGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsSnapshotGroupId2", nameRegex.Groups[0].Id)
/// 		status, err := ecs.GetEcsSnapshotGroups(ctx, &ecs.GetEcsSnapshotGroupsArgs{
/// 			Status: pulumi.StringRef("accomplished"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsSnapshotGroupId3", status.Groups[0].Id)
/// 		instanceId, err := ecs.GetEcsSnapshotGroups(ctx, &ecs.GetEcsSnapshotGroupsArgs{
/// 			InstanceId: pulumi.StringRef("example-instance_id"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsSnapshotGroupId4", instanceId.Groups[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsSnapshotGroupsArgs;
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
///         final var ids = EcsFunctions.getEcsSnapshotGroups(GetEcsSnapshotGroupsArgs.builder()
///             .ids("example-id")
///             .build());
///
///         ctx.export("ecsSnapshotGroupId1", ids.groups()[0].id());
///         final var nameRegex = EcsFunctions.getEcsSnapshotGroups(GetEcsSnapshotGroupsArgs.builder()
///             .nameRegex("^my-SnapshotGroup")
///             .build());
///
///         ctx.export("ecsSnapshotGroupId2", nameRegex.groups()[0].id());
///         final var status = EcsFunctions.getEcsSnapshotGroups(GetEcsSnapshotGroupsArgs.builder()
///             .status("accomplished")
///             .build());
///
///         ctx.export("ecsSnapshotGroupId3", status.groups()[0].id());
///         final var instanceId = EcsFunctions.getEcsSnapshotGroups(GetEcsSnapshotGroupsArgs.builder()
///             .instanceId("example-instance_id")
///             .build());
///
///         ctx.export("ecsSnapshotGroupId4", instanceId.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsSnapshotGroups
///       arguments:
///         ids:
///           - example-id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ecs:getEcsSnapshotGroups
///       arguments:
///         nameRegex: ^my-SnapshotGroup
///   status:
///     fn::invoke:
///       function: alicloud:ecs:getEcsSnapshotGroups
///       arguments:
///         status: accomplished
///   instanceId:
///     fn::invoke:
///       function: alicloud:ecs:getEcsSnapshotGroups
///       arguments:
///         instanceId: example-instance_id
/// outputs:
///   ecsSnapshotGroupId1: ${ids.groups[0].id}
///   ecsSnapshotGroupId2: ${nameRegex.groups[0].id}
///   ecsSnapshotGroupId3: ${status.groups[0].id}
///   ecsSnapshotGroupId4: ${instanceId.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_snapshot_groups_get_ecs_snapshot_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsSnapshotGroupsResult> getEcsSnapshotGroups(
  GetEcsSnapshotGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsSnapshotGroups:getEcsSnapshotGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsSnapshotGroupsResult.fromMap(result);
}

/// This data source provides the Ecs Snapshots of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.120.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableDiskCategory: "cloud_essd",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = Promise.all([defaultGetZones, defaultGetImages]).then(([defaultGetZones, defaultGetImages]) => alicloud.ecs.getInstanceTypes({
///     availabilityZone: defaultGetZones.zones?.[0]?.id,
///     imageId: defaultGetImages.images?.[0]?.id,
///     systemDiskCategory: "cloud_essd",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup].map(__item => __item.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 10,
///     availabilityZone: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.availabilityZones?.[0]),
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_essd",
///     vswitchId: defaultSwitch.id,
///     instanceName: name,
///     dataDisks: [{
///         category: "cloud_essd",
///         size: 20,
///     }],
/// });
/// const defaultEcsDisk = new alicloud.ecs.EcsDisk("default", {
///     diskName: name,
///     zoneId: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.availabilityZones?.[0]),
///     category: "cloud_essd",
///     size: 500,
/// });
/// const defaultEcsDiskAttachment = new alicloud.ecs.EcsDiskAttachment("default", {
///     diskId: defaultEcsDisk.id,
///     instanceId: defaultInstance.id,
/// });
/// const defaultEcsSnapshot = new alicloud.ecs.EcsSnapshot("default", {
///     diskId: defaultEcsDiskAttachment.diskId,
///     category: "standard",
///     retentionDays: 20,
///     snapshotName: name,
///     description: name,
///     tags: {
///         Created: "TF",
///         For: "Snapshot",
///     },
/// });
/// const ids = alicloud.ecs.getEcsSnapshotsOutput({
///     ids: [defaultEcsSnapshot.id],
/// });
/// export const ecsSnapshotsId0 = ids.apply(ids => ids.snapshots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_zones = alicloud.get_zones(available_disk_category="cloud_essd",
///     available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default_get_zones.zones[0].id,
///     image_id=default_get_images.images[0].id,
///     system_disk_category="cloud_essd")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[__item.id for __item in [default_security_group]],
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=10,
///     availability_zone=default_get_instance_types.instance_types[0].availability_zones[0],
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_essd",
///     vswitch_id=default_switch.id,
///     instance_name=name,
///     data_disks=[{
///         "category": "cloud_essd",
///         "size": 20,
///     }])
/// default_ecs_disk = alicloud.ecs.EcsDisk("default",
///     disk_name=name,
///     zone_id=default_get_instance_types.instance_types[0].availability_zones[0],
///     category="cloud_essd",
///     size=500)
/// default_ecs_disk_attachment = alicloud.ecs.EcsDiskAttachment("default",
///     disk_id=default_ecs_disk.id,
///     instance_id=default_instance.id)
/// default_ecs_snapshot = alicloud.ecs.EcsSnapshot("default",
///     disk_id=default_ecs_disk_attachment.disk_id,
///     category="standard",
///     retention_days=20,
///     snapshot_name=name,
///     description=name,
///     tags={
///         "Created": "TF",
///         "For": "Snapshot",
///     })
/// ids = alicloud.ecs.get_ecs_snapshots_output(ids=[default_ecs_snapshot.id])
/// pulumi.export("ecsSnapshotsId0", ids.snapshots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_essd",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         SystemDiskCategory = "cloud_essd",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.192.0/24",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup,
///         }.Select(__item => __item.Id).ToList(),
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 10,
///         AvailabilityZone = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.AvailabilityZones[0]),
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_essd",
///         VswitchId = defaultSwitch.Id,
///         InstanceName = name,
///         DataDisks = new[]
///         {
///             new AliCloud.Ecs.Inputs.InstanceDataDiskArgs
///             {
///                 Category = "cloud_essd",
///                 Size = 20,
///             },
///         },
///     });
///
///     var defaultEcsDisk = new AliCloud.Ecs.EcsDisk("default", new()
///     {
///         DiskName = name,
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.AvailabilityZones[0]),
///         Category = "cloud_essd",
///         Size = 500,
///     });
///
///     var defaultEcsDiskAttachment = new AliCloud.Ecs.EcsDiskAttachment("default", new()
///     {
///         DiskId = defaultEcsDisk.Id,
///         InstanceId = defaultInstance.Id,
///     });
///
///     var defaultEcsSnapshot = new AliCloud.Ecs.EcsSnapshot("default", new()
///     {
///         DiskId = defaultEcsDiskAttachment.DiskId,
///         Category = "standard",
///         RetentionDays = 20,
///         SnapshotName = name,
///         Description = name,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Snapshot" },
///         },
///     });
///
///     var ids = AliCloud.Ecs.GetEcsSnapshots.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultEcsSnapshot.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsSnapshotsId0"] = ids.Apply(getEcsSnapshotsResult => getEcsSnapshotsResult.Snapshots[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// Status: pulumi.StringRef("OK"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_essd"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(defaultGetZones.Zones[0].Id),
/// ImageId: pulumi.StringRef(defaultGetImages.Images[0].Id),
/// SystemDiskCategory: pulumi.StringRef("cloud_essd"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("192.168.192.0/24"),
/// ZoneId: pulumi.String(defaultGetZones.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// SecurityGroups: splat0,
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// AvailabilityZone: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].AvailabilityZones[0]),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskCategory: pulumi.String("cloud_essd"),
/// VswitchId: defaultSwitch.ID(),
/// InstanceName: pulumi.String(name),
/// DataDisks: ecs.InstanceDataDiskArray{
/// &ecs.InstanceDataDiskArgs{
/// Category: pulumi.String("cloud_essd"),
/// Size: pulumi.Int(20),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultEcsDisk, err := ecs.NewEcsDisk(ctx, "default", &ecs.EcsDiskArgs{
/// DiskName: pulumi.String(name),
/// ZoneId: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].AvailabilityZones[0]),
/// Category: pulumi.String("cloud_essd"),
/// Size: pulumi.Int(500),
/// })
/// if err != nil {
/// return err
/// }
/// defaultEcsDiskAttachment, err := ecs.NewEcsDiskAttachment(ctx, "default", &ecs.EcsDiskAttachmentArgs{
/// DiskId: defaultEcsDisk.ID(),
/// InstanceId: defaultInstance.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultEcsSnapshot, err := ecs.NewEcsSnapshot(ctx, "default", &ecs.EcsSnapshotArgs{
/// DiskId: defaultEcsDiskAttachment.DiskId,
/// Category: pulumi.String("standard"),
/// RetentionDays: pulumi.Int(20),
/// SnapshotName: pulumi.String(name),
/// Description: pulumi.String(name),
/// Tags: pulumi.StringMap{
/// "Created": pulumi.String("TF"),
/// "For": pulumi.String("Snapshot"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// ids := ecs.GetEcsSnapshotsOutput(ctx, ecs.GetEcsSnapshotsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultEcsSnapshot.ID(),
/// },
/// }, nil);
/// ctx.Export("ecsSnapshotsId0", ids.ApplyT(func(ids ecs.GetEcsSnapshotsResult) (*string, error) {
/// return &ids.Snapshots[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.inputs.InstanceDataDiskArgs;
/// import com.pulumi.alicloud.ecs.EcsDisk;
/// import com.pulumi.alicloud.ecs.EcsDiskArgs;
/// import com.pulumi.alicloud.ecs.EcsDiskAttachment;
/// import com.pulumi.alicloud.ecs.EcsDiskAttachmentArgs;
/// import com.pulumi.alicloud.ecs.EcsSnapshot;
/// import com.pulumi.alicloud.ecs.EcsSnapshotArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsSnapshotsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_essd")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(defaultGetZones.zones()[0].id())
///             .imageId(defaultGetImages.images()[0].id())
///             .systemDiskCategory("cloud_essd")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.192.0/24")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(10)
///             .availabilityZone(defaultGetInstanceTypes.instanceTypes()[0].availabilityZones()[0])
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_essd")
///             .vswitchId(defaultSwitch.id())
///             .instanceName(name)
///             .dataDisks(InstanceDataDiskArgs.builder()
///                 .category("cloud_essd")
///                 .size(20)
///                 .build())
///             .build());
///
///         var defaultEcsDisk = new EcsDisk("defaultEcsDisk", EcsDiskArgs.builder()
///             .diskName(name)
///             .zoneId(defaultGetInstanceTypes.instanceTypes()[0].availabilityZones()[0])
///             .category("cloud_essd")
///             .size(500)
///             .build());
///
///         var defaultEcsDiskAttachment = new EcsDiskAttachment("defaultEcsDiskAttachment", EcsDiskAttachmentArgs.builder()
///             .diskId(defaultEcsDisk.id())
///             .instanceId(defaultInstance.id())
///             .build());
///
///         var defaultEcsSnapshot = new EcsSnapshot("defaultEcsSnapshot", EcsSnapshotArgs.builder()
///             .diskId(defaultEcsDiskAttachment.diskId())
///             .category("standard")
///             .retentionDays(20)
///             .snapshotName(name)
///             .description(name)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Snapshot")
///             ))
///             .build());
///
///         final var ids = EcsFunctions.getEcsSnapshots(GetEcsSnapshotsArgs.builder()
///             .ids(defaultEcsSnapshot.id())
///             .build());
///
///         ctx.export("ecsSnapshotsId0", ids.applyValue(_ids -> _ids.snapshots()[0].id()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_snapshots_get_ecs_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsSnapshotsResult> getEcsSnapshots(
  GetEcsSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsSnapshots:getEcsSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsSnapshotsResult.fromMap(result);
}

/// This data source provides the Ecs Storage Capacity Units of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.155.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ecs.getEcsStorageCapacityUnits({});
/// export const ecsStorageCapacityUnitId1 = ids.then(ids => ids.units?.[0]?.id);
/// const nameRegex = alicloud.ecs.getEcsStorageCapacityUnits({
///     nameRegex: "^my-StorageCapacityUnit",
/// });
/// export const ecsStorageCapacityUnitId2 = nameRegex.then(nameRegex => nameRegex.units?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecs.get_ecs_storage_capacity_units()
/// pulumi.export("ecsStorageCapacityUnitId1", ids.units[0].id)
/// name_regex = alicloud.ecs.get_ecs_storage_capacity_units(name_regex="^my-StorageCapacityUnit")
/// pulumi.export("ecsStorageCapacityUnitId2", name_regex.units[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecs.GetEcsStorageCapacityUnits.Invoke();
///
///     var nameRegex = AliCloud.Ecs.GetEcsStorageCapacityUnits.Invoke(new()
///     {
///         NameRegex = "^my-StorageCapacityUnit",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecsStorageCapacityUnitId1"] = ids.Apply(getEcsStorageCapacityUnitsResult => getEcsStorageCapacityUnitsResult.Units[0]?.Id),
///         ["ecsStorageCapacityUnitId2"] = nameRegex.Apply(getEcsStorageCapacityUnitsResult => getEcsStorageCapacityUnitsResult.Units[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecs.GetEcsStorageCapacityUnits(ctx, &ecs.GetEcsStorageCapacityUnitsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsStorageCapacityUnitId1", ids.Units[0].Id)
/// 		nameRegex, err := ecs.GetEcsStorageCapacityUnits(ctx, &ecs.GetEcsStorageCapacityUnitsArgs{
/// 			NameRegex: pulumi.StringRef("^my-StorageCapacityUnit"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecsStorageCapacityUnitId2", nameRegex.Units[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEcsStorageCapacityUnitsArgs;
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
///         final var ids = EcsFunctions.getEcsStorageCapacityUnits(GetEcsStorageCapacityUnitsArgs.builder()
///             .build());
///
///         ctx.export("ecsStorageCapacityUnitId1", ids.units()[0].id());
///         final var nameRegex = EcsFunctions.getEcsStorageCapacityUnits(GetEcsStorageCapacityUnitsArgs.builder()
///             .nameRegex("^my-StorageCapacityUnit")
///             .build());
///
///         ctx.export("ecsStorageCapacityUnitId2", nameRegex.units()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecs:getEcsStorageCapacityUnits
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ecs:getEcsStorageCapacityUnits
///       arguments:
///         nameRegex: ^my-StorageCapacityUnit
/// outputs:
///   ecsStorageCapacityUnitId1: ${ids.units[0].id}
///   ecsStorageCapacityUnitId2: ${nameRegex.units[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_ecs_storage_capacity_units_get_ecs_storage_capacity_units_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsStorageCapacityUnitsResult> getEcsStorageCapacityUnits(
  GetEcsStorageCapacityUnitsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEcsStorageCapacityUnits:getEcsStorageCapacityUnits',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsStorageCapacityUnitsResult.fromMap(result);
}

/// This data source provides the Eip Addresses of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.126.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ecs.getEipAddresses({
///     ids: ["eip-bp1jvx5ki6c********"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstEipAddressId = example.then(example => example.addresses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.get_eip_addresses(ids=["eip-bp1jvx5ki6c********"],
///     name_regex="the_resource_name")
/// pulumi.export("firstEipAddressId", example.addresses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ecs.GetEipAddresses.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "eip-bp1jvx5ki6c********",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEipAddressId"] = example.Apply(getEipAddressesResult => getEipAddressesResult.Addresses[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.GetEipAddresses(ctx, &ecs.GetEipAddressesArgs{
/// 			Ids: []string{
/// 				"eip-bp1jvx5ki6c********",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEipAddressId", example.Addresses[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEipAddressesArgs;
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
///         final var example = EcsFunctions.getEipAddresses(GetEipAddressesArgs.builder()
///             .ids("eip-bp1jvx5ki6c********")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstEipAddressId", example.addresses()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getEipAddresses
///       arguments:
///         ids:
///           - eip-bp1jvx5ki6c********
///         nameRegex: the_resource_name
/// outputs:
///   firstEipAddressId: ${example.addresses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_eip_addresses_get_eip_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEipAddressesResult> getEipAddresses(
  GetEipAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEipAddresses:getEipAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEipAddressesResult.fromMap(result);
}

/// > **DEPRECATED:**  This datasource has been deprecated from version `1.126.0`. Please use new datasource alicloud_eip_addresses.
///
/// This data source provides a list of EIPs (Elastic IP address) owned by an Alibaba Cloud account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const eipsDs = alicloud.ecs.getEips({});
/// export const firstEipId = eipsDs.then(eipsDs => eipsDs.eips?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// eips_ds = alicloud.ecs.get_eips()
/// pulumi.export("firstEipId", eips_ds.eips[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eipsDs = AliCloud.Ecs.GetEips.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEipId"] = eipsDs.Apply(getEipsResult => getEipsResult.Eips[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		eipsDs, err := ecs.GetEips(ctx, &ecs.GetEipsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEipId", eipsDs.Eips[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetEipsArgs;
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
///         final var eipsDs = EcsFunctions.getEips(GetEipsArgs.builder()
///             .build());
///
///         ctx.export("firstEipId", eipsDs.eips()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   eipsDs:
///     fn::invoke:
///       function: alicloud:ecs:getEips
///       arguments: {}
/// outputs:
///   firstEipId: ${eipsDs.eips[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_eips_get_eips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEipsResult> getEips(
  GetEipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getEips:getEips',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEipsResult.fromMap(result);
}

/// This data source provides Ecs Elasticity Assurance available to the user.
///
/// > **NOTE:** Available in 1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ecs.getElasticityAssurances({
///     ids: [defaultAlicloudEcsElasticityAssurance.id],
/// });
/// export const alicloudEcsElasticityAssuranceExampleId = _default.then(_default => _default.assurances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.get_elasticity_assurances(ids=[default_alicloud_ecs_elasticity_assurance["id"]])
/// pulumi.export("alicloudEcsElasticityAssuranceExampleId", default.assurances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecs.GetElasticityAssurances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudEcsElasticityAssurance.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEcsElasticityAssuranceExampleId"] = @default.Apply(@default => @default.Apply(getElasticityAssurancesResult => getElasticityAssurancesResult.Assurances[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := ecs.GetElasticityAssurances(ctx, &ecs.GetElasticityAssurancesArgs{
/// Ids: interface{}{
/// defaultAlicloudEcsElasticityAssurance.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudEcsElasticityAssuranceExampleId", _default.Assurances[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetElasticityAssurancesArgs;
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
///         final var default = EcsFunctions.getElasticityAssurances(GetElasticityAssurancesArgs.builder()
///             .ids(defaultAlicloudEcsElasticityAssurance.id())
///             .build());
///
///         ctx.export("alicloudEcsElasticityAssuranceExampleId", default_.assurances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getElasticityAssurances
///       arguments:
///         ids:
///           - ${defaultAlicloudEcsElasticityAssurance.id}
/// outputs:
///   alicloudEcsElasticityAssuranceExampleId: ${default.assurances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_elasticity_assurances_get_elasticity_assurances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticityAssurancesResult> getElasticityAssurances(
  GetElasticityAssurancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getElasticityAssurances:getElasticityAssurances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticityAssurancesResult.fromMap(result);
}

/// This data source provides the Ecs Hpc Clusters of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.116.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ecs.getHpcClusters({
///     ids: ["hpc-bp1i09xxxxxxxx"],
///     nameRegex: "tf-testAcc",
/// });
/// export const firstEcsHpcClusterId = example.then(example => example.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.get_hpc_clusters(ids=["hpc-bp1i09xxxxxxxx"],
///     name_regex="tf-testAcc")
/// pulumi.export("firstEcsHpcClusterId", example.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ecs.GetHpcClusters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "hpc-bp1i09xxxxxxxx",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEcsHpcClusterId"] = example.Apply(getHpcClustersResult => getHpcClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.GetHpcClusters(ctx, &ecs.GetHpcClustersArgs{
/// 			Ids: []string{
/// 				"hpc-bp1i09xxxxxxxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEcsHpcClusterId", example.Clusters[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetHpcClustersArgs;
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
///         final var example = EcsFunctions.getHpcClusters(GetHpcClustersArgs.builder()
///             .ids("hpc-bp1i09xxxxxxxx")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("firstEcsHpcClusterId", example.clusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getHpcClusters
///       arguments:
///         ids:
///           - hpc-bp1i09xxxxxxxx
///         nameRegex: tf-testAcc
/// outputs:
///   firstEcsHpcClusterId: ${example.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_hpc_clusters_get_hpc_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHpcClustersResult> getHpcClusters(
  GetHpcClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getHpcClusters:getHpcClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHpcClustersResult.fromMap(result);
}

/// This data source provides available image resources. It contains user's private images, system images provided by Alibaba Cloud,
/// other public images and the ones available on the image market.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ecs.getImages({
///     owners: "system",
///     nameRegex: "^centos_6",
/// });
/// export const imageId = example.then(example => example.images?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.get_images(owners="system",
///     name_regex="^centos_6")
/// pulumi.export("imageId", example.images[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         Owners = "system",
///         NameRegex = "^centos_6",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["imageId"] = example.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			Owners:    pulumi.StringRef("system"),
/// 			NameRegex: pulumi.StringRef("^centos_6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("imageId", example.Images[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
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
///         final var example = EcsFunctions.getImages(GetImagesArgs.builder()
///             .owners("system")
///             .nameRegex("^centos_6")
///             .build());
///
///         ctx.export("imageId", example.images()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         owners: system
///         nameRegex: ^centos_6
/// outputs:
///   imageId: ${example.images[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// Operation to query the reserved keywords of an ApsaraDB RDS instance. The reserved keywords cannot be used for the usernames of accounts or the names of databases.
///
/// > **NOTE:** Available in v1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resources = alicloud.ecs.getInstanceKeywords({
///     key: "account",
///     outputFile: "./classes.txt",
/// });
/// export const accountKeywords = resources.then(resources => resources.keywords?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resources = alicloud.ecs.get_instance_keywords(key="account",
///     output_file="./classes.txt")
/// pulumi.export("accountKeywords", resources.keywords[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resources = AliCloud.Ecs.GetInstanceKeywords.Invoke(new()
///     {
///         Key = "account",
///         OutputFile = "./classes.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["accountKeywords"] = resources.Apply(getInstanceKeywordsResult => getInstanceKeywordsResult.Keywords[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resources, err := ecs.GetInstanceKeywords(ctx, &ecs.GetInstanceKeywordsArgs{
/// 			Key:        "account",
/// 			OutputFile: pulumi.StringRef("./classes.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accountKeywords", resources.Keywords[0])
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceKeywordsArgs;
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
///         final var resources = EcsFunctions.getInstanceKeywords(GetInstanceKeywordsArgs.builder()
///             .key("account")
///             .outputFile("./classes.txt")
///             .build());
///
///         ctx.export("accountKeywords", resources.keywords()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resources:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceKeywords
///       arguments:
///         key: account
///         outputFile: ./classes.txt
/// outputs:
///   accountKeywords: ${resources.keywords[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_instance_keywords_get_instance_keywords_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceKeywordsResult> getInstanceKeywords(
  GetInstanceKeywordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getInstanceKeywords:getInstanceKeywords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceKeywordsResult.fromMap(result);
}

/// This data source provides the ECS instance type families of Alibaba Cloud.
///
/// > **NOTE:** Available in 1.54.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ecs.getInstanceTypeFamilies({
///     instanceChargeType: "PrePaid",
/// });
/// export const firstInstanceTypeFamilyId = _default.then(_default => _default.families?.[0]?.id);
/// export const instanceIds = _default.then(_default => _default.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.get_instance_type_families(instance_charge_type="PrePaid")
/// pulumi.export("firstInstanceTypeFamilyId", default.families[0].id)
/// pulumi.export("instanceIds", default.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecs.GetInstanceTypeFamilies.Invoke(new()
///     {
///         InstanceChargeType = "PrePaid",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceTypeFamilyId"] = @default.Apply(@default => @default.Apply(getInstanceTypeFamiliesResult => getInstanceTypeFamiliesResult.Families[0]?.Id)),
///         ["instanceIds"] = @default.Apply(@default => @default.Apply(getInstanceTypeFamiliesResult => getInstanceTypeFamiliesResult.Ids)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ecs.GetInstanceTypeFamilies(ctx, &ecs.GetInstanceTypeFamiliesArgs{
/// 			InstanceChargeType: pulumi.StringRef("PrePaid"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceTypeFamilyId", _default.Families[0].Id)
/// 		ctx.Export("instanceIds", _default.Ids)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypeFamiliesArgs;
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
///         final var default = EcsFunctions.getInstanceTypeFamilies(GetInstanceTypeFamiliesArgs.builder()
///             .instanceChargeType("PrePaid")
///             .build());
///
///         ctx.export("firstInstanceTypeFamilyId", default_.families()[0].id());
///         ctx.export("instanceIds", default_.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypeFamilies
///       arguments:
///         instanceChargeType: PrePaid
/// outputs:
///   firstInstanceTypeFamilyId: ${default.families[0].id}
///   instanceIds: ${default.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_instance_type_families_get_instance_type_families_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypeFamiliesResult> getInstanceTypeFamilies(
  GetInstanceTypeFamiliesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getInstanceTypeFamilies:getInstanceTypeFamilies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeFamiliesResult.fromMap(result);
}

/// This data source provides the ECS instance types of Alibaba Cloud.
///
/// > **NOTE:** Available since v1.0.0.
///
/// > **NOTE:** By default, only the upgraded instance types are returned. If you want to get outdated instance types, you must set `is_outdated` to true.
///
/// > **NOTE:** If one instance type is sold out, it will not be exported.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// // Declare the data source
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     instanceTypeFamily: "ecs.sn1ne",
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_[0-9]+_[0-9]+_x64*",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultEcsNetworkInterface = new alicloud.ecs.EcsNetworkInterface("default", {
///     networkInterfaceName: name,
///     vswitchId: defaultSwitch.id,
///     securityGroupIds: [defaultSecurityGroup.id],
/// });
/// const defaultInstance: alicloud.ecs.Instance[] = [];
/// for (const range = {value: 0}; range.value < 14; range.value++) {
///     defaultInstance.push(new alicloud.ecs.Instance(`default-${range.value}`, {
///         imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///         instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///         instanceName: name,
///         securityGroups: [defaultSecurityGroup].map(__item => __item.id),
///         internetChargeType: "PayByTraffic",
///         internetMaxBandwidthOut: 10,
///         availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///         instanceChargeType: "PostPaid",
///         systemDiskCategory: "cloud_efficiency",
///         vswitchId: defaultSwitch.id,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// # Declare the data source
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     instance_type_family="ecs.sn1ne")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_[0-9]+_[0-9]+_x64*",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_ecs_network_interface = alicloud.ecs.EcsNetworkInterface("default",
///     network_interface_name=name,
///     vswitch_id=default_switch.id,
///     security_group_ids=[default_security_group.id])
/// default_instance = []
/// for range in [{"value": i} for i in range(0, 14)]:
///     default_instance.append(alicloud.ecs.Instance(f"default-{range['value']}",
///         image_id=default_get_images.images[0].id,
///         instance_type=default_get_instance_types.instance_types[0].id,
///         instance_name=name,
///         security_groups=[__item.id for __item in [default_security_group]],
///         internet_charge_type="PayByTraffic",
///         internet_max_bandwidth_out=10,
///         availability_zone=default.zones[0].id,
///         instance_charge_type="PostPaid",
///         system_disk_category="cloud_efficiency",
///         vswitch_id=default_switch.id))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     // Declare the data source
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceTypeFamily = "ecs.sn1ne",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_[0-9]+_[0-9]+_x64*",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.192.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultEcsNetworkInterface = new AliCloud.Ecs.EcsNetworkInterface("default", new()
///     {
///         NetworkInterfaceName = name,
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///     });
///
///     var defaultInstance = new List<AliCloud.Ecs.Instance>();
///     for (var rangeIndex = 0; rangeIndex < 14; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultInstance.Add(new AliCloud.Ecs.Instance($"default-{range.Value}", new()
///         {
///             ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///             InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///             InstanceName = name,
///             SecurityGroups = new[]
///             {
///                 defaultSecurityGroup,
///             }.Select(__item => __item.Id).ToList(),
///             InternetChargeType = "PayByTraffic",
///             InternetMaxBandwidthOut = 10,
///             AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///             InstanceChargeType = "PostPaid",
///             SystemDiskCategory = "cloud_efficiency",
///             VswitchId = defaultSwitch.Id,
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// // Declare the data source
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// InstanceTypeFamily: pulumi.StringRef("ecs.sn1ne"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// NameRegex: pulumi.StringRef("^ubuntu_[0-9]+_[0-9]+_x64*"),
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("192.168.192.0/24"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewEcsNetworkInterface(ctx, "default", &ecs.EcsNetworkInterfaceArgs{
/// NetworkInterfaceName: pulumi.String(name),
/// VswitchId: defaultSwitch.ID(),
/// SecurityGroupIds: pulumi.StringArray{
/// defaultSecurityGroup.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// var defaultInstance []*ecs.Instance
/// for index := 0; index < 14; index++ {
///     key0 := index
///     _ := index
/// __res, err := ecs.NewInstance(ctx, fmt.Sprintf("default-%v", key0), &ecs.InstanceArgs{
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// InstanceName: pulumi.String(name),
/// SecurityGroups: splat0,
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// VswitchId: defaultSwitch.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultInstance = append(defaultInstance, __res)
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         // Declare the data source
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceTypeFamily("ecs.sn1ne")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_[0-9]+_[0-9]+_x64*")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.192.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultEcsNetworkInterface = new EcsNetworkInterface("defaultEcsNetworkInterface", EcsNetworkInterfaceArgs.builder()
///             .networkInterfaceName(name)
///             .vswitchId(defaultSwitch.id())
///             .securityGroupIds(defaultSecurityGroup.id())
///             .build());
///
///         for (var i = 0; i < 14; i++) {
///             new Instance("defaultInstance-" + i, InstanceArgs.builder()
///                 .imageId(defaultGetImages.images()[0].id())
///                 .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///                 .instanceName(name)
///                 .securityGroups(defaultSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///                 .internetChargeType("PayByTraffic")
///                 .internetMaxBandwidthOut(10)
///                 .availabilityZone(default_.zones()[0].id())
///                 .instanceChargeType("PostPaid")
///                 .systemDiskCategory("cloud_efficiency")
///                 .vswitchId(defaultSwitch.id())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_instance_types_get_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}

/// The Instances data source list ECS instance resources according to their ID, name regex, image id, status and other fields.
///
/// > **NOTE:** Available since v1.7.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const instancesDs = alicloud.ecs.getInstances({
///     nameRegex: "web_server",
///     status: "Running",
/// });
/// export const firstInstanceId = instancesDs.then(instancesDs => instancesDs.instances?.[0]?.id);
/// export const instanceIds = instancesDs.then(instancesDs => instancesDs.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// instances_ds = alicloud.ecs.get_instances(name_regex="web_server",
///     status="Running")
/// pulumi.export("firstInstanceId", instances_ds.instances[0].id)
/// pulumi.export("instanceIds", instances_ds.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instancesDs = AliCloud.Ecs.GetInstances.Invoke(new()
///     {
///         NameRegex = "web_server",
///         Status = "Running",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceId"] = instancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///         ["instanceIds"] = instancesDs.Apply(getInstancesResult => getInstancesResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instancesDs, err := ecs.GetInstances(ctx, &ecs.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("web_server"),
/// 			Status:    pulumi.StringRef("Running"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceId", instancesDs.Instances[0].Id)
/// 		ctx.Export("instanceIds", instancesDs.Ids)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstancesArgs;
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
///         final var instancesDs = EcsFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("web_server")
///             .status("Running")
///             .build());
///
///         ctx.export("firstInstanceId", instancesDs.instances()[0].id());
///         ctx.export("instanceIds", instancesDs.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   instancesDs:
///     fn::invoke:
///       function: alicloud:ecs:getInstances
///       arguments:
///         nameRegex: web_server
///         status: Running
/// outputs:
///   firstInstanceId: ${instancesDs.instances[0].id}
///   instanceIds: ${instancesDs.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// > **DEPRECATED:** This datasource has been renamed to alicloud.ecs.getEcsKeyPairs from version 1.121.0.
///
/// This data source provides a list of key pairs in an Alibaba Cloud account according to the specified filters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const defaultKeyPair = new alicloud.ecs.KeyPair("default", {keyName: "keyPairDatasource"});
/// const _default = alicloud.ecs.getKeyPairsOutput({
///     nameRegex: defaultKeyPair.keyName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// default_key_pair = alicloud.ecs.KeyPair("default", key_name="keyPairDatasource")
/// default = alicloud.ecs.get_key_pairs_output(name_regex=default_key_pair.key_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var defaultKeyPair = new AliCloud.Ecs.KeyPair("default", new()
///     {
///         KeyName = "keyPairDatasource",
///     });
///
///     var @default = AliCloud.Ecs.GetKeyPairs.Invoke(new()
///     {
///         NameRegex = defaultKeyPair.KeyName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		defaultKeyPair, err := ecs.NewKeyPair(ctx, "default", &ecs.KeyPairArgs{
/// 			KeyName: pulumi.String("keyPairDatasource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = ecs.GetKeyPairsOutput(ctx, ecs.GetKeyPairsOutputArgs{
/// 			NameRegex: defaultKeyPair.KeyName,
/// 		}, nil)
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
/// import com.pulumi.alicloud.ecs.KeyPair;
/// import com.pulumi.alicloud.ecs.KeyPairArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetKeyPairsArgs;
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
///         // Declare the data source
///         var defaultKeyPair = new KeyPair("defaultKeyPair", KeyPairArgs.builder()
///             .keyName("keyPairDatasource")
///             .build());
///
///         final var default = EcsFunctions.getKeyPairs(GetKeyPairsArgs.builder()
///             .nameRegex(defaultKeyPair.keyName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Declare the data source
///   defaultKeyPair:
///     type: alicloud:ecs:KeyPair
///     name: default
///     properties:
///       keyName: keyPairDatasource
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getKeyPairs
///       arguments:
///         nameRegex: ${defaultKeyPair.keyName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_key_pairs_get_key_pairs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyPairsResult> getKeyPairs(
  GetKeyPairsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getKeyPairs:getKeyPairs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyPairsResult.fromMap(result);
}

/// > **DEPRECATED:** This datasource has been renamed to alicloud.ecs.getEcsNetworkInterfaces from version 1.123.1.
///
/// Use this data source to get a list of elastic network interfaces according to the specified filters in an Alibaba Cloud account.
///
/// For information about elastic network interface and how to use it, see [Elastic Network Interface](https://www.alibabacloud.com/help/doc-detail/58496.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "networkInterfacesName";
/// const vpc = new alicloud.vpc.Network("vpc", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/24",
/// });
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     vswitchName: name,
///     cidrBlock: "192.168.0.0/24",
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     vpcId: vpc.id,
/// });
/// const group = new alicloud.ecs.SecurityGroup("group", {
///     name: name,
///     vpcId: vpc.id,
/// });
/// const _interface = new alicloud.vpc.NetworkInterface("interface", {
///     name: `${name}%d`,
///     vswitchId: vswitch.id,
///     securityGroups: [group.id],
///     description: "Basic test",
///     privateIp: "192.168.0.2",
///     tags: {
///         "TF-VER": "0.11.3",
///     },
/// });
/// const instance = new alicloud.ecs.Instance("instance", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     securityGroups: [group.id],
///     instanceType: "ecs.e3.xlarge",
///     systemDiskCategory: "cloud_efficiency",
///     imageId: "centos_7_04_64_20G_alibase_201701015.vhd",
///     instanceName: name,
///     vswitchId: vswitch.id,
///     internetMaxBandwidthOut: 10,
/// });
/// const attachment = new alicloud.vpc.NetworkInterfaceAttachment("attachment", {
///     instanceId: instance.id,
///     networkInterfaceId: _interface.id,
/// });
/// const defaultGetNetworkInterfaces = alicloud.ecs.getNetworkInterfacesOutput({
///     ids: [attachment.networkInterfaceId],
///     nameRegex: name,
///     tags: {
///         "TF-VER": "0.11.3",
///     },
///     vpcId: vpc.id,
///     vswitchId: vswitch.id,
///     privateIp: "192.168.0.2",
///     securityGroupId: group.id,
///     type: "Secondary",
///     instanceId: instance.id,
/// });
/// export const eni0Name = defaultGetNetworkInterfaces.apply(defaultGetNetworkInterfaces => defaultGetNetworkInterfaces.interfaces?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "networkInterfacesName"
/// vpc = alicloud.vpc.Network("vpc",
///     vpc_name=name,
///     cidr_block="192.168.0.0/24")
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// vswitch = alicloud.vpc.Switch("vswitch",
///     vswitch_name=name,
///     cidr_block="192.168.0.0/24",
///     availability_zone=default.zones[0].id,
///     vpc_id=vpc.id)
/// group = alicloud.ecs.SecurityGroup("group",
///     name=name,
///     vpc_id=vpc.id)
/// interface = alicloud.vpc.NetworkInterface("interface",
///     name=f"{name}%d",
///     vswitch_id=vswitch.id,
///     security_groups=[group.id],
///     description="Basic test",
///     private_ip="192.168.0.2",
///     tags={
///         "TF-VER": "0.11.3",
///     })
/// instance = alicloud.ecs.Instance("instance",
///     availability_zone=default.zones[0].id,
///     security_groups=[group.id],
///     instance_type="ecs.e3.xlarge",
///     system_disk_category="cloud_efficiency",
///     image_id="centos_7_04_64_20G_alibase_201701015.vhd",
///     instance_name=name,
///     vswitch_id=vswitch.id,
///     internet_max_bandwidth_out=10)
/// attachment = alicloud.vpc.NetworkInterfaceAttachment("attachment",
///     instance_id=instance.id,
///     network_interface_id=interface.id)
/// default_get_network_interfaces = alicloud.ecs.get_network_interfaces_output(ids=[attachment.network_interface_id],
///     name_regex=name,
///     tags={
///         "TF-VER": "0.11.3",
///     },
///     vpc_id=vpc.id,
///     vswitch_id=vswitch.id,
///     private_ip="192.168.0.2",
///     security_group_id=group.id,
///     type="Secondary",
///     instance_id=instance.id)
/// pulumi.export("eni0Name", default_get_network_interfaces.interfaces[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "networkInterfacesName";
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/24",
///     });
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.0.0/24",
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VpcId = vpc.Id,
///     });
///
///     var @group = new AliCloud.Ecs.SecurityGroup("group", new()
///     {
///         Name = name,
///         VpcId = vpc.Id,
///     });
///
///     var @interface = new AliCloud.Vpc.NetworkInterface("interface", new()
///     {
///         Name = $"{name}%d",
///         VswitchId = vswitch.Id,
///         SecurityGroups = new[]
///         {
///             @group.Id,
///         },
///         Description = "Basic test",
///         PrivateIp = "192.168.0.2",
///         Tags =
///         {
///             { "TF-VER", "0.11.3" },
///         },
///     });
///
///     var instance = new AliCloud.Ecs.Instance("instance", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         SecurityGroups = new[]
///         {
///             @group.Id,
///         },
///         InstanceType = "ecs.e3.xlarge",
///         SystemDiskCategory = "cloud_efficiency",
///         ImageId = "centos_7_04_64_20G_alibase_201701015.vhd",
///         InstanceName = name,
///         VswitchId = vswitch.Id,
///         InternetMaxBandwidthOut = 10,
///     });
///
///     var attachment = new AliCloud.Vpc.NetworkInterfaceAttachment("attachment", new()
///     {
///         InstanceId = instance.Id,
///         NetworkInterfaceId = @interface.Id,
///     });
///
///     var defaultGetNetworkInterfaces = AliCloud.Ecs.GetNetworkInterfaces.Invoke(new()
///     {
///         Ids = new[]
///         {
///             attachment.NetworkInterfaceId,
///         },
///         NameRegex = name,
///         Tags =
///         {
///             { "TF-VER", "0.11.3" },
///         },
///         VpcId = vpc.Id,
///         VswitchId = vswitch.Id,
///         PrivateIp = "192.168.0.2",
///         SecurityGroupId = @group.Id,
///         Type = "Secondary",
///         InstanceId = instance.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eni0Name"] = defaultGetNetworkInterfaces.Apply(getNetworkInterfacesResult => getNetworkInterfacesResult.Interfaces[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "networkInterfacesName";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("192.168.0.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// CidrBlock: pulumi.String("192.168.0.0/24"),
/// AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// VpcId: vpc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// group, err := ecs.NewSecurityGroup(ctx, "group", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// VpcId: vpc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// interface, err := vpc.NewNetworkInterface(ctx, "interface", &vpc.NetworkInterfaceArgs{
/// Name: pulumi.Sprintf("%v%v", name, "%d"),
/// VswitchId: vswitch.ID(),
/// SecurityGroups: pulumi.StringArray{
/// group.ID(),
/// },
/// Description: pulumi.String("Basic test"),
/// PrivateIp: pulumi.String("192.168.0.2"),
/// Tags: pulumi.StringMap{
/// "TF-VER": pulumi.String("0.11.3"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// instance, err := ecs.NewInstance(ctx, "instance", &ecs.InstanceArgs{
/// AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// SecurityGroups: pulumi.StringArray{
/// group.ID(),
/// },
/// InstanceType: pulumi.String("ecs.e3.xlarge"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// ImageId: pulumi.String("centos_7_04_64_20G_alibase_201701015.vhd"),
/// InstanceName: pulumi.String(name),
/// VswitchId: vswitch.ID(),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// })
/// if err != nil {
/// return err
/// }
/// attachment, err := vpc.NewNetworkInterfaceAttachment(ctx, "attachment", &vpc.NetworkInterfaceAttachmentArgs{
/// InstanceId: instance.ID(),
/// NetworkInterfaceId: interface.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultGetNetworkInterfaces := ecs.GetNetworkInterfacesOutput(ctx, ecs.GetNetworkInterfacesOutputArgs{
/// Ids: pulumi.StringArray{
/// attachment.NetworkInterfaceId,
/// },
/// NameRegex: pulumi.String(name),
/// Tags: pulumi.StringMap{
/// "TF-VER": pulumi.String("0.11.3"),
/// },
/// VpcId: vpc.ID(),
/// VswitchId: vswitch.ID(),
/// PrivateIp: pulumi.String("192.168.0.2"),
/// SecurityGroupId: group.ID(),
/// Type: pulumi.String("Secondary"),
/// InstanceId: instance.ID(),
/// }, nil);
/// ctx.Export("eni0Name", defaultGetNetworkInterfaces.ApplyT(func(defaultGetNetworkInterfaces ecs.GetNetworkInterfacesResult) (*string, error) {
/// return &defaultGetNetworkInterfaces.Interfaces[0].Name, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.NetworkInterface;
/// import com.pulumi.alicloud.vpc.NetworkInterfaceArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.vpc.NetworkInterfaceAttachment;
/// import com.pulumi.alicloud.vpc.NetworkInterfaceAttachmentArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetNetworkInterfacesArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("networkInterfacesName");
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/24")
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.0.0/24")
///             .availabilityZone(default_.zones()[0].id())
///             .vpcId(vpc.id())
///             .build());
///
///         var group = new SecurityGroup("group", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(vpc.id())
///             .build());
///
///         var interface_ = new NetworkInterface("interface", NetworkInterfaceArgs.builder()
///             .name(String.format("%s%d", name))
///             .vswitchId(vswitch.id())
///             .securityGroups(group.id())
///             .description("Basic test")
///             .privateIp("192.168.0.2")
///             .tags(Map.of("TF-VER", "0.11.3"))
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .securityGroups(group.id())
///             .instanceType("ecs.e3.xlarge")
///             .systemDiskCategory("cloud_efficiency")
///             .imageId("centos_7_04_64_20G_alibase_201701015.vhd")
///             .instanceName(name)
///             .vswitchId(vswitch.id())
///             .internetMaxBandwidthOut(10)
///             .build());
///
///         var attachment = new NetworkInterfaceAttachment("attachment", NetworkInterfaceAttachmentArgs.builder()
///             .instanceId(instance.id())
///             .networkInterfaceId(interface_.id())
///             .build());
///
///         final var defaultGetNetworkInterfaces = EcsFunctions.getNetworkInterfaces(GetNetworkInterfacesArgs.builder()
///             .ids(attachment.networkInterfaceId())
///             .nameRegex(name)
///             .tags(Map.of("TF-VER", "0.11.3"))
///             .vpcId(vpc.id())
///             .vswitchId(vswitch.id())
///             .privateIp("192.168.0.2")
///             .securityGroupId(group.id())
///             .type("Secondary")
///             .instanceId(instance.id())
///             .build());
///
///         ctx.export("eni0Name", defaultGetNetworkInterfaces.applyValue(_defaultGetNetworkInterfaces -> _defaultGetNetworkInterfaces.interfaces()[0].name()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: networkInterfacesName
/// resources:
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/24
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.0.0/24
///       availabilityZone: ${default.zones[0].id}
///       vpcId: ${vpc.id}
///   group:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       name: ${name}
///       vpcId: ${vpc.id}
///   interface:
///     type: alicloud:vpc:NetworkInterface
///     properties:
///       name: ${name}%d
///       vswitchId: ${vswitch.id}
///       securityGroups:
///         - ${group.id}
///       description: Basic test
///       privateIp: 192.168.0.2
///       tags:
///         TF-VER: 0.11.3
///   instance:
///     type: alicloud:ecs:Instance
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       securityGroups:
///         - ${group.id}
///       instanceType: ecs.e3.xlarge
///       systemDiskCategory: cloud_efficiency
///       imageId: centos_7_04_64_20G_alibase_201701015.vhd
///       instanceName: ${name}
///       vswitchId: ${vswitch.id}
///       internetMaxBandwidthOut: 10
///   attachment:
///     type: alicloud:vpc:NetworkInterfaceAttachment
///     properties:
///       instanceId: ${instance.id}
///       networkInterfaceId: ${interface.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworkInterfaces:
///     fn::invoke:
///       function: alicloud:ecs:getNetworkInterfaces
///       arguments:
///         ids:
///           - ${attachment.networkInterfaceId}
///         nameRegex: ${name}
///         tags:
///           TF-VER: 0.11.3
///         vpcId: ${vpc.id}
///         vswitchId: ${vswitch.id}
///         privateIp: 192.168.0.2
///         securityGroupId: ${group.id}
///         type: Secondary
///         instanceId: ${instance.id}
/// outputs:
///   eni0Name: ${defaultGetNetworkInterfaces.interfaces[0].name}
/// ```
///
///
/// ##  Argument Reference
///
/// The following arguments are supported:
///
/// * `ids` - (Optional)  A list of ENI IDs.
/// * `name_regex` - (Optional) A regex string to filter results by ENI name.
/// * `vpc_id` - (Optional) The VPC ID linked to ENIs.
/// * `vswitch_id` - (Optional) The vSwitch ID linked to ENIs.
/// * `private_ip` - (Optional) The primary private IP address of the ENI.
/// * `security_group_id` - (Optional) The security group ID linked to ENIs.
/// * `name` - (Optional) The name of the ENIs.
/// * `type` - (Optional) The type of ENIs, Only support for "Primary" or "Secondary".
/// * `instance_id` - (Optional) The ECS instance ID that the ENI is attached to.
/// * `tags` - (Optional) A map of tags assigned to ENIs.
/// * `output_file` - (Optional) The name of output file that saves the filter results.
/// * `resource_group_id` - (Optional, ForceNew, Available in 1.57.0+) The Id of resource group which the network interface belongs.
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_network_interfaces_get_network_interfaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfacesResult> getNetworkInterfaces(
  GetNetworkInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getNetworkInterfaces:getNetworkInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfacesResult.fromMap(result);
}

/// The `alicloud.ecs.getSecurityGroupRules` data source provides a collection of security permissions of a specific security group.
/// Each collection item represents a single `ingress` or `egress` permission rule.
/// The ID of the security group can be provided via a variable or the result from the other data source `alicloud.ecs.getSecurityGroups`.
///
/// ## Example Usage
///
/// The following example shows how to obtain details about a security group rule and how to pass its data to an instance at launch time.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const securityGroupId = config.requireObject<any>("securityGroupId");
/// // Or get it from the alicloud_security_groups data source.
/// // Please note that the data source arguments must be enough to filter results to one security group.
/// const groupsDs = alicloud.ecs.getSecurityGroups({
///     nameRegex: "api",
/// });
/// // Filter the security group rule by group
/// const ingressRulesDs = groupsDs.then(groupsDs => alicloud.ecs.getSecurityGroupRules({
///     groupId: groupsDs.groups?.[0]?.id,
///     nicType: "internet",
///     direction: "ingress",
///     ipProtocol: "tcp",
/// }));
/// // Pass port_range to the backend service
/// const backend = new alicloud.ecs.Instance("backend", {userData: ingressRulesDs.then(ingressRulesDs => `config_service.sh --portrange=${ingressRulesDs.rules?.[0]?.portRange}`)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// security_group_id = config.require_object("securityGroupId")
/// # Or get it from the alicloud_security_groups data source.
/// # Please note that the data source arguments must be enough to filter results to one security group.
/// groups_ds = alicloud.ecs.get_security_groups(name_regex="api")
/// # Filter the security group rule by group
/// ingress_rules_ds = alicloud.ecs.get_security_group_rules(group_id=groups_ds.groups[0].id,
///     nic_type="internet",
///     direction="ingress",
///     ip_protocol="tcp")
/// # Pass port_range to the backend service
/// backend = alicloud.ecs.Instance("backend", user_data=f"config_service.sh --portrange={ingress_rules_ds.rules[0].port_range}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var securityGroupId = config.RequireObject<dynamic>("securityGroupId");
///     // Or get it from the alicloud_security_groups data source.
///     // Please note that the data source arguments must be enough to filter results to one security group.
///     var groupsDs = AliCloud.Ecs.GetSecurityGroups.Invoke(new()
///     {
///         NameRegex = "api",
///     });
///
///     // Filter the security group rule by group
///     var ingressRulesDs = AliCloud.Ecs.GetSecurityGroupRules.Invoke(new()
///     {
///         GroupId = groupsDs.Apply(getSecurityGroupsResult => getSecurityGroupsResult.Groups[0]?.Id),
///         NicType = "internet",
///         Direction = "ingress",
///         IpProtocol = "tcp",
///     });
///
///     // Pass port_range to the backend service
///     var backend = new AliCloud.Ecs.Instance("backend", new()
///     {
///         UserData = $"config_service.sh --portrange={ingressRulesDs.Apply(getSecurityGroupRulesResult => getSecurityGroupRulesResult.Rules[0]?.PortRange)}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		securityGroupId := cfg.RequireObject("securityGroupId")
/// 		// Or get it from the alicloud_security_groups data source.
/// 		// Please note that the data source arguments must be enough to filter results to one security group.
/// 		groupsDs, err := ecs.GetSecurityGroups(ctx, &ecs.GetSecurityGroupsArgs{
/// 			NameRegex: pulumi.StringRef("api"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Filter the security group rule by group
/// 		ingressRulesDs, err := ecs.GetSecurityGroupRules(ctx, &ecs.GetSecurityGroupRulesArgs{
/// 			GroupId:    groupsDs.Groups[0].Id,
/// 			NicType:    pulumi.StringRef("internet"),
/// 			Direction:  pulumi.StringRef("ingress"),
/// 			IpProtocol: pulumi.StringRef("tcp"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Pass port_range to the backend service
/// 		_, err = ecs.NewInstance(ctx, "backend", &ecs.InstanceArgs{
/// 			UserData: pulumi.Sprintf("config_service.sh --portrange=%v", ingressRulesDs.Rules[0].PortRange),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetSecurityGroupsArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetSecurityGroupRulesArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
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
///         final var config = ctx.config();
///         final var securityGroupId = config.get("securityGroupId");
///         // Or get it from the alicloud_security_groups data source.
///         // Please note that the data source arguments must be enough to filter results to one security group.
///         final var groupsDs = EcsFunctions.getSecurityGroups(GetSecurityGroupsArgs.builder()
///             .nameRegex("api")
///             .build());
///
///         // Filter the security group rule by group
///         final var ingressRulesDs = EcsFunctions.getSecurityGroupRules(GetSecurityGroupRulesArgs.builder()
///             .groupId(groupsDs.groups()[0].id())
///             .nicType("internet")
///             .direction("ingress")
///             .ipProtocol("tcp")
///             .build());
///
///         // Pass port_range to the backend service
///         var backend = new Instance("backend", InstanceArgs.builder()
///             .userData(String.format("config_service.sh --portrange=%s", ingressRulesDs.rules()[0].portRange()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   # Get the security group id from a variable
///   securityGroupId:
///     type: dynamic
/// resources:
///   # Pass port_range to the backend service
///   backend:
///     type: alicloud:ecs:Instance
///     properties:
///       userData: config_service.sh --portrange=${ingressRulesDs.rules[0].portRange}
/// variables:
///   # Or get it from the alicloud_security_groups data source.
///   # Please note that the data source arguments must be enough to filter results to one security group.
///   groupsDs:
///     fn::invoke:
///       function: alicloud:ecs:getSecurityGroups
///       arguments:
///         nameRegex: api
///   # Filter the security group rule by group
///   ingressRulesDs:
///     fn::invoke:
///       function: alicloud:ecs:getSecurityGroupRules
///       arguments:
///         groupId: ${groupsDs.groups[0].id}
///         nicType: internet
///         direction: ingress
///         ipProtocol: tcp
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_security_group_rules_get_security_group_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGroupRulesResult> getSecurityGroupRules(
  GetSecurityGroupRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getSecurityGroupRules:getSecurityGroupRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupRulesResult.fromMap(result);
}

/// This data source provides a list of Security Groups in an Alibaba Cloud account according to the specified filters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Filter security groups and print the results into a file
/// const secGroupsDs = alicloud.ecs.getSecurityGroups({
///     nameRegex: "^web-",
///     outputFile: "web_access.json",
/// });
/// // In conjunction with a VPC
/// const primaryVpcDs = new alicloud.vpc.Network("primary_vpc_ds", {});
/// const primarySecGroupsDs = alicloud.ecs.getSecurityGroupsOutput({
///     vpcId: primaryVpcDs.id,
/// });
/// export const firstGroupId = primarySecGroupsDs.apply(primarySecGroupsDs => primarySecGroupsDs.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Filter security groups and print the results into a file
/// sec_groups_ds = alicloud.ecs.get_security_groups(name_regex="^web-",
///     output_file="web_access.json")
/// # In conjunction with a VPC
/// primary_vpc_ds = alicloud.vpc.Network("primary_vpc_ds")
/// primary_sec_groups_ds = alicloud.ecs.get_security_groups_output(vpc_id=primary_vpc_ds.id)
/// pulumi.export("firstGroupId", primary_sec_groups_ds.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Filter security groups and print the results into a file
///     var secGroupsDs = AliCloud.Ecs.GetSecurityGroups.Invoke(new()
///     {
///         NameRegex = "^web-",
///         OutputFile = "web_access.json",
///     });
///
///     // In conjunction with a VPC
///     var primaryVpcDs = new AliCloud.Vpc.Network("primary_vpc_ds");
///
///     var primarySecGroupsDs = AliCloud.Ecs.GetSecurityGroups.Invoke(new()
///     {
///         VpcId = primaryVpcDs.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGroupId"] = primarySecGroupsDs.Apply(getSecurityGroupsResult => getSecurityGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Filter security groups and print the results into a file
/// 		_, err := ecs.GetSecurityGroups(ctx, &ecs.GetSecurityGroupsArgs{
/// 			NameRegex:  pulumi.StringRef("^web-"),
/// 			OutputFile: pulumi.StringRef("web_access.json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// In conjunction with a VPC
/// 		primaryVpcDs, err := vpc.NewNetwork(ctx, "primary_vpc_ds", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primarySecGroupsDs := ecs.GetSecurityGroupsOutput(ctx, ecs.GetSecurityGroupsOutputArgs{
/// 			VpcId: primaryVpcDs.ID(),
/// 		}, nil)
/// 		ctx.Export("firstGroupId", primarySecGroupsDs.ApplyT(func(primarySecGroupsDs ecs.GetSecurityGroupsResult) (*string, error) {
/// 			return &primarySecGroupsDs.Groups[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetSecurityGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
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
///         // Filter security groups and print the results into a file
///         final var secGroupsDs = EcsFunctions.getSecurityGroups(GetSecurityGroupsArgs.builder()
///             .nameRegex("^web-")
///             .outputFile("web_access.json")
///             .build());
///
///         // In conjunction with a VPC
///         var primaryVpcDs = new Network("primaryVpcDs");
///
///         final var primarySecGroupsDs = EcsFunctions.getSecurityGroups(GetSecurityGroupsArgs.builder()
///             .vpcId(primaryVpcDs.id())
///             .build());
///
///         ctx.export("firstGroupId", primarySecGroupsDs.applyValue(_primarySecGroupsDs -> _primarySecGroupsDs.groups()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # In conjunction with a VPC
///   primaryVpcDs:
///     type: alicloud:vpc:Network
///     name: primary_vpc_ds
/// variables:
///   # Filter security groups and print the results into a file
///   secGroupsDs:
///     fn::invoke:
///       function: alicloud:ecs:getSecurityGroups
///       arguments:
///         nameRegex: ^web-
///         outputFile: web_access.json
///   primarySecGroupsDs:
///     fn::invoke:
///       function: alicloud:ecs:getSecurityGroups
///       arguments:
///         vpcId: ${primaryVpcDs.id}
/// outputs:
///   firstGroupId: ${primarySecGroupsDs.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_security_groups_get_security_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGroupsResult> getSecurityGroups(
  GetSecurityGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getSecurityGroups:getSecurityGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupsResult.fromMap(result);
}

/// > **DEPRECATED:** This datasource has been renamed to alicloud.ecs.getEcsSnapshots from version 1.120.0.
///
/// Use this data source to get a list of snapshot according to the specified filters in an Alibaba Cloud account.
///
/// For information about snapshot and how to use it, see [Snapshot](https://www.alibabacloud.com/help/doc-detail/25460.html).
///
/// > **NOTE:**  Available in 1.40.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const snapshots = alicloud.ecs.getSnapshots({
///     ids: ["s-123456890abcdef"],
///     nameRegex: "tf-testAcc-snapshot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// snapshots = alicloud.ecs.get_snapshots(ids=["s-123456890abcdef"],
///     name_regex="tf-testAcc-snapshot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshots = AliCloud.Ecs.GetSnapshots.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "s-123456890abcdef",
///         },
///         NameRegex = "tf-testAcc-snapshot",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.GetSnapshots(ctx, &ecs.GetSnapshotsArgs{
/// 			Ids: []string{
/// 				"s-123456890abcdef",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc-snapshot"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetSnapshotsArgs;
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
///         final var snapshots = EcsFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .ids("s-123456890abcdef")
///             .nameRegex("tf-testAcc-snapshot")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   snapshots:
///     fn::invoke:
///       function: alicloud:ecs:getSnapshots
///       arguments:
///         ids:
///           - s-123456890abcdef
///         nameRegex: tf-testAcc-snapshot
/// ```
///
///
/// ##  Argument Reference
///
/// The following arguments are supported:
///
/// * `instance_id` - (Optional) The specified instance ID.
/// * `disk_id` - (Optional) The specified disk ID.
/// * `encrypted` - (Optional) Queries the encrypted snapshots. Optional values: `true`: Encrypted snapshots. `false`: No encryption attribute limit. Default value: `false`.
/// * `ids` - (Optional)  A list of snapshot IDs.
/// * `name_regex` - (Optional) A regex string to filter results by snapshot name.
/// * `status` - (Optional) The specified snapshot status. Default value: `all`. Optional values:
/// * progressing: The snapshots are being created.
/// * accomplished: The snapshots are ready to use.
/// * failed: The snapshot creation failed.
/// * all: All status.
/// * `type` - (Optional) The snapshot category. Default value: `all`. Optional values:
/// * auto: Auto snapshots.
/// * user: Manual snapshots.
/// * all: Auto and manual snapshots.
/// * `source_disk_type` - (Optional) The type of source disk:
/// * System: The snapshots are created for system disks.
/// * Data: The snapshots are created for data disks.
/// * `usage` - (Optional) The usage of the snapshot:
/// * image: The snapshots are used to create custom images.
/// * disk: The snapshots are used to CreateDisk.
/// * mage_disk: The snapshots are used to create custom images and data disks.
/// * none: The snapshots are not used yet.
/// * `tags` - (Optional) A map of tags assigned to snapshots.
/// * `output_file` - (Optional) The name of output file that saves the filter results.
/// [args] Arguments passed to this invoke. {@macro pulumi_ecs_get_snapshots_get_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotsResult> getSnapshots(
  GetSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecs/getSnapshots:getSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotsResult.fromMap(result);
}
