import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_linked_vpc_args.dart';
import 'vpc_endpoint_linked_vpc_state.dart';

/// Provides a CR Vpc Endpoint Linked Vpc resource.
///
/// For information about CR Vpc Endpoint Linked Vpc and how to use it, see [What is Vpc Endpoint Linked Vpc](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createinstancevpcendpointlinkedvpc).
///
/// &gt; **NOTE:** Available since v1.199.0.
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
/// const defaultInteger = new random.index.Integer("default", {
///     min: 100000,
///     max: 999999,
/// });
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: `${name}-${defaultInteger.result}`,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: `${name}-${defaultInteger.result}`,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultRegistryEnterpriseInstance = new alicloud.cr.RegistryEnterpriseInstance("default", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 0,
///     renewalStatus: "ManualRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-${defaultInteger.result}`,
/// });
/// const defaultVpcEndpointLinkedVpc = new alicloud.cr.VpcEndpointLinkedVpc("default", {
///     instanceId: defaultRegistryEnterpriseInstance.id,
///     vpcId: defaultNetwork.id,
///     vswitchId: defaultSwitch.id,
///     moduleName: "Registry",
///     enableCreateDnsRecordInPvzt: true,
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
/// default_integer = random.index.Integer("default",
///     min=100000,
///     max=999999)
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=f"{name}-{default_integer['result']}",
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=f"{name}-{default_integer['result']}",
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_registry_enterprise_instance = alicloud.cr.RegistryEnterpriseInstance("default",
///     payment_type="Subscription",
///     period=1,
///     renew_period=0,
///     renewal_status="ManualRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-{default_integer['result']}")
/// default_vpc_endpoint_linked_vpc = alicloud.cr.VpcEndpointLinkedVpc("default",
///     instance_id=default_registry_enterprise_instance.id,
///     vpc_id=default_network.id,
///     vswitch_id=default_switch.id,
///     module_name="Registry",
///     enable_create_dns_record_in_pvzt=True)
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 100000,
///         Max = 999999,
///     });
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = $"{name}-{defaultInteger.Result}",
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = $"{name}-{defaultInteger.Result}",
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultRegistryEnterpriseInstance = new AliCloud.CR.RegistryEnterpriseInstance("default", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 0,
///         RenewalStatus = "ManualRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultVpcEndpointLinkedVpc = new AliCloud.CR.VpcEndpointLinkedVpc("default", new()
///     {
///         InstanceId = defaultRegistryEnterpriseInstance.Id,
///         VpcId = defaultNetwork.Id,
///         VswitchId = defaultSwitch.Id,
///         ModuleName = "Registry",
///         EnableCreateDnsRecordInPvzt = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 100000,
/// 			Max: 999999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegistryEnterpriseInstance, err := cr.NewRegistryEnterpriseInstance(ctx, "default", &cr.RegistryEnterpriseInstanceArgs{
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(0),
/// 			RenewalStatus: pulumi.String("ManualRenewal"),
/// 			InstanceType:  pulumi.String("Advanced"),
/// 			InstanceName:  pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewVpcEndpointLinkedVpc(ctx, "default", &cr.VpcEndpointLinkedVpcArgs{
/// 			InstanceId:                  defaultRegistryEnterpriseInstance.ID(),
/// 			VpcId:                       defaultNetwork.ID(),
/// 			VswitchId:                   defaultSwitch.ID(),
/// 			ModuleName:                  pulumi.String("Registry"),
/// 			EnableCreateDnsRecordInPvzt: pulumi.Bool(true),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
/// import com.pulumi.alicloud.cr.VpcEndpointLinkedVpc;
/// import com.pulumi.alicloud.cr.VpcEndpointLinkedVpcArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(100000)
///             .max(999999)
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultRegistryEnterpriseInstance = new RegistryEnterpriseInstance("defaultRegistryEnterpriseInstance", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(0)
///             .renewalStatus("ManualRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultVpcEndpointLinkedVpc = new VpcEndpointLinkedVpc("defaultVpcEndpointLinkedVpc", VpcEndpointLinkedVpcArgs.builder()
///             .instanceId(defaultRegistryEnterpriseInstance.id())
///             .vpcId(defaultNetwork.id())
///             .vswitchId(defaultSwitch.id())
///             .moduleName("Registry")
///             .enableCreateDnsRecordInPvzt(true)
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
///       min: 100000
///       max: 999999
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}-${defaultInteger.result}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}-${defaultInteger.result}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultRegistryEnterpriseInstance:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     name: default
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 0
///       renewalStatus: ManualRenewal
///       instanceType: Advanced
///       instanceName: ${name}-${defaultInteger.result}
///   defaultVpcEndpointLinkedVpc:
///     type: alicloud:cr:VpcEndpointLinkedVpc
///     name: default
///     properties:
///       instanceId: ${defaultRegistryEnterpriseInstance.id}
///       vpcId: ${defaultNetwork.id}
///       vswitchId: ${defaultSwitch.id}
///       moduleName: Registry
///       enableCreateDnsRecordInPvzt: true
/// variables:
///   default:
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
/// CR Vpc Endpoint Linked Vpc can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/vpcEndpointLinkedVpc:VpcEndpointLinkedVpc example <instance_id>:<vpc_id>:<vswitch_id>:<module_name>
/// ```
class VpcEndpointLinkedVpc extends pulumi.CustomResource {
  /// Specifies whether to automatically create an Alibaba Cloud DNS PrivateZone record. Valid Values:
  late final pulumi.Output<bool?> enableCreateDnsRecordInPvzt;

  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// The name of the module that you want to access. Valid Values:
  /// - `Registry`: the image repository.
  /// - `Chart`: a Helm chart.
  late final pulumi.Output<String> moduleName;

  /// The status of the Vpc Endpoint Linked Vpc.
  late final pulumi.Output<String> status;

  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;

  /// The ID of the vSwitch.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [VpcEndpointLinkedVpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointLinkedVpc]. {@macro pulumi_cr_vpc_endpoint_linked_vpc_vpc_endpoint_linked_vpc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointLinkedVpc(
    String name, {
    VpcEndpointLinkedVpcArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cr/vpcEndpointLinkedVpc:VpcEndpointLinkedVpc',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enableCreateDnsRecordInPvzt = registerOutput<bool?>(
      'enableCreateDnsRecordInPvzt',
    );
    instanceId = registerOutput<String>('instanceId');
    moduleName = registerOutput<String>('moduleName');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [VpcEndpointLinkedVpc] resource's state with the given [name] and [id].
  static VpcEndpointLinkedVpc get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointLinkedVpcState? state,
  }) {
    return VpcEndpointLinkedVpc._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpointLinkedVpc._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cr/vpcEndpointLinkedVpc:VpcEndpointLinkedVpc',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enableCreateDnsRecordInPvzt = registerOutput<bool?>(
      'enableCreateDnsRecordInPvzt',
    );
    instanceId = registerOutput<String>('instanceId');
    moduleName = registerOutput<String>('moduleName');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
