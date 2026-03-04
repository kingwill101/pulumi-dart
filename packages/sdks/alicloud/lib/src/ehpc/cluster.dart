import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

/// Provides a Ehpc Cluster resource.
///
/// For information about Ehpc Cluster and how to use it, see [What is Cluster](https://www.alibabacloud.com/help/en/e-hpc/developer-reference/api-ehpc-2018-04-12-createcluster).
///
/// &gt; **NOTE:** Available since v1.173.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^centos_7_6_x64*",
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultFileSystem = new alicloud.nas.FileSystem("default", {
///     storageType: "Performance",
///     protocolType: "NFS",
/// });
/// const defaultMountTarget = new alicloud.nas.MountTarget("default", {
///     fileSystemId: defaultFileSystem.id,
///     accessGroupName: "DEFAULT_VPC_GROUP_NAME",
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultCluster = new alicloud.ehpc.Cluster("default", {
///     clusterName: name,
///     deployMode: "Simple",
///     description: name,
///     haEnable: false,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     imageOwnerAlias: "system",
///     volumeProtocol: "nfs",
///     volumeId: defaultFileSystem.id,
///     volumeMountpoint: defaultMountTarget.mountTargetDomain,
///     computeCount: 1,
///     computeInstanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     loginCount: 1,
///     loginInstanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     managerCount: 1,
///     managerInstanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     osTag: "CentOS_7.6_64",
///     schedulerType: "pbs",
///     password: "your-password123",
///     vswitchId: defaultSwitch.id,
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(name_regex="^centos_7_6_x64*",
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_file_system = alicloud.nas.FileSystem("default",
///     storage_type="Performance",
///     protocol_type="NFS")
/// default_mount_target = alicloud.nas.MountTarget("default",
///     file_system_id=default_file_system.id,
///     access_group_name="DEFAULT_VPC_GROUP_NAME",
///     vswitch_id=default_switch.id)
/// default_cluster = alicloud.ehpc.Cluster("default",
///     cluster_name=name,
///     deploy_mode="Simple",
///     description=name,
///     ha_enable=False,
///     image_id=default_get_images.images[0].id,
///     image_owner_alias="system",
///     volume_protocol="nfs",
///     volume_id=default_file_system.id,
///     volume_mountpoint=default_mount_target.mount_target_domain,
///     compute_count=1,
///     compute_instance_type=default_get_instance_types.instance_types[0].id,
///     login_count=1,
///     login_instance_type=default_get_instance_types.instance_types[0].id,
///     manager_count=1,
///     manager_instance_type=default_get_instance_types.instance_types[0].id,
///     os_tag="CentOS_7.6_64",
///     scheduler_type="pbs",
///     password="your-password123",
///     vswitch_id=default_switch.id,
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^centos_7_6_x64*",
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.1.0.0/16",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultFileSystem = new AliCloud.Nas.FileSystem("default", new()
///     {
///         StorageType = "Performance",
///         ProtocolType = "NFS",
///     });
///
///     var defaultMountTarget = new AliCloud.Nas.MountTarget("default", new()
///     {
///         FileSystemId = defaultFileSystem.Id,
///         AccessGroupName = "DEFAULT_VPC_GROUP_NAME",
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultCluster = new AliCloud.Ehpc.Cluster("default", new()
///     {
///         ClusterName = name,
///         DeployMode = "Simple",
///         Description = name,
///         HaEnable = false,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         ImageOwnerAlias = "system",
///         VolumeProtocol = "nfs",
///         VolumeId = defaultFileSystem.Id,
///         VolumeMountpoint = defaultMountTarget.MountTargetDomain,
///         ComputeCount = 1,
///         ComputeInstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         LoginCount = 1,
///         LoginInstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         ManagerCount = 1,
///         ManagerInstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         OsTag = "CentOS_7.6_64",
///         SchedulerType = "pbs",
///         Password = "your-password123",
///         VswitchId = defaultSwitch.Id,
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ehpc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^centos_7_6_x64*"),
/// 			Owners:    pulumi.StringRef("system"),
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
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.1.0.0/16"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFileSystem, err := nas.NewFileSystem(ctx, "default", &nas.FileSystemArgs{
/// 			StorageType:  pulumi.String("Performance"),
/// 			ProtocolType: pulumi.String("NFS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMountTarget, err := nas.NewMountTarget(ctx, "default", &nas.MountTargetArgs{
/// 			FileSystemId:    defaultFileSystem.ID(),
/// 			AccessGroupName: pulumi.String("DEFAULT_VPC_GROUP_NAME"),
/// 			VswitchId:       defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ehpc.NewCluster(ctx, "default", &ehpc.ClusterArgs{
/// 			ClusterName:         pulumi.String(name),
/// 			DeployMode:          pulumi.String("Simple"),
/// 			Description:         pulumi.String(name),
/// 			HaEnable:            pulumi.Bool(false),
/// 			ImageId:             pulumi.String(defaultGetImages.Images[0].Id),
/// 			ImageOwnerAlias:     pulumi.String("system"),
/// 			VolumeProtocol:      pulumi.String("nfs"),
/// 			VolumeId:            defaultFileSystem.ID(),
/// 			VolumeMountpoint:    defaultMountTarget.MountTargetDomain,
/// 			ComputeCount:        pulumi.Int(1),
/// 			ComputeInstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			LoginCount:          pulumi.Int(1),
/// 			LoginInstanceType:   pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			ManagerCount:        pulumi.Int(1),
/// 			ManagerInstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			OsTag:               pulumi.String("CentOS_7.6_64"),
/// 			SchedulerType:       pulumi.String("pbs"),
/// 			Password:            pulumi.String("your-password123"),
/// 			VswitchId:           defaultSwitch.ID(),
/// 			VpcId:               defaultNetwork.ID(),
/// 			ZoneId:              pulumi.String(_default.Zones[0].Id),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.MountTarget;
/// import com.pulumi.alicloud.nas.MountTargetArgs;
/// import com.pulumi.alicloud.ehpc.Cluster;
/// import com.pulumi.alicloud.ehpc.ClusterArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^centos_7_6_x64*")
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.1.0.0/16")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultFileSystem = new FileSystem("defaultFileSystem", FileSystemArgs.builder()
///             .storageType("Performance")
///             .protocolType("NFS")
///             .build());
///
///         var defaultMountTarget = new MountTarget("defaultMountTarget", MountTargetArgs.builder()
///             .fileSystemId(defaultFileSystem.id())
///             .accessGroupName("DEFAULT_VPC_GROUP_NAME")
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .clusterName(name)
///             .deployMode("Simple")
///             .description(name)
///             .haEnable(false)
///             .imageId(defaultGetImages.images()[0].id())
///             .imageOwnerAlias("system")
///             .volumeProtocol("nfs")
///             .volumeId(defaultFileSystem.id())
///             .volumeMountpoint(defaultMountTarget.mountTargetDomain())
///             .computeCount(1)
///             .computeInstanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .loginCount(1)
///             .loginInstanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .managerCount(1)
///             .managerInstanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .osTag("CentOS_7.6_64")
///             .schedulerType("pbs")
///             .password("your-password123")
///             .vswitchId(defaultSwitch.id())
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.1.0.0/16
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultFileSystem:
///     type: alicloud:nas:FileSystem
///     name: default
///     properties:
///       storageType: Performance
///       protocolType: NFS
///   defaultMountTarget:
///     type: alicloud:nas:MountTarget
///     name: default
///     properties:
///       fileSystemId: ${defaultFileSystem.id}
///       accessGroupName: DEFAULT_VPC_GROUP_NAME
///       vswitchId: ${defaultSwitch.id}
///   defaultCluster:
///     type: alicloud:ehpc:Cluster
///     name: default
///     properties:
///       clusterName: ${name}
///       deployMode: Simple
///       description: ${name}
///       haEnable: false
///       imageId: ${defaultGetImages.images[0].id}
///       imageOwnerAlias: system
///       volumeProtocol: nfs
///       volumeId: ${defaultFileSystem.id}
///       volumeMountpoint: ${defaultMountTarget.mountTargetDomain}
///       computeCount: 1
///       computeInstanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       loginCount: 1
///       loginInstanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       managerCount: 1
///       managerInstanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       osTag: CentOS_7.6_64
///       schedulerType: pbs
///       password: your-password123
///       vswitchId: ${defaultSwitch.id}
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^centos_7_6_x64*
///         owners: system
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ehpc Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ehpc/cluster:Cluster example <id>
/// ```
class Cluster extends pulumi.CustomResource {
  /// The type of the domain account service. Valid values: `nis`, `ldap`. Default value: `nis`
  late final pulumi.Output<String> accountType;

  /// The additional volumes. See `additional_volumes` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> additionalVolumes;

  /// The application. See `application` below.
  late final pulumi.Output<List<Map<String, dynamic>>> applications;

  /// Specifies whether to enable auto-renewal for the subscription. Default value: `false`.
  late final pulumi.Output<bool?> autoRenew;

  /// The auto-renewal period of the subscription compute nodes. The parameter takes effect when AutoRenew is set to true.
  late final pulumi.Output<int?> autoRenewPeriod;

  /// The version of the E-HPC client. By default, the parameter is set to the latest version number.
  late final pulumi.Output<String> clientVersion;

  /// The name of the cluster. The name must be `2` to `64` characters in length.
  late final pulumi.Output<String> clusterName;

  /// The version of the cluster. Default value: `1.0`.
  late final pulumi.Output<String> clusterVersion;

  /// The number of the compute nodes. Valid values: `1` to `99`.
  late final pulumi.Output<int> computeCount;

  /// Specifies whether the compute nodes support hyper-threading. Default value: `true`.
  late final pulumi.Output<bool?> computeEnableHt;

  /// The instance type of the compute nodes.
  late final pulumi.Output<String> computeInstanceType;

  /// The maximum hourly price of the compute nodes. A maximum of three decimal places can be used in the value of the parameter. The parameter is valid only when the ComputeSpotStrategy parameter is set to SpotWithPriceLimit.
  late final pulumi.Output<String?> computeSpotPriceLimit;

  /// The bidding method of the compute nodes. Default value: `NoSpot`. Valid values:
  /// - `NoSpot`: The compute nodes are pay-as-you-go instances.
  /// - `SpotWithPriceLimit`: The compute nodes are preemptible instances that have a user-defined maximum hourly price.
  /// - `SpotAsPriceGo`: The compute nodes are preemptible instances for which the market price at the time of purchase is used as the bid price.
  late final pulumi.Output<String?> computeSpotStrategy;

  /// The mode in which the cluster is deployed. Valid values: `Standard`, `Simple`, `Tiny`. Default value: Standard.
  /// - `Standard`: An account node, a scheduling node, a logon node, and multiple compute nodes are separately deployed.
  /// - `Simple`: A management node, a logon node, and multiple compute nodes are deployed. The management node consists of an account node and a scheduling node. The logon node and compute nodes are separately deployed.
  /// - `Tiny`: A management node and multiple compute nodes are deployed. The management node consists of an account node, a scheduling node, and a logon node. The compute nodes are separately deployed.
  late final pulumi.Output<String> deployMode;

  /// The description of the cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  late final pulumi.Output<String> description;

  /// The domain name of the on-premises cluster. This parameter takes effect only when the AccoutType parameter is set to Idap.
  late final pulumi.Output<String?> domain;

  /// The billing method of the nodes.
  late final pulumi.Output<String> ecsChargeType;

  /// The version of E-HPC. By default, the parameter is set to the latest version number.
  late final pulumi.Output<String> ehpcVersion;

  /// Specifies whether to enable the high availability feature. Default value: `false`.  **Note:** If high availability is enabled, a primary management node and a secondary management node are used.
  late final pulumi.Output<bool> haEnable;

  /// The ID of the image.
  late final pulumi.Output<String> imageId;

  /// The type of the image. Valid values: `others`, `self`, `system`, `marketplace`. Default value: `system`.
  late final pulumi.Output<String> imageOwnerAlias;

  /// The URL of the job files that are uploaded to an Object Storage Service (OSS) bucket.
  late final pulumi.Output<String?> inputFileUrl;

  /// Specifies whether to enable auto scaling. Default value: `false`.
  late final pulumi.Output<bool?> isComputeEss;

  /// The queue to which the compute nodes are added.
  late final pulumi.Output<String?> jobQueue;

  /// The name of the AccessKey pair.
  late final pulumi.Output<String?> keyPairName;

  /// The number of the logon nodes. Valid values: `1`.
  late final pulumi.Output<int> loginCount;

  /// The instance type of the logon nodes.
  late final pulumi.Output<String> loginInstanceType;

  /// The number of the management nodes. Valid values: 1 and 2.
  late final pulumi.Output<int> managerCount;

  /// The instance type of the management nodes.
  late final pulumi.Output<String> managerInstanceType;

  /// The image tag of the operating system.
  late final pulumi.Output<String> osTag;

  /// The root password of the logon node. The password must be 8 to 30 characters in length and contain at least three of the following items: uppercase letters, lowercase letters, digits, and special characters. The password can contain the following special characters: `( ) ~ ! @ # $ % ^ & * - + = { } [ ] : ; ‘ &lt; &gt; , . ? /`. You must specify either `password` or `key_pair_name`. If both are specified, the Password parameter prevails.
  late final pulumi.Output<String?> password;

  /// The duration of the subscription. The unit of the duration is specified by the `period_unit` parameter. Default value: `1`.
  /// * If you set PriceUnit to Year, the valid values of the Period parameter are 1, 2, and 3.
  /// * If you set PriceUnit to Month, the valid values of the Period parameter are 1, 2, 3, 4, 5, 6, 7, 8, and 9.
  /// * If you set PriceUnit to Hour, the valid value of the Period parameter is 1.
  late final pulumi.Output<int?> period;

  /// The unit of the subscription duration. Valid values: `Year`, `Month`, `Hour`. Default value: `Month`.
  late final pulumi.Output<String?> periodUnit;

  /// The mode configurations of the plug-in. This parameter takes effect only when the SchedulerType parameter is set to custom. The value must be a JSON string. The parameter contains the following parameters: pluginMod, pluginLocalPath, and pluginOssPath.
  /// - pluginMod: the mode of the plug-in. The following modes are supported:
  /// - oss: The plug-in is downloaded and decompressed from OSS to a local path. The local path is specified by the pluginLocalPath parameter.
  /// - image: By default, the plug-in is stored in a pre-defined local path. The local path is specified by the pluginLocalPath parameter.
  /// - pluginLocalPath: the local path where the plug-in is stored. We recommend that you select a shared directory in oss mode and a non-shared directory in image mode.
  /// - pluginOssPath: the remote path where the plug-in is stored in OSS. This parameter takes effect only when the pluginMod parameter is set to oss.
  late final pulumi.Output<String?> plugin;

  /// The post install script. See `post_install_script` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> postInstallScripts;

  /// The node of the RAM role.
  late final pulumi.Output<List<String>?> ramNodeTypes;

  /// The name of the Resource Access Management (RAM) role.
  late final pulumi.Output<String?> ramRoleName;

  /// The release instance. Valid values: `true`.
  late final pulumi.Output<bool?> releaseInstance;

  /// The remote directory to which the file system is mounted.
  late final pulumi.Output<String> remoteDirectory;

  /// Specifies whether to enable Virtual Network Computing (VNC). Default value: `false`.
  late final pulumi.Output<bool?> remoteVisEnable;

  /// The ID of the resource group.
  late final pulumi.Output<String?> resourceGroupId;

  /// The ID of the Super Computing Cluster (SCC) instance. If you specify the parameter, the SCC instance is moved to a new SCC cluster.
  late final pulumi.Output<String> sccClusterId;

  /// The type of the scheduler. Valid values: `pbs`, `slurm`, `opengridscheduler` and `deadline`. Default value: `pbs`.
  late final pulumi.Output<String> schedulerType;

  /// The ID of the security group to which the cluster belongs.
  late final pulumi.Output<String> securityGroupId;

  /// If you do not use an existing security group, set the parameter to the name of a new security group. A default policy is applied to the new security group.
  late final pulumi.Output<String?> securityGroupName;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// The performance level of the ESSD that is used as the system disk. Default value: `PL1` For more information, see [ESSDs](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/essds). Valid values:
  /// * `PL0`: A single ESSD can deliver up to 10,000 random read/write IOPS.
  /// * `PL1`: A single ESSD can deliver up to 50,000 random read/write IOPS.
  /// * `PL2`: A single ESSD can deliver up to 100,000 random read/write IOPS.
  /// * `PL3`: A single ESSD can deliver up to 1,000,000 random read/write IOPS.
  late final pulumi.Output<String?> systemDiskLevel;

  /// The size of the system disk. Unit: `GB`. Valid values: `40` to `500`. Default value: `40`.
  late final pulumi.Output<int?> systemDiskSize;

  /// The type of the system disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd` or `cloud`. Default value: `cloud_ssd`.
  late final pulumi.Output<String?> systemDiskType;

  /// The ID of the file system. If you leave the parameter empty, a Performance NAS file system is created by default.
  late final pulumi.Output<String> volumeId;

  /// The mount options of the file system.
  late final pulumi.Output<String?> volumeMountOption;

  /// The mount target of the file system. Take note of the following information:
  /// - If you do not specify the VolumeId parameter, you can leave the VolumeMountpoint parameter empty. A mount target is created by default.
  /// - If you specify the VolumeId parameter, the VolumeMountpoint parameter is required.
  late final pulumi.Output<String> volumeMountpoint;

  /// The type of the protocol that is used by the file system. Valid values: `NFS`, `SMB`. Default value: `NFS`.
  late final pulumi.Output<String> volumeProtocol;

  /// The type of the shared storage. Only Apsara File Storage NAS file systems are supported.
  late final pulumi.Output<String> volumeType;

  /// The ID of the virtual private cloud (VPC) to which the cluster belongs.
  late final pulumi.Output<String> vpcId;

  /// The ID of the vSwitch. E-HPC supports only VPC networks.
  late final pulumi.Output<String> vswitchId;

  /// Specifies whether not to install the agent. Default value: `false`.
  late final pulumi.Output<bool?> withoutAgent;

  /// Specifies whether the logon node uses an elastic IP address (EIP). Default value: `false`.
  late final pulumi.Output<bool?> withoutElasticIp;

  /// The ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_ehpc_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ehpc/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountType = registerOutput<String>('accountType');
    additionalVolumes = registerOutput<List<Map<String, dynamic>>?>(
      'additionalVolumes',
    );
    applications = registerOutput<List<Map<String, dynamic>>>('applications');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    clientVersion = registerOutput<String>('clientVersion');
    clusterName = registerOutput<String>('clusterName');
    clusterVersion = registerOutput<String>('clusterVersion');
    computeCount = registerOutput<int>('computeCount');
    computeEnableHt = registerOutput<bool?>('computeEnableHt');
    computeInstanceType = registerOutput<String>('computeInstanceType');
    computeSpotPriceLimit = registerOutput<String?>('computeSpotPriceLimit');
    computeSpotStrategy = registerOutput<String?>('computeSpotStrategy');
    deployMode = registerOutput<String>('deployMode');
    description = registerOutput<String>('description');
    domain = registerOutput<String?>('domain');
    ecsChargeType = registerOutput<String>('ecsChargeType');
    ehpcVersion = registerOutput<String>('ehpcVersion');
    haEnable = registerOutput<bool>('haEnable');
    imageId = registerOutput<String>('imageId');
    imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    inputFileUrl = registerOutput<String?>('inputFileUrl');
    isComputeEss = registerOutput<bool?>('isComputeEss');
    jobQueue = registerOutput<String?>('jobQueue');
    keyPairName = registerOutput<String?>('keyPairName');
    loginCount = registerOutput<int>('loginCount');
    loginInstanceType = registerOutput<String>('loginInstanceType');
    managerCount = registerOutput<int>('managerCount');
    managerInstanceType = registerOutput<String>('managerInstanceType');
    osTag = registerOutput<String>('osTag');
    password = registerOutput<String?>('password');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    plugin = registerOutput<String?>('plugin');
    postInstallScripts = registerOutput<List<Map<String, dynamic>>?>(
      'postInstallScripts',
    );
    ramNodeTypes = registerOutput<List<String>?>('ramNodeTypes');
    ramRoleName = registerOutput<String?>('ramRoleName');
    releaseInstance = registerOutput<bool?>('releaseInstance');
    remoteDirectory = registerOutput<String>('remoteDirectory');
    remoteVisEnable = registerOutput<bool?>('remoteVisEnable');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    sccClusterId = registerOutput<String>('sccClusterId');
    schedulerType = registerOutput<String>('schedulerType');
    securityGroupId = registerOutput<String>('securityGroupId');
    securityGroupName = registerOutput<String?>('securityGroupName');
    status = registerOutput<String>('status');
    systemDiskLevel = registerOutput<String?>('systemDiskLevel');
    systemDiskSize = registerOutput<int?>('systemDiskSize');
    systemDiskType = registerOutput<String?>('systemDiskType');
    volumeId = registerOutput<String>('volumeId');
    volumeMountOption = registerOutput<String?>('volumeMountOption');
    volumeMountpoint = registerOutput<String>('volumeMountpoint');
    volumeProtocol = registerOutput<String>('volumeProtocol');
    volumeType = registerOutput<String>('volumeType');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    withoutAgent = registerOutput<bool?>('withoutAgent');
    withoutElasticIp = registerOutput<bool?>('withoutElasticIp');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ehpc/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountType = registerOutput<String>('accountType');
    additionalVolumes = registerOutput<List<Map<String, dynamic>>?>(
      'additionalVolumes',
    );
    applications = registerOutput<List<Map<String, dynamic>>>('applications');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    clientVersion = registerOutput<String>('clientVersion');
    clusterName = registerOutput<String>('clusterName');
    clusterVersion = registerOutput<String>('clusterVersion');
    computeCount = registerOutput<int>('computeCount');
    computeEnableHt = registerOutput<bool?>('computeEnableHt');
    computeInstanceType = registerOutput<String>('computeInstanceType');
    computeSpotPriceLimit = registerOutput<String?>('computeSpotPriceLimit');
    computeSpotStrategy = registerOutput<String?>('computeSpotStrategy');
    deployMode = registerOutput<String>('deployMode');
    description = registerOutput<String>('description');
    domain = registerOutput<String?>('domain');
    ecsChargeType = registerOutput<String>('ecsChargeType');
    ehpcVersion = registerOutput<String>('ehpcVersion');
    haEnable = registerOutput<bool>('haEnable');
    imageId = registerOutput<String>('imageId');
    imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    inputFileUrl = registerOutput<String?>('inputFileUrl');
    isComputeEss = registerOutput<bool?>('isComputeEss');
    jobQueue = registerOutput<String?>('jobQueue');
    keyPairName = registerOutput<String?>('keyPairName');
    loginCount = registerOutput<int>('loginCount');
    loginInstanceType = registerOutput<String>('loginInstanceType');
    managerCount = registerOutput<int>('managerCount');
    managerInstanceType = registerOutput<String>('managerInstanceType');
    osTag = registerOutput<String>('osTag');
    password = registerOutput<String?>('password');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    plugin = registerOutput<String?>('plugin');
    postInstallScripts = registerOutput<List<Map<String, dynamic>>?>(
      'postInstallScripts',
    );
    ramNodeTypes = registerOutput<List<String>?>('ramNodeTypes');
    ramRoleName = registerOutput<String?>('ramRoleName');
    releaseInstance = registerOutput<bool?>('releaseInstance');
    remoteDirectory = registerOutput<String>('remoteDirectory');
    remoteVisEnable = registerOutput<bool?>('remoteVisEnable');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    sccClusterId = registerOutput<String>('sccClusterId');
    schedulerType = registerOutput<String>('schedulerType');
    securityGroupId = registerOutput<String>('securityGroupId');
    securityGroupName = registerOutput<String?>('securityGroupName');
    status = registerOutput<String>('status');
    systemDiskLevel = registerOutput<String?>('systemDiskLevel');
    systemDiskSize = registerOutput<int?>('systemDiskSize');
    systemDiskType = registerOutput<String?>('systemDiskType');
    volumeId = registerOutput<String>('volumeId');
    volumeMountOption = registerOutput<String?>('volumeMountOption');
    volumeMountpoint = registerOutput<String>('volumeMountpoint');
    volumeProtocol = registerOutput<String>('volumeProtocol');
    volumeType = registerOutput<String>('volumeType');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    withoutAgent = registerOutput<bool?>('withoutAgent');
    withoutElasticIp = registerOutput<bool?>('withoutElasticIp');
    zoneId = registerOutput<String>('zoneId');
  }
}
