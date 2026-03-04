import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_snapshot_args.dart';
import 'ecs_snapshot_state.dart';

/// Provides a ECS Snapshot resource.
///
///
///
/// For information about ECS Snapshot and how to use it, see [What is Snapshot](https://www.alibabacloud.com/help/en/doc-detail/25524.htm).
///
/// &gt; **NOTE:** Available since v1.120.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_essd",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = Promise.all([_default, defaultGetImages]).then(([_default, defaultGetImages]) => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
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
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: name,
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_disk_category="cloud_essd",
///     available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     image_id=default_get_images.images[0].id,
///     system_disk_category="cloud_essd")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name=name,
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
///     retention_days=20)
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
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = name,
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
///     });
///
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
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
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
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// SecurityGroupName: pulumi.String(name),
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
/// _, err = ecs.NewEcsSnapshot(ctx, "default", &ecs.EcsSnapshotArgs{
/// DiskId: defaultEcsDiskAttachment.DiskId,
/// Category: pulumi.String("standard"),
/// RetentionDays: pulumi.Int(20),
/// })
/// if err != nil {
/// return err
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
///             .availabilityZone(default_.zones()[0].id())
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
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(name)
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
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsSnapshot:EcsSnapshot example <id>
/// ```
class EcsSnapshot extends pulumi.CustomResource {
  /// The category of the snapshot. Valid values:
  late final pulumi.Output<String> category;

  /// (Available since v1.239.0) The time when the snapshot was created.
  late final pulumi.Output<String> createTime;

  /// The description of the snapshot.
  late final pulumi.Output<String?> description;

  /// The ID of the disk.
  late final pulumi.Output<String> diskId;

  /// Specifies whether to force delete the snapshot that has been used to create disks. Valid values:
  late final pulumi.Output<bool?> force;

  /// Field `instant_access` has been deprecated from provider version 1.231.0.
  late final pulumi.Output<bool?> instantAccess;

  /// Field `instant_access_retention_days` has been deprecated from provider version 1.231.0.
  late final pulumi.Output<int?> instantAccessRetentionDays;

  /// Field `name` has been deprecated from provider version 1.120.0. New field `snapshot_name` instead.
  late final pulumi.Output<String> name;

  /// (Available since v1.239.0) The region ID of the snapshot.
  late final pulumi.Output<String> regionId;

  /// The ID of the resource group. **NOTE:** From version 1.239.0, `resource_group_id` can be modified.
  late final pulumi.Output<String?> resourceGroupId;

  /// The retention period of the snapshot. Valid values: `1` to `65536`. **NOTE:** From version 1.231.0, `retention_days` can be modified.
  late final pulumi.Output<int?> retentionDays;

  /// The name of the snapshot.
  late final pulumi.Output<String> snapshotName;

  /// The status of the Snapshot.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [EcsSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsSnapshot]. {@macro pulumi_ecs_ecs_snapshot_ecs_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsSnapshot(
    String name, {
    EcsSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsSnapshot:EcsSnapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String>('category');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    diskId = registerOutput<String>('diskId');
    force = registerOutput<bool?>('force');
    instantAccess = registerOutput<bool?>('instantAccess');
    instantAccessRetentionDays = registerOutput<int?>(
      'instantAccessRetentionDays',
    );
    this.name = registerOutput<String>('name');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    retentionDays = registerOutput<int?>('retentionDays');
    snapshotName = registerOutput<String>('snapshotName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [EcsSnapshot] resource's state with the given [name] and [id].
  static EcsSnapshot get(
    String name,
    pulumi.Input<String> id, {
    EcsSnapshotState? state,
  }) {
    return EcsSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsSnapshot:EcsSnapshot',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String>('category');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    diskId = registerOutput<String>('diskId');
    force = registerOutput<bool?>('force');
    instantAccess = registerOutput<bool?>('instantAccess');
    instantAccessRetentionDays = registerOutput<int?>(
      'instantAccessRetentionDays',
    );
    this.name = registerOutput<String>('name');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    retentionDays = registerOutput<int?>('retentionDays');
    snapshotName = registerOutput<String>('snapshotName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
