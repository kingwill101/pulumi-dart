import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_backup_client_args.dart';
import 'ecs_backup_client_state.dart';

/// Provides a Hybrid Backup Recovery (HBR) Ecs Backup Client resource.
///
/// For information about Hybrid Backup Recovery (HBR) Ecs Backup Client and how to use it, see [What is Ecs Backup Client](https://www.alibabacloud.com/help/doc-detail/186570.htm).
///
/// &gt; **NOTE:** Available in v1.132.0+.
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
/// const example = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const exampleGetInstanceTypes = example.then(example => alicloud.ecs.getInstanceTypes({
///     availabilityZone: example.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const exampleGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[0]?.id),
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: "terraform-example",
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.ecs.Instance("example", {
///     imageId: exampleGetImages.then(exampleGetImages => exampleGetImages.images?.[0]?.id),
///     instanceType: exampleGetInstanceTypes.then(exampleGetInstanceTypes => exampleGetInstanceTypes.instanceTypes?.[0]?.id),
///     availabilityZone: example.then(example => example.zones?.[0]?.id),
///     securityGroups: [exampleSecurityGroup.id],
///     instanceName: "terraform-example",
///     internetChargeType: "PayByBandwidth",
///     vswitchId: exampleSwitch.id,
/// });
/// const exampleEcsBackupClient = new alicloud.hbr.EcsBackupClient("example", {
///     instanceId: exampleInstance.id,
///     useHttps: false,
///     dataNetworkType: "VPC",
///     maxCpuCore: "2",
///     maxWorker: "4",
///     dataProxySetting: "USE_CONTROL_PROXY",
///     proxyHost: "192.168.11.101",
///     proxyPort: "80",
///     proxyUser: "user",
///     proxyPassword: "password",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.get_zones(available_resource_creation="Instance")
/// example_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=example.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// example_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=example_network.id,
///     zone_id=example.zones[0].id)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name="terraform-example",
///     vpc_id=example_network.id)
/// example_instance = alicloud.ecs.Instance("example",
///     image_id=example_get_images.images[0].id,
///     instance_type=example_get_instance_types.instance_types[0].id,
///     availability_zone=example.zones[0].id,
///     security_groups=[example_security_group.id],
///     instance_name="terraform-example",
///     internet_charge_type="PayByBandwidth",
///     vswitch_id=example_switch.id)
/// example_ecs_backup_client = alicloud.hbr.EcsBackupClient("example",
///     instance_id=example_instance.id,
///     use_https=False,
///     data_network_type="VPC",
///     max_cpu_core="2",
///     max_worker="4",
///     data_proxy_setting="USE_CONTROL_PROXY",
///     proxy_host="192.168.11.101",
///     proxy_port="80",
///     proxy_user="user",
///     proxy_password="password")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var exampleGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var exampleGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = exampleNetwork.Id,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = "terraform-example",
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Ecs.Instance("example", new()
///     {
///         ImageId = exampleGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = exampleGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         SecurityGroups = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         InstanceName = "terraform-example",
///         InternetChargeType = "PayByBandwidth",
///         VswitchId = exampleSwitch.Id,
///     });
///
///     var exampleEcsBackupClient = new AliCloud.Hbr.EcsBackupClient("example", new()
///     {
///         InstanceId = exampleInstance.Id,
///         UseHttps = false,
///         DataNetworkType = "VPC",
///         MaxCpuCore = "2",
///         MaxWorker = "4",
///         DataProxySetting = "USE_CONTROL_PROXY",
///         ProxyHost = "192.168.11.101",
///         ProxyPort = "80",
///         ProxyUser = "user",
///         ProxyPassword = "password",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(example.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String("terraform-example"),
/// 			VpcId: exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := ecs.NewInstance(ctx, "example", &ecs.InstanceArgs{
/// 			ImageId:          pulumi.String(exampleGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(exampleGetInstanceTypes.InstanceTypes[0].Id),
/// 			AvailabilityZone: pulumi.String(example.Zones[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 			InstanceName:       pulumi.String("terraform-example"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			VswitchId:          exampleSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewEcsBackupClient(ctx, "example", &hbr.EcsBackupClientArgs{
/// 			InstanceId:       exampleInstance.ID(),
/// 			UseHttps:         pulumi.Bool(false),
/// 			DataNetworkType:  pulumi.String("VPC"),
/// 			MaxCpuCore:       pulumi.String("2"),
/// 			MaxWorker:        pulumi.String("4"),
/// 			DataProxySetting: pulumi.String("USE_CONTROL_PROXY"),
/// 			ProxyHost:        pulumi.String("192.168.11.101"),
/// 			ProxyPort:        pulumi.String("80"),
/// 			ProxyUser:        pulumi.String("user"),
/// 			ProxyPassword:    pulumi.String("password"),
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
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.hbr.EcsBackupClient;
/// import com.pulumi.alicloud.hbr.EcsBackupClientArgs;
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
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var exampleGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(example.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var exampleGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[0].id())
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name("terraform-example")
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .imageId(exampleGetImages.images()[0].id())
///             .instanceType(exampleGetInstanceTypes.instanceTypes()[0].id())
///             .availabilityZone(example.zones()[0].id())
///             .securityGroups(exampleSecurityGroup.id())
///             .instanceName("terraform-example")
///             .internetChargeType("PayByBandwidth")
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///         var exampleEcsBackupClient = new EcsBackupClient("exampleEcsBackupClient", EcsBackupClientArgs.builder()
///             .instanceId(exampleInstance.id())
///             .useHttps(false)
///             .dataNetworkType("VPC")
///             .maxCpuCore("2")
///             .maxWorker("4")
///             .dataProxySetting("USE_CONTROL_PROXY")
///             .proxyHost("192.168.11.101")
///             .proxyPort("80")
///             .proxyUser("user")
///             .proxyPassword("password")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[0].id}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: terraform-example
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:ecs:Instance
///     name: example
///     properties:
///       imageId: ${exampleGetImages.images[0].id}
///       instanceType: ${exampleGetInstanceTypes.instanceTypes[0].id}
///       availabilityZone: ${example.zones[0].id}
///       securityGroups:
///         - ${exampleSecurityGroup.id}
///       instanceName: terraform-example
///       internetChargeType: PayByBandwidth
///       vswitchId: ${exampleSwitch.id}
///   exampleEcsBackupClient:
///     type: alicloud:hbr:EcsBackupClient
///     name: example
///     properties:
///       instanceId: ${exampleInstance.id}
///       useHttps: false
///       dataNetworkType: VPC
///       maxCpuCore: 2
///       maxWorker: 4
///       dataProxySetting: USE_CONTROL_PROXY
///       proxyHost: 192.168.11.101
///       proxyPort: 80
///       proxyUser: user
///       proxyPassword: password
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   exampleGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${example.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   exampleGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Notice
///
/// &gt; **Note:** Please read the following precautions carefully before deleting a client:
/// 1. You cannot delete active clients that have received heartbeat packets within one hour.
/// 2. You can make the client inactive by change the status of client to `STOPPED`.
/// 3. The resources bound to the client will be deleted in cascade, including:
/// - Backup plan
/// - Backup task (Running in the background)
/// - Snapshot
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Ecs Backup Client can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/ecsBackupClient:EcsBackupClient example <id>
/// ```
class EcsBackupClient extends pulumi.CustomResource {
  /// The data plane access point type. Valid values: `CLASSIC`, `PUBLIC`, `VPC`. **NOTE:** The value of `CLASSIC` has been deprecated in v1.161.0+.
  late final pulumi.Output<String> dataNetworkType;
  /// The data plane proxy settings. Valid values: `CUSTOM`, `DISABLE`, `USE_CONTROL_PROXY`.
  late final pulumi.Output<String> dataProxySetting;
  /// The ID of ECS instance.
  late final pulumi.Output<String> instanceId;
  /// The number of CPU cores used by a single backup task, 0 means no restrictions.
  late final pulumi.Output<String> maxCpuCore;
  /// The number of concurrent jobs for a single backup task, 0 means no restrictions.
  late final pulumi.Output<String> maxWorker;
  /// Custom data plane proxy server host address.
  late final pulumi.Output<String> proxyHost;
  /// The password of custom data plane proxy server.
  late final pulumi.Output<String> proxyPassword;
  /// Custom data plane proxy server host port.
  late final pulumi.Output<String> proxyPort;
  /// The username of custom data plane proxy server.
  late final pulumi.Output<String> proxyUser;
  /// Status of client. Valid values: `ACTIVATED`, `STOPPED`. You can start or stop the client by specifying the status.
  late final pulumi.Output<String> status;
  /// Indicates whether to use the HTTPS protocol. Valid values: `true`, `false`.
  late final pulumi.Output<bool> useHttps;

  /// Creates a new [EcsBackupClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsBackupClient]. {@macro pulumi_hbr_ecs_backup_client_ecs_backup_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsBackupClient(
    String name, {
    EcsBackupClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/ecsBackupClient:EcsBackupClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataNetworkType = registerOutput<String>('dataNetworkType');
    dataProxySetting = registerOutput<String>('dataProxySetting');
    instanceId = registerOutput<String>('instanceId');
    maxCpuCore = registerOutput<String>('maxCpuCore');
    maxWorker = registerOutput<String>('maxWorker');
    proxyHost = registerOutput<String>('proxyHost');
    proxyPassword = registerOutput<String>('proxyPassword');
    proxyPort = registerOutput<String>('proxyPort');
    proxyUser = registerOutput<String>('proxyUser');
    status = registerOutput<String>('status');
    useHttps = registerOutput<bool>('useHttps');
  }

  /// Gets an existing [EcsBackupClient] resource's state with the given [name] and [id].
  static EcsBackupClient get(
    String name,
    pulumi.Input<String> id, {
    EcsBackupClientState? state,
  }) {
    return EcsBackupClient._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsBackupClient._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/ecsBackupClient:EcsBackupClient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataNetworkType = registerOutput<String>('dataNetworkType');
    dataProxySetting = registerOutput<String>('dataProxySetting');
    instanceId = registerOutput<String>('instanceId');
    maxCpuCore = registerOutput<String>('maxCpuCore');
    maxWorker = registerOutput<String>('maxWorker');
    proxyHost = registerOutput<String>('proxyHost');
    proxyPassword = registerOutput<String>('proxyPassword');
    proxyPort = registerOutput<String>('proxyPort');
    proxyUser = registerOutput<String>('proxyUser');
    status = registerOutput<String>('status');
    useHttps = registerOutput<bool>('useHttps');
  }
}
