import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_intranet_args.dart';
import 'load_balancer_intranet_intranet.dart';

/// Provides an Alicloud Serverless App Engine (SAE) Application Load Balancer Attachment resource.
///
/// For information about Serverless App Engine (SAE) Load Balancer Intranet Attachment and how to use it, see [alicloud.sae.LoadBalancerIntranet](https://www.alibabacloud.com/help/en/sae/latest/bindslb).
///
/// > **NOTE:** Available since v1.165.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultGetZones = alicloud.getZones({
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
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultNamespace = new alicloud.sae.Namespace("default", {
///     namespaceId: _default.then(_default => `${_default.regions?.[0]?.id}:example${defaultInteger.result}`),
///     namespaceName: name,
///     namespaceDescription: name,
///     enableMicroRegistration: false,
/// });
/// const defaultApplication = new alicloud.sae.Application("default", {
///     appDescription: name,
///     appName: `${name}-${defaultInteger.result}`,
///     namespaceId: defaultNamespace.id,
///     imageUrl: "registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5",
///     packageType: "Image",
///     jdk: "Open JDK 8",
///     securityGroupId: defaultSecurityGroup.id,
///     vpcId: defaultNetwork.id,
///     vswitchId: defaultSwitch.id,
///     timezone: "Asia/Beijing",
///     replicas: 5,
///     cpu: 500,
///     memory: 2048,
///     microRegistration: "0",
/// });
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     loadBalancerName: name,
///     vswitchId: defaultSwitch.id,
///     loadBalancerSpec: "slb.s2.small",
///     addressType: "intranet",
/// });
/// const defaultLoadBalancerIntranet = new alicloud.sae.LoadBalancerIntranet("default", {
///     appId: defaultApplication.id,
///     intranetSlbId: defaultApplicationLoadBalancer.id,
///     intranets: [{
///         protocol: "TCP",
///         port: 80,
///         targetPort: 8080,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_namespace = alicloud.sae.Namespace("default",
///     namespace_id=f"{default.regions[0].id}:example{default_integer['result']}",
///     namespace_name=name,
///     namespace_description=name,
///     enable_micro_registration=False)
/// default_application = alicloud.sae.Application("default",
///     app_description=name,
///     app_name=f"{name}-{default_integer['result']}",
///     namespace_id=default_namespace.id,
///     image_url="registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5",
///     package_type="Image",
///     jdk="Open JDK 8",
///     security_group_id=default_security_group.id,
///     vpc_id=default_network.id,
///     vswitch_id=default_switch.id,
///     timezone="Asia/Beijing",
///     replicas=5,
///     cpu=500,
///     memory=2048,
///     micro_registration="0")
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     load_balancer_name=name,
///     vswitch_id=default_switch.id,
///     load_balancer_spec="slb.s2.small",
///     address_type="intranet")
/// default_load_balancer_intranet = alicloud.sae.LoadBalancerIntranet("default",
///     app_id=default_application.id,
///     intranet_slb_id=default_application_load_balancer.id,
///     intranets=[{
///         "protocol": "TCP",
///         "port": 80,
///         "target_port": 8080,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
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
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultNamespace = new AliCloud.Sae.Namespace("default", new()
///     {
///         NamespaceId = @default.Apply(@default => $"{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:example{defaultInteger.Result}"),
///         NamespaceName = name,
///         NamespaceDescription = name,
///         EnableMicroRegistration = false,
///     });
///
///     var defaultApplication = new AliCloud.Sae.Application("default", new()
///     {
///         AppDescription = name,
///         AppName = $"{name}-{defaultInteger.Result}",
///         NamespaceId = defaultNamespace.Id,
///         ImageUrl = "registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5",
///         PackageType = "Image",
///         Jdk = "Open JDK 8",
///         SecurityGroupId = defaultSecurityGroup.Id,
///         VpcId = defaultNetwork.Id,
///         VswitchId = defaultSwitch.Id,
///         Timezone = "Asia/Beijing",
///         Replicas = 5,
///         Cpu = 500,
///         Memory = 2048,
///         MicroRegistration = "0",
///     });
///
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         VswitchId = defaultSwitch.Id,
///         LoadBalancerSpec = "slb.s2.small",
///         AddressType = "intranet",
///     });
///
///     var defaultLoadBalancerIntranet = new AliCloud.Sae.LoadBalancerIntranet("default", new()
///     {
///         AppId = defaultApplication.Id,
///         IntranetSlbId = defaultApplicationLoadBalancer.Id,
///         Intranets = new[]
///         {
///             new AliCloud.Sae.Inputs.LoadBalancerIntranetIntranetArgs
///             {
///                 Protocol = "TCP",
///                 Port = 80,
///                 TargetPort = 8080,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
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
/// 		defaultNamespace, err := sae.NewNamespace(ctx, "default", &sae.NamespaceArgs{
/// 			NamespaceId:             pulumi.Sprintf("%v:example%v", _default.Regions[0].Id, defaultInteger.Result),
/// 			NamespaceName:           pulumi.String(name),
/// 			NamespaceDescription:    pulumi.String(name),
/// 			EnableMicroRegistration: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplication, err := sae.NewApplication(ctx, "default", &sae.ApplicationArgs{
/// 			AppDescription:    pulumi.String(name),
/// 			AppName:           pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			NamespaceId:       defaultNamespace.ID(),
/// 			ImageUrl:          pulumi.String("registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5"),
/// 			PackageType:       pulumi.String("Image"),
/// 			Jdk:               pulumi.String("Open JDK 8"),
/// 			SecurityGroupId:   defaultSecurityGroup.ID(),
/// 			VpcId:             defaultNetwork.ID(),
/// 			VswitchId:         defaultSwitch.ID(),
/// 			Timezone:          pulumi.String("Asia/Beijing"),
/// 			Replicas:          pulumi.Int(5),
/// 			Cpu:               pulumi.Int(500),
/// 			Memory:            pulumi.Int(2048),
/// 			MicroRegistration: pulumi.String("0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			VswitchId:        defaultSwitch.ID(),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 			AddressType:      pulumi.String("intranet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sae.NewLoadBalancerIntranet(ctx, "default", &sae.LoadBalancerIntranetArgs{
/// 			AppId:         defaultApplication.ID(),
/// 			IntranetSlbId: defaultApplicationLoadBalancer.ID(),
/// 			Intranets: sae.LoadBalancerIntranetIntranetArray{
/// 				&sae.LoadBalancerIntranetIntranetArgs{
/// 					Protocol:   pulumi.String("TCP"),
/// 					Port:       pulumi.Int(80),
/// 					TargetPort: pulumi.Int(8080),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
/// import com.pulumi.alicloud.sae.Application;
/// import com.pulumi.alicloud.sae.ApplicationArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.sae.LoadBalancerIntranet;
/// import com.pulumi.alicloud.sae.LoadBalancerIntranetArgs;
/// import com.pulumi.alicloud.sae.inputs.LoadBalancerIntranetIntranetArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
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
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespaceId(String.format("%s:example%s", default_.regions()[0].id(),defaultInteger.result()))
///             .namespaceName(name)
///             .namespaceDescription(name)
///             .enableMicroRegistration(false)
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .appDescription(name)
///             .appName(String.format("%s-%s", name,defaultInteger.result()))
///             .namespaceId(defaultNamespace.id())
///             .imageUrl("registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5")
///             .packageType("Image")
///             .jdk("Open JDK 8")
///             .securityGroupId(defaultSecurityGroup.id())
///             .vpcId(defaultNetwork.id())
///             .vswitchId(defaultSwitch.id())
///             .timezone("Asia/Beijing")
///             .replicas(5)
///             .cpu(500)
///             .memory(2048)
///             .microRegistration("0")
///             .build());
///
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .vswitchId(defaultSwitch.id())
///             .loadBalancerSpec("slb.s2.small")
///             .addressType("intranet")
///             .build());
///
///         var defaultLoadBalancerIntranet = new LoadBalancerIntranet("defaultLoadBalancerIntranet", LoadBalancerIntranetArgs.builder()
///             .appId(defaultApplication.id())
///             .intranetSlbId(defaultApplicationLoadBalancer.id())
///             .intranets(LoadBalancerIntranetIntranetArgs.builder()
///                 .protocol("TCP")
///                 .port(80)
///                 .targetPort(8080)
///                 .build())
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
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
///   defaultNamespace:
///     type: alicloud:sae:Namespace
///     name: default
///     properties:
///       namespaceId: ${default.regions[0].id}:example${defaultInteger.result}
///       namespaceName: ${name}
///       namespaceDescription: ${name}
///       enableMicroRegistration: false
///   defaultApplication:
///     type: alicloud:sae:Application
///     name: default
///     properties:
///       appDescription: ${name}
///       appName: ${name}-${defaultInteger.result}
///       namespaceId: ${defaultNamespace.id}
///       imageUrl: registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5
///       packageType: Image
///       jdk: Open JDK 8
///       securityGroupId: ${defaultSecurityGroup.id}
///       vpcId: ${defaultNetwork.id}
///       vswitchId: ${defaultSwitch.id}
///       timezone: Asia/Beijing
///       replicas: '5'
///       cpu: '500'
///       memory: '2048'
///       microRegistration: '0'
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       loadBalancerSpec: slb.s2.small
///       addressType: intranet
///   defaultLoadBalancerIntranet:
///     type: alicloud:sae:LoadBalancerIntranet
///     name: default
///     properties:
///       appId: ${defaultApplication.id}
///       intranetSlbId: ${defaultApplicationLoadBalancer.id}
///       intranets:
///         - protocol: TCP
///           port: 80
///           targetPort: 8080
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sae/loadBalancerIntranet:LoadBalancerIntranet example <id>
/// ```
class LoadBalancerIntranet extends pulumi.CustomResource {
  /// The target application ID that needs to be bound to the SLB.
  late final pulumi.Output<String> appId;
  /// Use designated private network SLBs that have been purchased to support non-shared instances.
  late final pulumi.Output<String> intranetIp;
  /// The intranet SLB ID.
  late final pulumi.Output<String?> intranetSlbId;
  /// The bound private network SLB. See `intranet` below.
  late final pulumi.Output<List<LoadBalancerIntranetIntranet>> intranets;

  /// Creates a new [LoadBalancerIntranet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerIntranet]. {@macro pulumi_sae_load_balancer_intranet_load_balancer_intranet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerIntranet(
    String name, {
    LoadBalancerIntranetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/loadBalancerIntranet:LoadBalancerIntranet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.intranetIp = registerOutput<String>('intranetIp');
    this.intranetSlbId = registerOutput<String?>('intranetSlbId');
    this.intranets = registerOutput<List<LoadBalancerIntranetIntranet>>('intranets');
  }
}
