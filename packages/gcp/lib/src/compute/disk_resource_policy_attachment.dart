import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_resource_policy_attachment_args.dart';

/// Adds existing resource policies to a disk. You can only add one policy
/// which will be applied to this disk for scheduling snapshot creation.
///
/// > **Note:** This resource does not support regional disks (`gcp.compute.RegionDisk`). For regional disks, please refer to the `gcp.compute.RegionDiskResourcePolicyAttachment` resource.
///
///
/// ## Example Usage
///
/// ### Disk Resource Policy Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const ssd = new gcp.compute.Disk("ssd", {
///     name: "my-disk",
///     image: myImage.then(myImage => myImage.selfLink),
///     size: 50,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const policy = new gcp.compute.ResourcePolicy("policy", {
///     name: "my-resource-policy",
///     region: "us-central1",
///     snapshotSchedulePolicy: {
///         schedule: {
///             dailySchedule: {
///                 daysInCycle: 1,
///                 startTime: "04:00",
///             },
///         },
///     },
/// });
/// const attachment = new gcp.compute.DiskResourcePolicyAttachment("attachment", {
///     name: policy.name,
///     disk: ssd.name,
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// ssd = gcp.compute.Disk("ssd",
///     name="my-disk",
///     image=my_image.self_link,
///     size=50,
///     type="pd-ssd",
///     zone="us-central1-a")
/// policy = gcp.compute.ResourcePolicy("policy",
///     name="my-resource-policy",
///     region="us-central1",
///     snapshot_schedule_policy={
///         "schedule": {
///             "daily_schedule": {
///                 "days_in_cycle": 1,
///                 "start_time": "04:00",
///             },
///         },
///     })
/// attachment = gcp.compute.DiskResourcePolicyAttachment("attachment",
///     name=policy.name,
///     disk=ssd.name,
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
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var ssd = new Gcp.Compute.Disk("ssd", new()
///     {
///         Name = "my-disk",
///         Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 50,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var policy = new Gcp.Compute.ResourcePolicy("policy", new()
///     {
///         Name = "my-resource-policy",
///         Region = "us-central1",
///         SnapshotSchedulePolicy = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyArgs
///         {
///             Schedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs
///             {
///                 DailySchedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs
///                 {
///                     DaysInCycle = 1,
///                     StartTime = "04:00",
///                 },
///             },
///         },
///     });
///
///     var attachment = new Gcp.Compute.DiskResourcePolicyAttachment("attachment", new()
///     {
///         Name = policy.Name,
///         Disk = ssd.Name,
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
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ssd, err := compute.NewDisk(ctx, "ssd", &compute.DiskArgs{
/// 			Name:  pulumi.String("my-disk"),
/// 			Image: pulumi.String(myImage.SelfLink),
/// 			Size:  pulumi.Int(50),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := compute.NewResourcePolicy(ctx, "policy", &compute.ResourcePolicyArgs{
/// 			Name:   pulumi.String("my-resource-policy"),
/// 			Region: pulumi.String("us-central1"),
/// 			SnapshotSchedulePolicy: &compute.ResourcePolicySnapshotSchedulePolicyArgs{
/// 				Schedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleArgs{
/// 					DailySchedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs{
/// 						DaysInCycle: pulumi.Int(1),
/// 						StartTime:   pulumi.String("04:00"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewDiskResourcePolicyAttachment(ctx, "attachment", &compute.DiskResourcePolicyAttachmentArgs{
/// 			Name: policy.Name,
/// 			Disk: ssd.Name,
/// 			Zone: pulumi.String("us-central1-a"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs;
/// import com.pulumi.gcp.compute.DiskResourcePolicyAttachment;
/// import com.pulumi.gcp.compute.DiskResourcePolicyAttachmentArgs;
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
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var ssd = new Disk("ssd", DiskArgs.builder()
///             .name("my-disk")
///             .image(myImage.selfLink())
///             .size(50)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var policy = new ResourcePolicy("policy", ResourcePolicyArgs.builder()
///             .name("my-resource-policy")
///             .region("us-central1")
///             .snapshotSchedulePolicy(ResourcePolicySnapshotSchedulePolicyArgs.builder()
///                 .schedule(ResourcePolicySnapshotSchedulePolicyScheduleArgs.builder()
///                     .dailySchedule(ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs.builder()
///                         .daysInCycle(1)
///                         .startTime("04:00")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var attachment = new DiskResourcePolicyAttachment("attachment", DiskResourcePolicyAttachmentArgs.builder()
///             .name(policy.name())
///             .disk(ssd.name())
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   attachment:
///     type: gcp:compute:DiskResourcePolicyAttachment
///     properties:
///       name: ${policy.name}
///       disk: ${ssd.name}
///       zone: us-central1-a
///   ssd:
///     type: gcp:compute:Disk
///     properties:
///       name: my-disk
///       image: ${myImage.selfLink}
///       size: 50
///       type: pd-ssd
///       zone: us-central1-a
///   policy:
///     type: gcp:compute:ResourcePolicy
///     properties:
///       name: my-resource-policy
///       region: us-central1
///       snapshotSchedulePolicy:
///         schedule:
///           dailySchedule:
///             daysInCycle: 1
///             startTime: 04:00
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// DiskResourcePolicyAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/disks/{{disk}}/{{name}}`
///
/// * `{{project}}/{{zone}}/{{disk}}/{{name}}`
///
/// * `{{zone}}/{{disk}}/{{name}}`
///
/// * `{{disk}}/{{name}}`
///
/// When using the `pulumi import` command, DiskResourcePolicyAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default projects/{{project}}/zones/{{zone}}/disks/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default {{project}}/{{zone}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default {{zone}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default {{disk}}/{{name}}
/// ```
class DiskResourcePolicyAttachment extends pulumi.CustomResource {
  /// The name of the disk in which the resource policies are attached to.
  late final pulumi.Output<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A reference to the zone where the disk resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [DiskResourcePolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskResourcePolicyAttachment]. {@macro pulumi_compute_disk_resource_policy_attachment_disk_resource_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskResourcePolicyAttachment(
    String name, {
    DiskResourcePolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.disk = registerOutput<String>('disk');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
