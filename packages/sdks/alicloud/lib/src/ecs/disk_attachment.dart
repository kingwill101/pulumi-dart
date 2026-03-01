import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_attachment_args.dart';
import 'disk_attachment_state.dart';

/// > **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsDiskAttachment from version 1.122.0.
///
/// Provides an Alicloud ECS Disk Attachment as a resource, to attach and detach disks from ECS Instances.
///
/// ## Example Usage
///
/// Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Create a new ECS disk-attachment and use it attach one disk to a new instance.
/// const ecsSg = new alicloud.ecs.SecurityGroup("ecs_sg", {
///     name: "terraform-test-group",
///     description: "New security group",
/// });
/// const ecsDisk = new alicloud.ecs.Disk("ecs_disk", {
///     availabilityZone: "cn-beijing-a",
///     size: 50,
///     tags: {
///         Name: "TerraformTest-disk",
///     },
/// });
/// const ecsInstance = new alicloud.ecs.Instance("ecs_instance", {
///     imageId: "ubuntu_18_04_64_20G_alibase_20190624.vhd",
///     instanceType: "ecs.n4.small",
///     availabilityZone: "cn-beijing-a",
///     securityGroups: [ecsSg.id],
///     instanceName: "Hello",
///     internetChargeType: "PayByBandwidth",
///     tags: {
///         Name: "TerraformTest-instance",
///     },
/// });
/// const ecsDiskAtt = new alicloud.ecs.DiskAttachment("ecs_disk_att", {
///     diskId: ecsDisk.id,
///     instanceId: ecsInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create a new ECS disk-attachment and use it attach one disk to a new instance.
/// ecs_sg = alicloud.ecs.SecurityGroup("ecs_sg",
///     name="terraform-test-group",
///     description="New security group")
/// ecs_disk = alicloud.ecs.Disk("ecs_disk",
///     availability_zone="cn-beijing-a",
///     size=50,
///     tags={
///         "Name": "TerraformTest-disk",
///     })
/// ecs_instance = alicloud.ecs.Instance("ecs_instance",
///     image_id="ubuntu_18_04_64_20G_alibase_20190624.vhd",
///     instance_type="ecs.n4.small",
///     availability_zone="cn-beijing-a",
///     security_groups=[ecs_sg.id],
///     instance_name="Hello",
///     internet_charge_type="PayByBandwidth",
///     tags={
///         "Name": "TerraformTest-instance",
///     })
/// ecs_disk_att = alicloud.ecs.DiskAttachment("ecs_disk_att",
///     disk_id=ecs_disk.id,
///     instance_id=ecs_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new ECS disk-attachment and use it attach one disk to a new instance.
///     var ecsSg = new AliCloud.Ecs.SecurityGroup("ecs_sg", new()
///     {
///         Name = "terraform-test-group",
///         Description = "New security group",
///     });
///
///     var ecsDisk = new AliCloud.Ecs.Disk("ecs_disk", new()
///     {
///         AvailabilityZone = "cn-beijing-a",
///         Size = 50,
///         Tags =
///         {
///             { "Name", "TerraformTest-disk" },
///         },
///     });
///
///     var ecsInstance = new AliCloud.Ecs.Instance("ecs_instance", new()
///     {
///         ImageId = "ubuntu_18_04_64_20G_alibase_20190624.vhd",
///         InstanceType = "ecs.n4.small",
///         AvailabilityZone = "cn-beijing-a",
///         SecurityGroups = new[]
///         {
///             ecsSg.Id,
///         },
///         InstanceName = "Hello",
///         InternetChargeType = "PayByBandwidth",
///         Tags =
///         {
///             { "Name", "TerraformTest-instance" },
///         },
///     });
///
///     var ecsDiskAtt = new AliCloud.Ecs.DiskAttachment("ecs_disk_att", new()
///     {
///         DiskId = ecsDisk.Id,
///         InstanceId = ecsInstance.Id,
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
/// 		// Create a new ECS disk-attachment and use it attach one disk to a new instance.
/// 		ecsSg, err := ecs.NewSecurityGroup(ctx, "ecs_sg", &ecs.SecurityGroupArgs{
/// 			Name:        pulumi.String("terraform-test-group"),
/// 			Description: pulumi.String("New security group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ecsDisk, err := ecs.NewDisk(ctx, "ecs_disk", &ecs.DiskArgs{
/// 			AvailabilityZone: pulumi.String("cn-beijing-a"),
/// 			Size:             pulumi.Int(50),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("TerraformTest-disk"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ecsInstance, err := ecs.NewInstance(ctx, "ecs_instance", &ecs.InstanceArgs{
/// 			ImageId:          pulumi.String("ubuntu_18_04_64_20G_alibase_20190624.vhd"),
/// 			InstanceType:     pulumi.String("ecs.n4.small"),
/// 			AvailabilityZone: pulumi.String("cn-beijing-a"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				ecsSg.ID(),
/// 			},
/// 			InstanceName:       pulumi.String("Hello"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("TerraformTest-instance"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewDiskAttachment(ctx, "ecs_disk_att", &ecs.DiskAttachmentArgs{
/// 			DiskId:     ecsDisk.ID(),
/// 			InstanceId: ecsInstance.ID(),
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Disk;
/// import com.pulumi.alicloud.ecs.DiskArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.DiskAttachment;
/// import com.pulumi.alicloud.ecs.DiskAttachmentArgs;
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
///         // Create a new ECS disk-attachment and use it attach one disk to a new instance.
///         var ecsSg = new SecurityGroup("ecsSg", SecurityGroupArgs.builder()
///             .name("terraform-test-group")
///             .description("New security group")
///             .build());
///
///         var ecsDisk = new Disk("ecsDisk", DiskArgs.builder()
///             .availabilityZone("cn-beijing-a")
///             .size(50)
///             .tags(Map.of("Name", "TerraformTest-disk"))
///             .build());
///
///         var ecsInstance = new Instance("ecsInstance", InstanceArgs.builder()
///             .imageId("ubuntu_18_04_64_20G_alibase_20190624.vhd")
///             .instanceType("ecs.n4.small")
///             .availabilityZone("cn-beijing-a")
///             .securityGroups(ecsSg.id())
///             .instanceName("Hello")
///             .internetChargeType("PayByBandwidth")
///             .tags(Map.of("Name", "TerraformTest-instance"))
///             .build());
///
///         var ecsDiskAtt = new DiskAttachment("ecsDiskAtt", DiskAttachmentArgs.builder()
///             .diskId(ecsDisk.id())
///             .instanceId(ecsInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new ECS disk-attachment and use it attach one disk to a new instance.
///   ecsSg:
///     type: alicloud:ecs:SecurityGroup
///     name: ecs_sg
///     properties:
///       name: terraform-test-group
///       description: New security group
///   ecsDisk:
///     type: alicloud:ecs:Disk
///     name: ecs_disk
///     properties:
///       availabilityZone: cn-beijing-a
///       size: '50'
///       tags:
///         Name: TerraformTest-disk
///   ecsInstance:
///     type: alicloud:ecs:Instance
///     name: ecs_instance
///     properties:
///       imageId: ubuntu_18_04_64_20G_alibase_20190624.vhd
///       instanceType: ecs.n4.small
///       availabilityZone: cn-beijing-a
///       securityGroups:
///         - ${ecsSg.id}
///       instanceName: Hello
///       internetChargeType: PayByBandwidth
///       tags:
///         Name: TerraformTest-instance
///   ecsDiskAtt:
///     type: alicloud:ecs:DiskAttachment
///     name: ecs_disk_att
///     properties:
///       diskId: ${ecsDisk.id}
///       instanceId: ${ecsInstance.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The disk attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/diskAttachment:DiskAttachment example d-abc12345678:i-abc12355
/// ```
class DiskAttachment extends pulumi.CustomResource {
  late final pulumi.Output<bool?> bootable;
  late final pulumi.Output<bool?> deleteWithInstance;
  late final pulumi.Output<String> device;
  /// ID of the Disk to be attached.
  late final pulumi.Output<String> diskId;
  /// ID of the Instance to attach to.
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String?> keyPairName;
  late final pulumi.Output<String?> password;

  /// Creates a new [DiskAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskAttachment]. {@macro pulumi_ecs_disk_attachment_disk_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskAttachment(
    String name, {
    DiskAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/diskAttachment:DiskAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bootable = registerOutput<bool?>('bootable');
    this.deleteWithInstance = registerOutput<bool?>('deleteWithInstance');
    this.device = registerOutput<String>('device');
    this.diskId = registerOutput<String>('diskId');
    this.instanceId = registerOutput<String>('instanceId');
    this.keyPairName = registerOutput<String?>('keyPairName');
    this.password = registerOutput<String?>('password');
  }

  /// Gets an existing [DiskAttachment] resource's state with the given [name] and [id].
  static DiskAttachment get(
    String name,
    pulumi.Input<String> id, {
    DiskAttachmentState? state,
  }) {
    return DiskAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiskAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/diskAttachment:DiskAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bootable = registerOutput<bool?>('bootable');
    this.deleteWithInstance = registerOutput<bool?>('deleteWithInstance');
    this.device = registerOutput<String>('device');
    this.diskId = registerOutput<String>('diskId');
    this.instanceId = registerOutput<String>('instanceId');
    this.keyPairName = registerOutput<String?>('keyPairName');
    this.password = registerOutput<String?>('password');
  }
}
