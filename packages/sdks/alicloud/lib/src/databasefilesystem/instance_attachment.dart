import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_args.dart';
import 'instance_attachment_state.dart';

/// Provides a Database File System (DBFS) Instance Attachment resource.
///
/// For information about Database File System (DBFS) Instance Attachment and how to use it, see [What is Snapshot](https://help.aliyun.com/zh/dbfs/developer-reference/api-dbfs-2020-04-18-attachdbfs).
///
/// &gt; **NOTE:** Available since v1.156.0.
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
/// const zoneId = "cn-hangzhou-i";
/// const _default = alicloud.databasefilesystem.getInstances({});
/// const defaultGetInstanceTypes = alicloud.ecs.getInstanceTypes({
///     availabilityZone: zoneId,
///     instanceTypeFamily: "ecs.g7se",
/// });
/// const defaultGetImages = defaultGetInstanceTypes.then(defaultGetInstanceTypes => alicloud.ecs.getImages({
///     instanceType: defaultGetInstanceTypes.instanceTypes?.[0]?.id,
///     nameRegex: "^aliyun_2_19",
///     owners: "system",
/// }));
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: zoneId,
/// }));
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
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
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     instanceName: name,
/// });
/// const defaultInstanceAttachment = new alicloud.databasefilesystem.InstanceAttachment("default", {
///     instanceId: _default.then(_default => _default.instances?.[0]?.id),
///     ecsId: defaultInstance.id,
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
/// zone_id = "cn-hangzhou-i"
/// default = alicloud.databasefilesystem.get_instances()
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=zone_id,
///     instance_type_family="ecs.g7se")
/// default_get_images = alicloud.ecs.get_images(instance_type=default_get_instance_types.instance_types[0].id,
///     name_regex="^aliyun_2_19",
///     owners="system")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=zone_id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_get_networks.ids[0])
/// default_instance = alicloud.ecs.Instance("default",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[__item.id for __item in [default_security_group]],
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=10,
///     availability_zone=default_get_instance_types.instance_types[0].availability_zones[0],
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_essd",
///     vswitch_id=default_get_switches.ids[0],
///     instance_name=name)
/// default_instance_attachment = alicloud.databasefilesystem.InstanceAttachment("default",
///     instance_id=default.instances[0].id,
///     ecs_id=default_instance.id)
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
///     var zoneId = "cn-hangzhou-i";
///
///     var @default = AliCloud.DatabaseFilesystem.GetInstances.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = zoneId,
///         InstanceTypeFamily = "ecs.g7se",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         NameRegex = "^aliyun_2_19",
///         Owners = "system",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = zoneId,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
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
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         InstanceName = name,
///     });
///
///     var defaultInstanceAttachment = new AliCloud.DatabaseFilesystem.InstanceAttachment("default", new()
///     {
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///         EcsId = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
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
/// zoneId := "cn-hangzhou-i";
/// _default, err := databasefilesystem.GetInstances(ctx, &databasefilesystem.GetInstancesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(zoneId),
/// InstanceTypeFamily: pulumi.StringRef("ecs.g7se"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// InstanceType: pulumi.StringRef(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// NameRegex: pulumi.StringRef("^aliyun_2_19"),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// VpcId: pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// ZoneId: pulumi.StringRef(zoneId),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
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
/// VswitchId: pulumi.String(defaultGetSwitches.Ids[0]),
/// InstanceName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = databasefilesystem.NewInstanceAttachment(ctx, "default", &databasefilesystem.InstanceAttachmentArgs{
/// InstanceId: pulumi.String(_default.Instances[0].Id),
/// EcsId: defaultInstance.ID(),
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
/// import com.pulumi.alicloud.databasefilesystem.DatabasefilesystemFunctions;
/// import com.pulumi.alicloud.databasefilesystem.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.databasefilesystem.InstanceAttachment;
/// import com.pulumi.alicloud.databasefilesystem.InstanceAttachmentArgs;
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
///         final var zoneId = "cn-hangzhou-i";
///
///         final var default = DatabasefilesystemFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(zoneId)
///             .instanceTypeFamily("ecs.g7se")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .nameRegex("^aliyun_2_19")
///             .owners("system")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(zoneId)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultGetNetworks.ids()[0])
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
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .instanceName(name)
///             .build());
///
///         var defaultInstanceAttachment = new InstanceAttachment("defaultInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(default_.instances()[0].id())
///             .ecsId(defaultInstance.id())
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
/// Database File System (DBFS) Instance Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:databasefilesystem/instanceAttachment:InstanceAttachment example <instance_id>:<ecs_id>
/// ```
class InstanceAttachment extends pulumi.CustomResource {
  /// The ID of the ECS instance.
  late final pulumi.Output<String> ecsId;
  /// The ID of the Database File System.
  late final pulumi.Output<String> instanceId;
  /// The status of Instance Attachment.
  late final pulumi.Output<String> status;

  /// Creates a new [InstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAttachment]. {@macro pulumi_databasefilesystem_instance_attachment_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/instanceAttachment:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ecsId = registerOutput<String>('ecsId');
    instanceId = registerOutput<String>('instanceId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [InstanceAttachment] resource's state with the given [name] and [id].
  static InstanceAttachment get(
    String name,
    pulumi.Input<String> id, {
    InstanceAttachmentState? state,
  }) {
    return InstanceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/instanceAttachment:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ecsId = registerOutput<String>('ecsId');
    instanceId = registerOutput<String>('instanceId');
    status = registerOutput<String>('status');
  }
}
