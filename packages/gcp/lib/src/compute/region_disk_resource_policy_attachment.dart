import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_disk_resource_policy_attachment_args.dart';

/// Adds existing resource policies to a disk. You can only add one policy
/// which will be applied to this disk for scheduling snapshot creation.
///
/// > **Note:** This resource does not support zonal disks (`gcp.compute.Disk`). For zonal disks, please refer to the `gcp.compute.DiskResourcePolicyAttachment` resource.
///
///
///
///
/// ## Example Usage
///
/// ### Region Disk Resource Policy Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const disk = new gcp.compute.Disk("disk", {
///     name: "my-base-disk",
///     image: "debian-cloud/debian-11",
///     size: 50,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const snapdisk = new gcp.compute.Snapshot("snapdisk", {
///     name: "my-snapshot",
///     sourceDisk: disk.name,
///     zone: "us-central1-a",
/// });
/// const ssd = new gcp.compute.RegionDisk("ssd", {
///     name: "my-disk",
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
///     snapshot: snapdisk.id,
///     size: 50,
///     type: "pd-ssd",
///     region: "us-central1",
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
/// const attachment = new gcp.compute.RegionDiskResourcePolicyAttachment("attachment", {
///     name: policy.name,
///     disk: ssd.name,
///     region: "us-central1",
/// });
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// disk = gcp.compute.Disk("disk",
///     name="my-base-disk",
///     image="debian-cloud/debian-11",
///     size=50,
///     type="pd-ssd",
///     zone="us-central1-a")
/// snapdisk = gcp.compute.Snapshot("snapdisk",
///     name="my-snapshot",
///     source_disk=disk.name,
///     zone="us-central1-a")
/// ssd = gcp.compute.RegionDisk("ssd",
///     name="my-disk",
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ],
///     snapshot=snapdisk.id,
///     size=50,
///     type="pd-ssd",
///     region="us-central1")
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
/// attachment = gcp.compute.RegionDiskResourcePolicyAttachment("attachment",
///     name=policy.name,
///     disk=ssd.name,
///     region="us-central1")
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new Gcp.Compute.Disk("disk", new()
///     {
///         Name = "my-base-disk",
///         Image = "debian-cloud/debian-11",
///         Size = 50,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var snapdisk = new Gcp.Compute.Snapshot("snapdisk", new()
///     {
///         Name = "my-snapshot",
///         SourceDisk = disk.Name,
///         Zone = "us-central1-a",
///     });
///
///     var ssd = new Gcp.Compute.RegionDisk("ssd", new()
///     {
///         Name = "my-disk",
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
///         },
///         Snapshot = snapdisk.Id,
///         Size = 50,
///         Type = "pd-ssd",
///         Region = "us-central1",
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
///     var attachment = new Gcp.Compute.RegionDiskResourcePolicyAttachment("attachment", new()
///     {
///         Name = policy.Name,
///         Disk = ssd.Name,
///         Region = "us-central1",
///     });
///
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
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
/// 		disk, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			Name:  pulumi.String("my-base-disk"),
/// 			Image: pulumi.String("debian-cloud/debian-11"),
/// 			Size:  pulumi.Int(50),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snapdisk, err := compute.NewSnapshot(ctx, "snapdisk", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("my-snapshot"),
/// 			SourceDisk: disk.Name,
/// 			Zone:       pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ssd, err := compute.NewRegionDisk(ctx, "ssd", &compute.RegionDiskArgs{
/// 			Name: pulumi.String("my-disk"),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
/// 			},
/// 			Snapshot: snapdisk.ID(),
/// 			Size:     pulumi.Int(50),
/// 			Type:     pulumi.String("pd-ssd"),
/// 			Region:   pulumi.String("us-central1"),
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
/// 		_, err = compute.NewRegionDiskResourcePolicyAttachment(ctx, "attachment", &compute.RegionDiskResourcePolicyAttachmentArgs{
/// 			Name:   policy.Name,
/// 			Disk:   ssd.Name,
/// 			Region: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
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
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
/// import com.pulumi.gcp.compute.RegionDisk;
/// import com.pulumi.gcp.compute.RegionDiskArgs;
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs;
/// import com.pulumi.gcp.compute.RegionDiskResourcePolicyAttachment;
/// import com.pulumi.gcp.compute.RegionDiskResourcePolicyAttachmentArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .name("my-base-disk")
///             .image("debian-cloud/debian-11")
///             .size(50)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var snapdisk = new Snapshot("snapdisk", SnapshotArgs.builder()
///             .name("my-snapshot")
///             .sourceDisk(disk.name())
///             .zone("us-central1-a")
///             .build());
///
///         var ssd = new RegionDisk("ssd", RegionDiskArgs.builder()
///             .name("my-disk")
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-f")
///             .snapshot(snapdisk.id())
///             .size(50)
///             .type("pd-ssd")
///             .region("us-central1")
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
///         var attachment = new RegionDiskResourcePolicyAttachment("attachment", RegionDiskResourcePolicyAttachmentArgs.builder()
///             .name(policy.name())
///             .disk(ssd.name())
///             .region("us-central1")
///             .build());
///
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   attachment:
///     type: gcp:compute:RegionDiskResourcePolicyAttachment
///     properties:
///       name: ${policy.name}
///       disk: ${ssd.name}
///       region: us-central1
///   disk:
///     type: gcp:compute:Disk
///     properties:
///       name: my-base-disk
///       image: debian-cloud/debian-11
///       size: 50
///       type: pd-ssd
///       zone: us-central1-a
///   snapdisk:
///     type: gcp:compute:Snapshot
///     properties:
///       name: my-snapshot
///       sourceDisk: ${disk.name}
///       zone: us-central1-a
///   ssd:
///     type: gcp:compute:RegionDisk
///     properties:
///       name: my-disk
///       replicaZones:
///         - us-central1-a
///         - us-central1-f
///       snapshot: ${snapdisk.id}
///       size: 50
///       type: pd-ssd
///       region: us-central1
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
/// RegionDiskResourcePolicyAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/disks/{{disk}}/{{name}}`
///
/// * `{{project}}/{{region}}/{{disk}}/{{name}}`
///
/// * `{{region}}/{{disk}}/{{name}}`
///
/// * `{{disk}}/{{name}}`
///
/// When using the `pulumi import` command, RegionDiskResourcePolicyAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default projects/{{project}}/regions/{{region}}/disks/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default {{project}}/{{region}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default {{region}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default {{disk}}/{{name}}
/// ```
class RegionDiskResourcePolicyAttachment extends pulumi.CustomResource {
  /// The name of the regional disk in which the resource policies are attached to.
  late final pulumi.Output<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A reference to the region where the disk resides.
  late final pulumi.Output<String> region;

  /// Creates a new [RegionDiskResourcePolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionDiskResourcePolicyAttachment]. {@macro pulumi_compute_region_disk_resource_policy_attachment_region_disk_resource_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionDiskResourcePolicyAttachment(
    String name, {
    RegionDiskResourcePolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disk = registerOutput<String>('disk');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
