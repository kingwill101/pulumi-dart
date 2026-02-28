import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_attachment_args.dart';

/// Adds existing resource policies to a compute instance. You can only add one policy
/// which will be applied to this instance for scheduling start/stop operations.
///
/// This resource can be used instead of setting the resource_policy directly in the
/// compute instance resource to avoid dependency issues when using instance-level IAM
/// permissions.
///
///
///
/// ## Example Usage
///
/// ### Compute Resource Policy Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.compute.Instance("instance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "my-instance",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
/// });
/// const policy = new gcp.compute.ResourcePolicy("policy", {
///     name: "my-resource-policy",
///     region: "us-central1",
///     instanceSchedulePolicy: {
///         vmStartSchedule: {
///             schedule: "0 8 * * *",
///         },
///         vmStopSchedule: {
///             schedule: "0 18 * * *",
///         },
///         timeZone: "America/New_York",
///     },
/// });
/// const attachment = new gcp.compute.ResourcePolicyAttachment("attachment", {
///     name: policy.name,
///     instance: instance.name,
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.compute.Instance("instance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="my-instance",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     })
/// policy = gcp.compute.ResourcePolicy("policy",
///     name="my-resource-policy",
///     region="us-central1",
///     instance_schedule_policy={
///         "vm_start_schedule": {
///             "schedule": "0 8 * * *",
///         },
///         "vm_stop_schedule": {
///             "schedule": "0 18 * * *",
///         },
///         "time_zone": "America/New_York",
///     })
/// attachment = gcp.compute.ResourcePolicyAttachment("attachment",
///     name=policy.name,
///     instance=instance.name,
///     zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Compute.Instance("instance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "my-instance",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.ResourcePolicy("policy", new()
///     {
///         Name = "my-resource-policy",
///         Region = "us-central1",
///         InstanceSchedulePolicy = new Gcp.Compute.Inputs.ResourcePolicyInstanceSchedulePolicyArgs
///         {
///             VmStartSchedule = new Gcp.Compute.Inputs.ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs
///             {
///                 Schedule = "0 8 * * *",
///             },
///             VmStopSchedule = new Gcp.Compute.Inputs.ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs
///             {
///                 Schedule = "0 18 * * *",
///             },
///             TimeZone = "America/New_York",
///         },
///     });
///
///     var attachment = new Gcp.Compute.ResourcePolicyAttachment("attachment", new()
///     {
///         Name = policy.Name,
///         Instance = instance.Name,
///         Zone = "us-central1-a",
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
/// 		instance, err := compute.NewInstance(ctx, "instance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("my-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := compute.NewResourcePolicy(ctx, "policy", &compute.ResourcePolicyArgs{
/// 			Name:   pulumi.String("my-resource-policy"),
/// 			Region: pulumi.String("us-central1"),
/// 			InstanceSchedulePolicy: &compute.ResourcePolicyInstanceSchedulePolicyArgs{
/// 				VmStartSchedule: &compute.ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs{
/// 					Schedule: pulumi.String("0 8 * * *"),
/// 				},
/// 				VmStopSchedule: &compute.ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs{
/// 					Schedule: pulumi.String("0 18 * * *"),
/// 				},
/// 				TimeZone: pulumi.String("America/New_York"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewResourcePolicyAttachment(ctx, "attachment", &compute.ResourcePolicyAttachmentArgs{
/// 			Name:     policy.Name,
/// 			Instance: instance.Name,
/// 			Zone:     pulumi.String("us-central1-a"),
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyInstanceSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs;
/// import com.pulumi.gcp.compute.ResourcePolicyAttachment;
/// import com.pulumi.gcp.compute.ResourcePolicyAttachmentArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("my-instance")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new ResourcePolicy("policy", ResourcePolicyArgs.builder()
///             .name("my-resource-policy")
///             .region("us-central1")
///             .instanceSchedulePolicy(ResourcePolicyInstanceSchedulePolicyArgs.builder()
///                 .vmStartSchedule(ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs.builder()
///                     .schedule("0 8 * * *")
///                     .build())
///                 .vmStopSchedule(ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs.builder()
///                     .schedule("0 18 * * *")
///                     .build())
///                 .timeZone("America/New_York")
///                 .build())
///             .build());
///
///         var attachment = new ResourcePolicyAttachment("attachment", ResourcePolicyAttachmentArgs.builder()
///             .name(policy.name())
///             .instance(instance.name())
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: my-instance
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///   policy:
///     type: gcp:compute:ResourcePolicy
///     properties:
///       name: my-resource-policy
///       region: us-central1
///       instanceSchedulePolicy:
///         vmStartSchedule:
///           schedule: 0 8 * * *
///         vmStopSchedule:
///           schedule: 0 18 * * *
///         timeZone: America/New_York
///   attachment:
///     type: gcp:compute:ResourcePolicyAttachment
///     properties:
///       name: ${policy.name}
///       instance: ${instance.name}
///       zone: us-central1-a
/// ```
///
///
/// ## Import
///
/// ResourcePolicyAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instances/{{instance}}/{{name}}`
///
/// * `{{project}}/{{zone}}/{{instance}}/{{name}}`
///
/// * `{{zone}}/{{instance}}/{{name}}`
///
/// * `{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, ResourcePolicyAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default projects/{{project}}/zones/{{zone}}/instances/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default {{project}}/{{zone}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default {{zone}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default {{instance}}/{{name}}
/// ```
class ResourcePolicyAttachment extends pulumi.CustomResource {
  /// The name of the instance in which the resource policies are attached to.
  late final pulumi.Output<String> instance;
  /// The resource policy to be attached to the instance for scheduling start/stop
  /// operations. Do not specify the self link.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the zone where the instance resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [ResourcePolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicyAttachment]. {@macro pulumi_compute_resource_policy_attachment_resource_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicyAttachment(
    String name, {
    ResourcePolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
