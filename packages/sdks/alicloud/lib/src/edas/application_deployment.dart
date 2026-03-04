import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_deployment_args.dart';
import 'application_deployment_state.dart';

/// Deploys applications on EDAS, see [What is EDAS Application Deployment](https://www.alibabacloud.com/help/en/edas/developer-reference/api-edas-2017-08-01-deployapplication).
///
/// &gt; **NOTE:** Available since v1.82.0.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_[0-9]+_[0-9]+_x64*",
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = defaultGetZones.then(defaultGetZones => alicloud.ecs.getInstanceTypes({
///     availabilityZone: defaultGetZones.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     instanceName: name,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultCluster = new alicloud.edas.Cluster("default", {
///     clusterName: name,
///     clusterType: 2,
///     networkMode: 2,
///     logicalRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstanceClusterAttachment = new alicloud.edas.InstanceClusterAttachment("default", {
///     clusterId: defaultCluster.id,
///     instanceIds: [defaultInstance.id],
/// });
/// const defaultApplication = new alicloud.edas.Application("default", {
///     applicationName: name,
///     clusterId: defaultCluster.id,
///     packageType: "JAR",
/// });
/// const defaultDeployGroup = new alicloud.edas.DeployGroup("default", {
///     appId: defaultApplication.id,
///     groupName: name,
/// });
/// const defaultApplicationDeployment = new alicloud.edas.ApplicationDeployment("default", {
///     appId: defaultApplication.id,
///     groupId: "all",
///     warUrl: "http://edas-sz.oss-cn-shenzhen.aliyuncs.com/prod/demo/SPRING_CLOUD_CONSUMER.jar",
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
/// default = alicloud.get_regions(current=True)
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_[0-9]+_[0-9]+_x64*",
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default_get_zones.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default_get_zones.zones[0].id,
///     instance_name=name,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch.id)
/// default_cluster = alicloud.edas.Cluster("default",
///     cluster_name=name,
///     cluster_type=2,
///     network_mode=2,
///     logical_region_id=default.regions[0].id,
///     vpc_id=default_network.id)
/// default_instance_cluster_attachment = alicloud.edas.InstanceClusterAttachment("default",
///     cluster_id=default_cluster.id,
///     instance_ids=[default_instance.id])
/// default_application = alicloud.edas.Application("default",
///     application_name=name,
///     cluster_id=default_cluster.id,
///     package_type="JAR")
/// default_deploy_group = alicloud.edas.DeployGroup("default",
///     app_id=default_application.id,
///     group_name=name)
/// default_application_deployment = alicloud.edas.ApplicationDeployment("default",
///     app_id=default_application.id,
///     group_id="all",
///     war_url="http://edas-sz.oss-cn-shenzhen.aliyuncs.com/prod/demo/SPRING_CLOUD_CONSUMER.jar")
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
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_[0-9]+_[0-9]+_x64*",
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceName = name,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultCluster = new AliCloud.Edas.Cluster("default", new()
///     {
///         ClusterName = name,
///         ClusterType = 2,
///         NetworkMode = 2,
///         LogicalRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstanceClusterAttachment = new AliCloud.Edas.InstanceClusterAttachment("default", new()
///     {
///         ClusterId = defaultCluster.Id,
///         InstanceIds = new[]
///         {
///             defaultInstance.Id,
///         },
///     });
///
///     var defaultApplication = new AliCloud.Edas.Application("default", new()
///     {
///         ApplicationName = name,
///         ClusterId = defaultCluster.Id,
///         PackageType = "JAR",
///     });
///
///     var defaultDeployGroup = new AliCloud.Edas.DeployGroup("default", new()
///     {
///         AppId = defaultApplication.Id,
///         GroupName = name,
///     });
///
///     var defaultApplicationDeployment = new AliCloud.Edas.ApplicationDeployment("default", new()
///     {
///         AppId = defaultApplication.Id,
///         GroupId = "all",
///         WarUrl = "http://edas-sz.oss-cn-shenzhen.aliyuncs.com/prod/demo/SPRING_CLOUD_CONSUMER.jar",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_[0-9]+_[0-9]+_x64*"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(defaultGetZones.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(defaultGetZones.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			ImageId:          pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId: defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCluster, err := edas.NewCluster(ctx, "default", &edas.ClusterArgs{
/// 			ClusterName:     pulumi.String(name),
/// 			ClusterType:     pulumi.Int(2),
/// 			NetworkMode:     pulumi.Int(2),
/// 			LogicalRegionId: pulumi.String(_default.Regions[0].Id),
/// 			VpcId:           defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edas.NewInstanceClusterAttachment(ctx, "default", &edas.InstanceClusterAttachmentArgs{
/// 			ClusterId: defaultCluster.ID(),
/// 			InstanceIds: pulumi.StringArray{
/// 				defaultInstance.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplication, err := edas.NewApplication(ctx, "default", &edas.ApplicationArgs{
/// 			ApplicationName: pulumi.String(name),
/// 			ClusterId:       defaultCluster.ID(),
/// 			PackageType:     pulumi.String("JAR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edas.NewDeployGroup(ctx, "default", &edas.DeployGroupArgs{
/// 			AppId:     defaultApplication.ID(),
/// 			GroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edas.NewApplicationDeployment(ctx, "default", &edas.ApplicationDeploymentArgs{
/// 			AppId:   defaultApplication.ID(),
/// 			GroupId: pulumi.String("all"),
/// 			WarUrl:  pulumi.String("http://edas-sz.oss-cn-shenzhen.aliyuncs.com/prod/demo/SPRING_CLOUD_CONSUMER.jar"),
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
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
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
/// import com.pulumi.alicloud.edas.Cluster;
/// import com.pulumi.alicloud.edas.ClusterArgs;
/// import com.pulumi.alicloud.edas.InstanceClusterAttachment;
/// import com.pulumi.alicloud.edas.InstanceClusterAttachmentArgs;
/// import com.pulumi.alicloud.edas.Application;
/// import com.pulumi.alicloud.edas.ApplicationArgs;
/// import com.pulumi.alicloud.edas.DeployGroup;
/// import com.pulumi.alicloud.edas.DeployGroupArgs;
/// import com.pulumi.alicloud.edas.ApplicationDeployment;
/// import com.pulumi.alicloud.edas.ApplicationDeploymentArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_[0-9]+_[0-9]+_x64*")
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(defaultGetZones.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(defaultGetZones.zones()[0].id())
///             .instanceName(name)
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .clusterName(name)
///             .clusterType(2)
///             .networkMode(2)
///             .logicalRegionId(default_.regions()[0].id())
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstanceClusterAttachment = new InstanceClusterAttachment("defaultInstanceClusterAttachment", InstanceClusterAttachmentArgs.builder()
///             .clusterId(defaultCluster.id())
///             .instanceIds(defaultInstance.id())
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .applicationName(name)
///             .clusterId(defaultCluster.id())
///             .packageType("JAR")
///             .build());
///
///         var defaultDeployGroup = new DeployGroup("defaultDeployGroup", DeployGroupArgs.builder()
///             .appId(defaultApplication.id())
///             .groupName(name)
///             .build());
///
///         var defaultApplicationDeployment = new ApplicationDeployment("defaultApplicationDeployment", ApplicationDeploymentArgs.builder()
///             .appId(defaultApplication.id())
///             .groupId("all")
///             .warUrl("http://edas-sz.oss-cn-shenzhen.aliyuncs.com/prod/demo/SPRING_CLOUD_CONSUMER.jar")
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
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${defaultGetZones.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${defaultGetZones.zones[0].id}
///       instanceName: ${name}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///   defaultCluster:
///     type: alicloud:edas:Cluster
///     name: default
///     properties:
///       clusterName: ${name}
///       clusterType: '2'
///       networkMode: '2'
///       logicalRegionId: ${default.regions[0].id}
///       vpcId: ${defaultNetwork.id}
///   defaultInstanceClusterAttachment:
///     type: alicloud:edas:InstanceClusterAttachment
///     name: default
///     properties:
///       clusterId: ${defaultCluster.id}
///       instanceIds:
///         - ${defaultInstance.id}
///   defaultApplication:
///     type: alicloud:edas:Application
///     name: default
///     properties:
///       applicationName: ${name}
///       clusterId: ${defaultCluster.id}
///       packageType: JAR
///   defaultDeployGroup:
///     type: alicloud:edas:DeployGroup
///     name: default
///     properties:
///       appId: ${defaultApplication.id}
///       groupName: ${name}
///   defaultApplicationDeployment:
///     type: alicloud:edas:ApplicationDeployment
///     name: default
///     properties:
///       appId: ${defaultApplication.id}
///       groupId: all
///       warUrl: http://edas-sz.oss-cn-shenzhen.aliyuncs.com/prod/demo/SPRING_CLOUD_CONSUMER.jar
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_[0-9]+_[0-9]+_x64*
///         owners: system
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${defaultGetZones.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class ApplicationDeployment extends pulumi.CustomResource {
  /// The ID of the application that you want to deploy.
  late final pulumi.Output<String> appId;

  /// The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  late final pulumi.Output<String> groupId;

  /// Last package version deployed.
  late final pulumi.Output<String> lastPackageVersion;

  /// The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  late final pulumi.Output<String?> packageVersion;

  /// The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  late final pulumi.Output<String> warUrl;

  /// Creates a new [ApplicationDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationDeployment]. {@macro pulumi_edas_application_deployment_application_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationDeployment(
    String name, {
    ApplicationDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:edas/applicationDeployment:ApplicationDeployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appId = registerOutput<String>('appId');
    groupId = registerOutput<String>('groupId');
    lastPackageVersion = registerOutput<String>('lastPackageVersion');
    packageVersion = registerOutput<String?>('packageVersion');
    warUrl = registerOutput<String>('warUrl');
  }

  /// Gets an existing [ApplicationDeployment] resource's state with the given [name] and [id].
  static ApplicationDeployment get(
    String name,
    pulumi.Input<String> id, {
    ApplicationDeploymentState? state,
  }) {
    return ApplicationDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:edas/applicationDeployment:ApplicationDeployment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appId = registerOutput<String>('appId');
    groupId = registerOutput<String>('groupId');
    lastPackageVersion = registerOutput<String>('lastPackageVersion');
    packageVersion = registerOutput<String?>('packageVersion');
    warUrl = registerOutput<String>('warUrl');
  }
}
