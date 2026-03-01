import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_addon_args.dart';

/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     namePrefix: name,
///     clusterSpec: "ack.pro.small",
///     workerVswitchIds: [defaultSwitch.id],
///     newNatGateway: false,
///     podCidr: std.cidrsubnet({
///         input: "10.0.0.0/8",
///         newbits: 8,
///         netnum: 36,
///     }).then(invoke => invoke.result),
///     serviceCidr: std.cidrsubnet({
///         input: "172.16.0.0/16",
///         newbits: 4,
///         netnum: 7,
///     }).then(invoke => invoke.result),
///     slbInternetEnabled: true,
///     addons: [{
///         name: "logtail-ds",
///         config: JSON.stringify({
///             IngressDashboardEnabled: "true",
///         }),
///         disabled: false,
///     }],
/// });
/// // data source provides the information of available addons
/// const defaultGetKubernetesAddons = alicloud.cs.getKubernetesAddonsOutput({
///     clusterId: defaultManagedKubernetes.id,
///     nameRegex: "logtail-ds",
/// });
/// // Manage addon resource
/// const logtail_ds = new alicloud.cs.KubernetesAddon("logtail-ds", {
///     clusterId: defaultManagedKubernetes.id,
///     name: "logtail-ds",
///     version: "v1.6.0.0-aliyun",
///     config: JSON.stringify({}),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name_prefix=name,
///     cluster_spec="ack.pro.small",
///     worker_vswitch_ids=[default_switch.id],
///     new_nat_gateway=False,
///     pod_cidr=std.cidrsubnet(input="10.0.0.0/8",
///         newbits=8,
///         netnum=36).result,
///     service_cidr=std.cidrsubnet(input="172.16.0.0/16",
///         newbits=4,
///         netnum=7).result,
///     slb_internet_enabled=True,
///     addons=[{
///         "name": "logtail-ds",
///         "config": json.dumps({
///             "IngressDashboardEnabled": "true",
///         }),
///         "disabled": False,
///     }])
/// # data source provides the information of available addons
/// default_get_kubernetes_addons = alicloud.cs.get_kubernetes_addons_output(cluster_id=default_managed_kubernetes.id,
///     name_regex="logtail-ds")
/// # Manage addon resource
/// logtail_ds = alicloud.cs.KubernetesAddon("logtail-ds",
///     cluster_id=default_managed_kubernetes.id,
///     name="logtail-ds",
///     version="v1.6.0.0-aliyun",
///     config=json.dumps({}))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         NamePrefix = name,
///         ClusterSpec = "ack.pro.small",
///         WorkerVswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         NewNatGateway = false,
///         PodCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "10.0.0.0/8",
///             Newbits = 8,
///             Netnum = 36,
///         }).Apply(invoke => invoke.Result),
///         ServiceCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "172.16.0.0/16",
///             Newbits = 4,
///             Netnum = 7,
///         }).Apply(invoke => invoke.Result),
///         SlbInternetEnabled = true,
///         Addons = new[]
///         {
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "logtail-ds",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["IngressDashboardEnabled"] = "true",
///                 }),
///                 Disabled = false,
///             },
///         },
///     });
///
///     // data source provides the information of available addons
///     var defaultGetKubernetesAddons = AliCloud.CS.GetKubernetesAddons.Invoke(new()
///     {
///         ClusterId = defaultManagedKubernetes.Id,
///         NameRegex = "logtail-ds",
///     });
///
///     // Manage addon resource
///     var logtail_ds = new AliCloud.CS.KubernetesAddon("logtail-ds", new()
///     {
///         ClusterId = defaultManagedKubernetes.Id,
///         Name = "logtail-ds",
///         Version = "v1.6.0.0-aliyun",
///         Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
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
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "10.0.0.0/8",
/// 			Newbits: 8,
/// 			Netnum:  36,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet1, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "172.16.0.0/16",
/// 			Newbits: 4,
/// 			Netnum:  7,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"IngressDashboardEnabled": "true",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// 			NamePrefix:  pulumi.String(name),
/// 			ClusterSpec: pulumi.String("ack.pro.small"),
/// 			WorkerVswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			NewNatGateway:      pulumi.Bool(false),
/// 			PodCidr:            pulumi.String(invokeCidrsubnet.Result),
/// 			ServiceCidr:        pulumi.String(invokeCidrsubnet1.Result),
/// 			SlbInternetEnabled: pulumi.Bool(true),
/// 			Addons: cs.ManagedKubernetesAddonArray{
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:     pulumi.String("logtail-ds"),
/// 					Config:   pulumi.String(json0),
/// 					Disabled: pulumi.Bool(false),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// data source provides the information of available addons
/// 		_ = cs.GetKubernetesAddonsOutput(ctx, cs.GetKubernetesAddonsOutputArgs{
/// 			ClusterId: defaultManagedKubernetes.ID(),
/// 			NameRegex: pulumi.String("logtail-ds"),
/// 		}, nil)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		// Manage addon resource
/// 		_, err = cs.NewKubernetesAddon(ctx, "logtail-ds", &cs.KubernetesAddonArgs{
/// 			ClusterId: defaultManagedKubernetes.ID(),
/// 			Name:      pulumi.String("logtail-ds"),
/// 			Version:   pulumi.String("v1.6.0.0-aliyun"),
/// 			Config:    pulumi.String(json1),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesAddonArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesAddonsArgs;
/// import com.pulumi.alicloud.cs.KubernetesAddon;
/// import com.pulumi.alicloud.cs.KubernetesAddonArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .availableResourceCreation("VSwitch")
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
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .namePrefix(name)
///             .clusterSpec("ack.pro.small")
///             .workerVswitchIds(defaultSwitch.id())
///             .newNatGateway(false)
///             .podCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("10.0.0.0/8")
///                 .newbits(8)
///                 .netnum(36)
///                 .build()).result())
///             .serviceCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("172.16.0.0/16")
///                 .newbits(4)
///                 .netnum(7)
///                 .build()).result())
///             .slbInternetEnabled(true)
///             .addons(ManagedKubernetesAddonArgs.builder()
///                 .name("logtail-ds")
///                 .config(serializeJson(
///                     jsonObject(
///                         jsonProperty("IngressDashboardEnabled", "true")
///                     )))
///                 .disabled(false)
///                 .build())
///             .build());
///
///         // data source provides the information of available addons
///         final var defaultGetKubernetesAddons = CsFunctions.getKubernetesAddons(GetKubernetesAddonsArgs.builder()
///             .clusterId(defaultManagedKubernetes.id())
///             .nameRegex("logtail-ds")
///             .build());
///
///         // Manage addon resource
///         var logtail_ds = new KubernetesAddon("logtail-ds", KubernetesAddonArgs.builder()
///             .clusterId(defaultManagedKubernetes.id())
///             .name("logtail-ds")
///             .version("v1.6.0.0-aliyun")
///             .config(serializeJson(
///                 jsonObject(
///
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
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
///       zoneId: ${default.zones[0].id}
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       namePrefix: ${name}
///       clusterSpec: ack.pro.small
///       workerVswitchIds:
///         - ${defaultSwitch.id}
///       newNatGateway: false
///       podCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 10.0.0.0/8
///             newbits: 8
///             netnum: 36
///           return: result
///       serviceCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 172.16.0.0/16
///             newbits: 4
///             netnum: 7
///           return: result
///       slbInternetEnabled: true # By defining the addons attribute in cluster resource, it indicates that the addon will be installed when creating a cluster
///       addons:
///         - name: logtail-ds
///           config:
///             fn::toJSON:
///               IngressDashboardEnabled: 'true'
///           disabled: false
///   # Manage addon resource
///   logtail-ds:
///     type: alicloud:cs:KubernetesAddon
///     properties:
///       clusterId: ${defaultManagedKubernetes.id}
///       name: logtail-ds
///       version: v1.6.0.0-aliyun
///       config:
///         fn::toJSON: {}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   # data source provides the information of available addons
///   defaultGetKubernetesAddons:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesAddons
///       arguments:
///         clusterId: ${defaultManagedKubernetes.id}
///         nameRegex: logtail-ds
/// ```
///
/// **Installing of addon**
/// When a cluster is created, some system addons and those specified at the time of cluster creation will be installed, so when an addon resource is applied:
/// * If the addon already exists in the cluster and its version is the same as the specified version, it will be skipped and will not be reinstalled.
/// * If the addon already exists in the cluster and its version is different from the specified version, the addon will be upgraded.
/// * If the addon does not exist in the cluster, it will be installed.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cluster addon can be imported by cluster id and addon name. Then write the addon.tf file according to the result of `pulumi preview`.
///
/// ```sh
/// $ pulumi import alicloud:cs/kubernetesAddon:KubernetesAddon my_addon <cluster_id>:<addon_name>
/// ```
class KubernetesAddonCs extends pulumi.CustomResource {
  /// Is the addon ready for upgrade.
  late final pulumi.Output<bool> canUpgrade;
  /// Whether to clean up cloud resources when deleting. Currently only works for addon `ack-virtual-node` and you must specify it when uninstall addon `ack-virtual-node`. Valid values: `true`: clean up, `false`: do not clean up.
  late final pulumi.Output<bool?> cleanupCloudResources;
  /// The id of kubernetes cluster.
  late final pulumi.Output<String> clusterId;
  /// The customized configuration of addon. Your customized configuration will be merged to existed configuration stored in server. If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. You can checkout the customized configuration of the addon through datasource `alicloud.cs.getKubernetesAddonMetadata`, the returned format is the standard json schema. If return empty, it means that the addon does not support custom configuration yet. You can also checkout the current custom configuration through the data source `alicloud.cs.getKubernetesAddons`.
  late final pulumi.Output<String> config;
  /// The name of addon.
  late final pulumi.Output<String> name;
  /// The version which addon can be upgraded to.
  late final pulumi.Output<String> nextVersion;
  /// Is it a mandatory addon to be installed.
  late final pulumi.Output<bool> required;
  /// The current version of addon.
  late final pulumi.Output<String> version;

  /// Creates a new [KubernetesAddonCs].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesAddonCs]. {@macro pulumi_cs_kubernetes_addon_kubernetes_addon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesAddonCs(
    String name, {
    KubernetesAddonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetesAddon:KubernetesAddon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.canUpgrade = registerOutput<bool>('canUpgrade');
    this.cleanupCloudResources = registerOutput<bool?>('cleanupCloudResources');
    this.clusterId = registerOutput<String>('clusterId');
    this.config = registerOutput<String>('config');
    this.name = registerOutput<String>('name');
    this.nextVersion = registerOutput<String>('nextVersion');
    this.required = registerOutput<bool>('required');
    this.version = registerOutput<String>('version');
  }
}
