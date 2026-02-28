import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_args.dart';
import 'per_instance_config_preserved_state.dart';

/// A config defined for a single managed instance that belongs to an instance group manager. It preserves the instance name
/// across instance group manager operations and can define stateful disks or metadata that are unique to the instance.
///
///
/// To get more information about PerInstanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/instance-groups/stateful-migs#per-instance_configs)
///
/// ## Example Usage
///
/// ### Stateful Igm
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
/// const igm_basic = new gcp.compute.InstanceTemplate("igm-basic", {
///     name: "my-template",
///     machineType: "e2-medium",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     disks: [{
///         sourceImage: myImage.then(myImage => myImage.selfLink),
///         autoDelete: true,
///         boot: true,
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     serviceAccount: {
///         scopes: [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     },
/// });
/// const igm_no_tp = new gcp.compute.InstanceGroupManager("igm-no-tp", {
///     description: "Test instance group manager",
///     name: "my-igm",
///     versions: [{
///         name: "prod",
///         instanceTemplate: igm_basic.selfLink,
///     }],
///     baseInstanceName: "igm-no-tp",
///     zone: "us-central1-c",
///     targetSize: 2,
/// });
/// const _default = new gcp.compute.Disk("default", {
///     name: "my-disk-name",
///     type: "pd-ssd",
///     zone: igm.zone,
///     image: "debian-11-bullseye-v20220719",
///     physicalBlockSizeBytes: 4096,
/// });
/// const withDisk = new gcp.compute.PerInstanceConfig("with_disk", {
///     zone: igm.zone,
///     instanceGroupManager: igm.name,
///     name: "instance-1",
///     preservedState: {
///         metadata: {
///             foo: "bar",
///             instance_template: igm_basic.selfLink,
///         },
///         disks: [{
///             deviceName: "my-stateful-disk",
///             source: _default.id,
///             mode: "READ_ONLY",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// igm_basic = gcp.compute.InstanceTemplate("igm-basic",
///     name="my-template",
///     machine_type="e2-medium",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     disks=[{
///         "source_image": my_image.self_link,
///         "auto_delete": True,
///         "boot": True,
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     service_account={
///         "scopes": [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     })
/// igm_no_tp = gcp.compute.InstanceGroupManager("igm-no-tp",
///     description="Test instance group manager",
///     name="my-igm",
///     versions=[{
///         "name": "prod",
///         "instance_template": igm_basic.self_link,
///     }],
///     base_instance_name="igm-no-tp",
///     zone="us-central1-c",
///     target_size=2)
/// default = gcp.compute.Disk("default",
///     name="my-disk-name",
///     type="pd-ssd",
///     zone=igm["zone"],
///     image="debian-11-bullseye-v20220719",
///     physical_block_size_bytes=4096)
/// with_disk = gcp.compute.PerInstanceConfig("with_disk",
///     zone=igm["zone"],
///     instance_group_manager=igm["name"],
///     name="instance-1",
///     preserved_state={
///         "metadata": {
///             "foo": "bar",
///             "instance_template": igm_basic.self_link,
///         },
///         "disks": [{
///             "device_name": "my-stateful-disk",
///             "source": default.id,
///             "mode": "READ_ONLY",
///         }],
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
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var igm_basic = new Gcp.Compute.InstanceTemplate("igm-basic", new()
///     {
///         Name = "my-template",
///         MachineType = "e2-medium",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Scopes = new[]
///             {
///                 "userinfo-email",
///                 "compute-ro",
///                 "storage-ro",
///             },
///         },
///     });
///
///     var igm_no_tp = new Gcp.Compute.InstanceGroupManager("igm-no-tp", new()
///     {
///         Description = "Test instance group manager",
///         Name = "my-igm",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 Name = "prod",
///                 InstanceTemplate = igm_basic.SelfLink,
///             },
///         },
///         BaseInstanceName = "igm-no-tp",
///         Zone = "us-central1-c",
///         TargetSize = 2,
///     });
///
///     var @default = new Gcp.Compute.Disk("default", new()
///     {
///         Name = "my-disk-name",
///         Type = "pd-ssd",
///         Zone = igm.Zone,
///         Image = "debian-11-bullseye-v20220719",
///         PhysicalBlockSizeBytes = 4096,
///     });
///
///     var withDisk = new Gcp.Compute.PerInstanceConfig("with_disk", new()
///     {
///         Zone = igm.Zone,
///         InstanceGroupManager = igm.Name,
///         Name = "instance-1",
///         PreservedState = new Gcp.Compute.Inputs.PerInstanceConfigPreservedStateArgs
///         {
///             Metadata =
///             {
///                 { "foo", "bar" },
///                 { "instance_template", igm_basic.SelfLink },
///             },
///             Disks = new[]
///             {
///                 new Gcp.Compute.Inputs.PerInstanceConfigPreservedStateDiskArgs
///                 {
///                     DeviceName = "my-stateful-disk",
///                     Source = @default.Id,
///                     Mode = "READ_ONLY",
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
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		igm_basic, err := compute.NewInstanceTemplate(ctx, "igm-basic", &compute.InstanceTemplateArgs{
/// 			Name:         pulumi.String("my-template"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(myImage.SelfLink),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("userinfo-email"),
/// 					pulumi.String("compute-ro"),
/// 					pulumi.String("storage-ro"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceGroupManager(ctx, "igm-no-tp", &compute.InstanceGroupManagerArgs{
/// 			Description: pulumi.String("Test instance group manager"),
/// 			Name:        pulumi.String("my-igm"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					Name:             pulumi.String("prod"),
/// 					InstanceTemplate: igm_basic.SelfLink,
/// 				},
/// 			},
/// 			BaseInstanceName: pulumi.String("igm-no-tp"),
/// 			Zone:             pulumi.String("us-central1-c"),
/// 			TargetSize:       pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewDisk(ctx, "default", &compute.DiskArgs{
/// 			Name:                   pulumi.String("my-disk-name"),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Zone:                   pulumi.Any(igm.Zone),
/// 			Image:                  pulumi.String("debian-11-bullseye-v20220719"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewPerInstanceConfig(ctx, "with_disk", &compute.PerInstanceConfigArgs{
/// 			Zone:                 pulumi.Any(igm.Zone),
/// 			InstanceGroupManager: pulumi.Any(igm.Name),
/// 			Name:                 pulumi.String("instance-1"),
/// 			PreservedState: &compute.PerInstanceConfigPreservedStateArgs{
/// 				Metadata: pulumi.StringMap{
/// 					"foo":               pulumi.String("bar"),
/// 					"instance_template": igm_basic.SelfLink,
/// 				},
/// 				Disks: compute.PerInstanceConfigPreservedStateDiskArray{
/// 					&compute.PerInstanceConfigPreservedStateDiskArgs{
/// 						DeviceName: pulumi.String("my-stateful-disk"),
/// 						Source:     _default.ID(),
/// 						Mode:       pulumi.String("READ_ONLY"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.PerInstanceConfig;
/// import com.pulumi.gcp.compute.PerInstanceConfigArgs;
/// import com.pulumi.gcp.compute.inputs.PerInstanceConfigPreservedStateArgs;
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
///         var igm_basic = new InstanceTemplate("igm-basic", InstanceTemplateArgs.builder()
///             .name("my-template")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(myImage.selfLink())
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .scopes(
///                     "userinfo-email",
///                     "compute-ro",
///                     "storage-ro")
///                 .build())
///             .build());
///
///         var igm_no_tp = new InstanceGroupManager("igm-no-tp", InstanceGroupManagerArgs.builder()
///             .description("Test instance group manager")
///             .name("my-igm")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .name("prod")
///                 .instanceTemplate(igm_basic.selfLink())
///                 .build())
///             .baseInstanceName("igm-no-tp")
///             .zone("us-central1-c")
///             .targetSize(2)
///             .build());
///
///         var default_ = new Disk("default", DiskArgs.builder()
///             .name("my-disk-name")
///             .type("pd-ssd")
///             .zone(igm.zone())
///             .image("debian-11-bullseye-v20220719")
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///         var withDisk = new PerInstanceConfig("withDisk", PerInstanceConfigArgs.builder()
///             .zone(igm.zone())
///             .instanceGroupManager(igm.name())
///             .name("instance-1")
///             .preservedState(PerInstanceConfigPreservedStateArgs.builder()
///                 .metadata(Map.ofEntries(
///                     Map.entry("foo", "bar"),
///                     Map.entry("instance_template", igm_basic.selfLink())
///                 ))
///                 .disks(PerInstanceConfigPreservedStateDiskArgs.builder()
///                     .deviceName("my-stateful-disk")
///                     .source(default_.id())
///                     .mode("READ_ONLY")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   igm-basic:
///     type: gcp:compute:InstanceTemplate
///     properties:
///       name: my-template
///       machineType: e2-medium
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       disks:
///         - sourceImage: ${myImage.selfLink}
///           autoDelete: true
///           boot: true
///       networkInterfaces:
///         - network: default
///       serviceAccount:
///         scopes:
///           - userinfo-email
///           - compute-ro
///           - storage-ro
///   igm-no-tp:
///     type: gcp:compute:InstanceGroupManager
///     properties:
///       description: Test instance group manager
///       name: my-igm
///       versions:
///         - name: prod
///           instanceTemplate: ${["igm-basic"].selfLink}
///       baseInstanceName: igm-no-tp
///       zone: us-central1-c
///       targetSize: 2
///   default:
///     type: gcp:compute:Disk
///     properties:
///       name: my-disk-name
///       type: pd-ssd
///       zone: ${igm.zone}
///       image: debian-11-bullseye-v20220719
///       physicalBlockSizeBytes: 4096
///   withDisk:
///     type: gcp:compute:PerInstanceConfig
///     name: with_disk
///     properties:
///       zone: ${igm.zone}
///       instanceGroupManager: ${igm.name}
///       name: instance-1
///       preservedState:
///         metadata:
///           foo: bar
///           instance_template: ${["igm-basic"].selfLink}
///         disks:
///           - deviceName: my-stateful-disk
///             source: ${default.id}
///             mode: READ_ONLY
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
/// PerInstanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{instance_group_manager}}/{{name}}`
///
/// * `{{project}}/{{zone}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{zone}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{instance_group_manager}}/{{name}}`
///
/// When using the `pulumi import` command, PerInstanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/perInstanceConfig:PerInstanceConfig default projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/perInstanceConfig:PerInstanceConfig default {{project}}/{{zone}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/perInstanceConfig:PerInstanceConfig default {{zone}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/perInstanceConfig:PerInstanceConfig default {{instance_group_manager}}/{{name}}
/// ```
class PerInstanceConfig extends pulumi.CustomResource {
  /// The instance group manager this instance config is part of.
  late final pulumi.Output<String> instanceGroupManager;
  /// The minimal action to perform on the instance during an update.
  /// Default is `NONE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  late final pulumi.Output<String?> minimalAction;
  /// The most disruptive action to perform on the instance during an update.
  /// Default is `REPLACE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  late final pulumi.Output<String?> mostDisruptiveAllowedAction;
  /// The name for this per-instance config and its corresponding instance.
  late final pulumi.Output<String> name;
  /// The preserved state for this instance.
  /// Structure is documented below.
  late final pulumi.Output<PerInstanceConfigPreservedState?> preservedState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  late final pulumi.Output<bool?> removeInstanceOnDestroy;
  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  late final pulumi.Output<bool?> removeInstanceStateOnDestroy;
  /// Zone where the containing instance group manager is located
  late final pulumi.Output<String> zone;

  /// Creates a new [PerInstanceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PerInstanceConfig]. {@macro pulumi_compute_per_instance_config_per_instance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PerInstanceConfig(
    String name, {
    PerInstanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/perInstanceConfig:PerInstanceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceGroupManager = registerOutput<String>('instanceGroupManager');
    this.minimalAction = registerOutput<String?>('minimalAction');
    this.mostDisruptiveAllowedAction = registerOutput<String?>('mostDisruptiveAllowedAction');
    this.name = registerOutput<String>('name');
    this.preservedState = registerOutput<PerInstanceConfigPreservedState?>('preservedState');
    this.project = registerOutput<String>('project');
    this.removeInstanceOnDestroy = registerOutput<bool?>('removeInstanceOnDestroy');
    this.removeInstanceStateOnDestroy = registerOutput<bool?>('removeInstanceStateOnDestroy');
    this.zone = registerOutput<String>('zone');
  }
}
