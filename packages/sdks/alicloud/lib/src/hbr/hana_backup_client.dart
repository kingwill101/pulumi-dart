import 'package:pulumi/pulumi.dart' as pulumi;
import 'hana_backup_client_args.dart';
import 'hana_backup_client_state.dart';

/// Provides a Hybrid Backup Recovery (HBR) Hana Backup Client resource.
///
/// For information about Hybrid Backup Recovery (HBR) Hana Backup Client and how to use it, see [What is Hana Backup Client](https://www.alibabacloud.com/help/en/hybrid-backup-recovery/latest/api-hbr-2017-09-08-createclients).
///
/// > **NOTE:** Available since v1.198.0.
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
///     nameRegex: "^ubuntu_[0-9]+_[0-9]+_x64*",
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
/// const exampleGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const exampleVault = new alicloud.hbr.Vault("example", {vaultName: "terraform-example"});
/// const exampleHanaInstance = new alicloud.hbr.HanaInstance("example", {
///     alertSetting: "INHERITED",
///     hanaName: "terraform-example",
///     host: "1.1.1.1",
///     instanceNumber: 1,
///     password: "YouPassword123",
///     resourceGroupId: exampleGetResourceGroups.then(exampleGetResourceGroups => exampleGetResourceGroups.groups?.[0]?.id),
///     sid: "HXE",
///     useSsl: false,
///     userName: "admin",
///     validateCertificate: false,
///     vaultId: exampleVault.id,
/// });
/// const _default = new alicloud.hbr.HanaBackupClient("default", {
///     vaultId: exampleVault.id,
///     clientInfo: pulumi.interpolate`[ { "instanceId": "${exampleInstance.id}", "clusterId": "${exampleHanaInstance.hanaInstanceId}", "sourceTypes": [ "HANA" ]  }]`,
///     alertSetting: "INHERITED",
///     useHttps: true,
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
/// example_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_[0-9]+_[0-9]+_x64*",
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
/// example_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// example_vault = alicloud.hbr.Vault("example", vault_name="terraform-example")
/// example_hana_instance = alicloud.hbr.HanaInstance("example",
///     alert_setting="INHERITED",
///     hana_name="terraform-example",
///     host="1.1.1.1",
///     instance_number=1,
///     password="YouPassword123",
///     resource_group_id=example_get_resource_groups.groups[0].id,
///     sid="HXE",
///     use_ssl=False,
///     user_name="admin",
///     validate_certificate=False,
///     vault_id=example_vault.id)
/// default = alicloud.hbr.HanaBackupClient("default",
///     vault_id=example_vault.id,
///     client_info=pulumi.Output.all(
///         id=example_instance.id,
///         hana_instance_id=example_hana_instance.hana_instance_id
/// ).apply(lambda resolved_outputs: f"[ {{ \"instanceId\": \"{resolved_outputs['id']}\", \"clusterId\": \"{resolved_outputs['hana_instance_id']}\", \"sourceTypes\": [ \"HANA\" ]  }}]")
/// ,
///     alert_setting="INHERITED",
///     use_https=True)
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
///         NameRegex = "^ubuntu_[0-9]+_[0-9]+_x64*",
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
///     var exampleGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var exampleVault = new AliCloud.Hbr.Vault("example", new()
///     {
///         VaultName = "terraform-example",
///     });
///
///     var exampleHanaInstance = new AliCloud.Hbr.HanaInstance("example", new()
///     {
///         AlertSetting = "INHERITED",
///         HanaName = "terraform-example",
///         Host = "1.1.1.1",
///         InstanceNumber = 1,
///         Password = "YouPassword123",
///         ResourceGroupId = exampleGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         Sid = "HXE",
///         UseSsl = false,
///         UserName = "admin",
///         ValidateCertificate = false,
///         VaultId = exampleVault.Id,
///     });
///
///     var @default = new AliCloud.Hbr.HanaBackupClient("default", new()
///     {
///         VaultId = exampleVault.Id,
///         ClientInfo = Output.Tuple(exampleInstance.Id, exampleHanaInstance.HanaInstanceId).Apply(values =>
///         {
///             var id = values.Item1;
///             var hanaInstanceId = values.Item2;
///             return $"[ {{ \"instanceId\": \"{id}\", \"clusterId\": \"{hanaInstanceId}\", \"sourceTypes\": [ \"HANA\" ]  }}]";
///         }),
///         AlertSetting = "INHERITED",
///         UseHttps = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 			NameRegex: pulumi.StringRef("^ubuntu_[0-9]+_[0-9]+_x64*"),
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
/// 		exampleGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := hbr.NewVault(ctx, "example", &hbr.VaultArgs{
/// 			VaultName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHanaInstance, err := hbr.NewHanaInstance(ctx, "example", &hbr.HanaInstanceArgs{
/// 			AlertSetting:        pulumi.String("INHERITED"),
/// 			HanaName:            pulumi.String("terraform-example"),
/// 			Host:                pulumi.String("1.1.1.1"),
/// 			InstanceNumber:      pulumi.Int(1),
/// 			Password:            pulumi.String("YouPassword123"),
/// 			ResourceGroupId:     pulumi.String(exampleGetResourceGroups.Groups[0].Id),
/// 			Sid:                 pulumi.String("HXE"),
/// 			UseSsl:              pulumi.Bool(false),
/// 			UserName:            pulumi.String("admin"),
/// 			ValidateCertificate: pulumi.Bool(false),
/// 			VaultId:             exampleVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewHanaBackupClient(ctx, "default", &hbr.HanaBackupClientArgs{
/// 			VaultId: exampleVault.ID(),
/// 			ClientInfo: pulumi.All(exampleInstance.ID(), exampleHanaInstance.HanaInstanceId).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(string)
/// 				hanaInstanceId := _args[1].(string)
/// 				return fmt.Sprintf("[ { \"instanceId\": \"%v\", \"clusterId\": \"%v\", \"sourceTypes\": [ \"HANA\" ]  }]", id, hanaInstanceId), nil
/// 			}).(pulumi.StringOutput),
/// 			AlertSetting: pulumi.String("INHERITED"),
/// 			UseHttps:     pulumi.Bool(true),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
/// import com.pulumi.alicloud.hbr.HanaInstance;
/// import com.pulumi.alicloud.hbr.HanaInstanceArgs;
/// import com.pulumi.alicloud.hbr.HanaBackupClient;
/// import com.pulumi.alicloud.hbr.HanaBackupClientArgs;
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
///             .nameRegex("^ubuntu_[0-9]+_[0-9]+_x64*")
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
///         final var exampleGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .vaultName("terraform-example")
///             .build());
///
///         var exampleHanaInstance = new HanaInstance("exampleHanaInstance", HanaInstanceArgs.builder()
///             .alertSetting("INHERITED")
///             .hanaName("terraform-example")
///             .host("1.1.1.1")
///             .instanceNumber(1)
///             .password("YouPassword123")
///             .resourceGroupId(exampleGetResourceGroups.groups()[0].id())
///             .sid("HXE")
///             .useSsl(false)
///             .userName("admin")
///             .validateCertificate(false)
///             .vaultId(exampleVault.id())
///             .build());
///
///         var default_ = new HanaBackupClient("default", HanaBackupClientArgs.builder()
///             .vaultId(exampleVault.id())
///             .clientInfo(Output.tuple(exampleInstance.id(), exampleHanaInstance.hanaInstanceId()).applyValue(values -> {
///                 var id = values.t1;
///                 var hanaInstanceId = values.t2;
///                 return String.format("[ {{ \"instanceId\": \"%s\", \"clusterId\": \"%s\", \"sourceTypes\": [ \"HANA\" ]  }}]", id,hanaInstanceId);
///             }))
///             .alertSetting("INHERITED")
///             .useHttps(true)
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
///   exampleVault:
///     type: alicloud:hbr:Vault
///     name: example
///     properties:
///       vaultName: terraform-example
///   exampleHanaInstance:
///     type: alicloud:hbr:HanaInstance
///     name: example
///     properties:
///       alertSetting: INHERITED
///       hanaName: terraform-example
///       host: 1.1.1.1
///       instanceNumber: 1
///       password: YouPassword123
///       resourceGroupId: ${exampleGetResourceGroups.groups[0].id}
///       sid: HXE
///       useSsl: false
///       userName: admin
///       validateCertificate: false
///       vaultId: ${exampleVault.id}
///   default:
///     type: alicloud:hbr:HanaBackupClient
///     properties:
///       vaultId: ${exampleVault.id}
///       clientInfo: '[ { "instanceId": "${exampleInstance.id}", "clusterId": "${exampleHanaInstance.hanaInstanceId}", "sourceTypes": [ "HANA" ]  }]'
///       alertSetting: INHERITED
///       useHttps: true
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
///         nameRegex: ^ubuntu_[0-9]+_[0-9]+_x64*
///         owners: system
///   exampleGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Hana Backup Client can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/hanaBackupClient:HanaBackupClient example <vault_id>:<client_id>
/// ```
class HanaBackupClient extends pulumi.CustomResource {
  /// The alert settings. Valid value: `INHERITED`.
  late final pulumi.Output<String> alertSetting;
  /// The ID of the backup client.
  late final pulumi.Output<String> clientId;
  /// The installation information of the HBR clients.
  late final pulumi.Output<String?> clientInfo;
  /// The ID of the SAP HANA instance.
  late final pulumi.Output<String> clusterId;
  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;
  /// The status of the Hana Backup Client.
  late final pulumi.Output<String> status;
  /// Specifies whether to transmit data over HTTPS. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> useHttps;
  /// The ID of the backup vault.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [HanaBackupClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HanaBackupClient]. {@macro pulumi_hbr_hana_backup_client_hana_backup_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HanaBackupClient(
    String name, {
    HanaBackupClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/hanaBackupClient:HanaBackupClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertSetting = registerOutput<String>('alertSetting');
    this.clientId = registerOutput<String>('clientId');
    this.clientInfo = registerOutput<String?>('clientInfo');
    this.clusterId = registerOutput<String>('clusterId');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String>('status');
    this.useHttps = registerOutput<bool?>('useHttps');
    this.vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [HanaBackupClient] resource's state with the given [name] and [id].
  static HanaBackupClient get(
    String name,
    pulumi.Input<String> id, {
    HanaBackupClientState? state,
  }) {
    return HanaBackupClient._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HanaBackupClient._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/hanaBackupClient:HanaBackupClient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertSetting = registerOutput<String>('alertSetting');
    this.clientId = registerOutput<String>('clientId');
    this.clientInfo = registerOutput<String?>('clientInfo');
    this.clusterId = registerOutput<String>('clusterId');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String>('status');
    this.useHttps = registerOutput<bool?>('useHttps');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
