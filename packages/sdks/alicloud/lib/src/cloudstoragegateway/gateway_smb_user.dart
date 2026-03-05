import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_smb_user_args.dart';
import 'gateway_smb_user_state.dart';

/// Provides a Cloud Storage Gateway Gateway SMB User resource.
///
/// For information about Cloud Storage Gateway Gateway SMB User and how to use it, see [What is Gateway SMB User](https://www.alibabacloud.com/help/en/cloud-storage-gateway/latest/creategatewaysmbuser).
///
/// &gt; **NOTE:** Available since v1.142.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const defaultUuid = new random.index.Uuid("default", {});
/// const defaultStorageBundle = new alicloud.cloudstoragegateway.StorageBundle("default", {storageBundleName: std.replace({
///     text: defaultUuid.result,
///     search: "-",
///     replace: "",
/// }).then(invoke => std.substr({
///     input: `tf-example-${invoke.result}`,
///     offset: 0,
///     length: 16,
/// })).then(invoke => invoke.result)});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultGateway = new alicloud.cloudstoragegateway.Gateway("default", {
///     gatewayName: name,
///     description: name,
///     gatewayClass: "Standard",
///     type: "File",
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultSwitch.id,
///     releaseAfterExpiration: false,
///     publicNetworkBandwidth: 40,
///     storageBundleId: defaultStorageBundle.id,
///     location: "Cloud",
/// });
/// const defaultGatewaySmbUser = new alicloud.cloudstoragegateway.GatewaySmbUser("default", {
///     username: "example_username",
///     password: "password",
///     gatewayId: defaultGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default_uuid = random.index.Uuid("default")
/// default_storage_bundle = alicloud.cloudstoragegateway.StorageBundle("default", storage_bundle_name=std.substr(input=f"tf-example-{std.replace(text=default_uuid['result'],
///         search='-',
///         replace='').result}",
///     offset=0,
///     length=16).result)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_gateway = alicloud.cloudstoragegateway.Gateway("default",
///     gateway_name=name,
///     description=name,
///     gateway_class="Standard",
///     type="File",
///     payment_type="PayAsYouGo",
///     vswitch_id=default_switch.id,
///     release_after_expiration=False,
///     public_network_bandwidth=40,
///     storage_bundle_id=default_storage_bundle.id,
///     location="Cloud")
/// default_gateway_smb_user = alicloud.cloudstoragegateway.GatewaySmbUser("default",
///     username="example_username",
///     password="password",
///     gateway_id=default_gateway.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var defaultUuid = new Random.Index.Uuid("default");
///
///     var defaultStorageBundle = new AliCloud.CloudStorageGateway.StorageBundle("default", new()
///     {
///         StorageBundleName = Std.Replace.Invoke(new()
///         {
///             Text = defaultUuid.Result,
///             Search = "-",
///             Replace = "",
///         }).Apply(invoke => Std.Substr.Invoke(new()
///         {
///             Input = $"tf-example-{invoke.Result}",
///             Offset = 0,
///             Length = 16,
///         })).Apply(invoke => invoke.Result),
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultGateway = new AliCloud.CloudStorageGateway.Gateway("default", new()
///     {
///         GatewayName = name,
///         Description = name,
///         GatewayClass = "Standard",
///         Type = "File",
///         PaymentType = "PayAsYouGo",
///         VswitchId = defaultSwitch.Id,
///         ReleaseAfterExpiration = false,
///         PublicNetworkBandwidth = 40,
///         StorageBundleId = defaultStorageBundle.Id,
///         Location = "Cloud",
///     });
///
///     var defaultGatewaySmbUser = new AliCloud.CloudStorageGateway.GatewaySmbUser("default", new()
///     {
///         Username = "example_username",
///         Password = "password",
///         GatewayId = defaultGateway.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		defaultUuid, err := random.NewUuid(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeSubstr, err := std.Substr(ctx, &std.SubstrArgs{
/// 			Input: fmt.Sprintf("tf-example-%v", std.Replace(ctx, &std.ReplaceArgs{
/// 				Text:    defaultUuid.Result,
/// 				Search:  "-",
/// 				Replace: "",
/// 			}, nil).Result),
/// 			Offset: 0,
/// 			Length: 16,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStorageBundle, err := cloudstoragegateway.NewStorageBundle(ctx, "default", &cloudstoragegateway.StorageBundleArgs{
/// 			StorageBundleName: pulumi.String(invokeSubstr.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
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
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGateway, err := cloudstoragegateway.NewGateway(ctx, "default", &cloudstoragegateway.GatewayArgs{
/// 			GatewayName:            pulumi.String(name),
/// 			Description:            pulumi.String(name),
/// 			GatewayClass:           pulumi.String("Standard"),
/// 			Type:                   pulumi.String("File"),
/// 			PaymentType:            pulumi.String("PayAsYouGo"),
/// 			VswitchId:              defaultSwitch.ID(),
/// 			ReleaseAfterExpiration: pulumi.Bool(false),
/// 			PublicNetworkBandwidth: pulumi.Int(40),
/// 			StorageBundleId:        defaultStorageBundle.ID(),
/// 			Location:               pulumi.String("Cloud"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudstoragegateway.NewGatewaySmbUser(ctx, "default", &cloudstoragegateway.GatewaySmbUserArgs{
/// 			Username:  pulumi.String("example_username"),
/// 			Password:  pulumi.String("password"),
/// 			GatewayId: defaultGateway.ID(),
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
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundle;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundleArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.std.inputs.SubstrArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.Gateway;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewaySmbUser;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewaySmbUserArgs;
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
///         var defaultUuid = new Uuid("defaultUuid");
///
///         var defaultStorageBundle = new StorageBundle("defaultStorageBundle", StorageBundleArgs.builder()
///             .storageBundleName(StdFunctions.substr(SubstrArgs.builder()
///                 .input(String.format("tf-example-%s", StdFunctions.replace(ReplaceArgs.builder()
///                     .text(defaultUuid.result())
///                     .search("-")
///                     .replace("")
///                     .build()).result()))
///                 .offset(0)
///                 .length(16)
///                 .build()).result())
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .gatewayName(name)
///             .description(name)
///             .gatewayClass("Standard")
///             .type("File")
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultSwitch.id())
///             .releaseAfterExpiration(false)
///             .publicNetworkBandwidth(40)
///             .storageBundleId(defaultStorageBundle.id())
///             .location("Cloud")
///             .build());
///
///         var defaultGatewaySmbUser = new GatewaySmbUser("defaultGatewaySmbUser", GatewaySmbUserArgs.builder()
///             .username("example_username")
///             .password("password")
///             .gatewayId(defaultGateway.id())
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
///   defaultUuid:
///     type: random:Uuid
///     name: default
///   defaultStorageBundle:
///     type: alicloud:cloudstoragegateway:StorageBundle
///     name: default
///     properties:
///       storageBundleName:
///         fn::invoke:
///           function: std:substr
///           arguments:
///             input:
///               fn::join:
///                 - ""
///                 - - tf-example-
///                   - fn::invoke:
///                       function: std:replace
///                       arguments:
///                         text: ${defaultUuid.result}
///                         search: '-'
///                         replace: ""
///                       return: result
///             offset: 0
///             length: 16
///           return: result
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultGateway:
///     type: alicloud:cloudstoragegateway:Gateway
///     name: default
///     properties:
///       gatewayName: ${name}
///       description: ${name}
///       gatewayClass: Standard
///       type: File
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultSwitch.id}
///       releaseAfterExpiration: false
///       publicNetworkBandwidth: 40
///       storageBundleId: ${defaultStorageBundle.id}
///       location: Cloud
///   defaultGatewaySmbUser:
///     type: alicloud:cloudstoragegateway:GatewaySmbUser
///     name: default
///     properties:
///       username: example_username
///       password: password
///       gatewayId: ${defaultGateway.id}
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
/// Cloud Storage Gateway Gateway SMB User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudstoragegateway/gatewaySmbUser:GatewaySmbUser example <gateway_id>:<username>
/// ```
class GatewaySmbUser extends pulumi.CustomResource {
  /// The Gateway ID of the Gateway SMB User.
  late final pulumi.Output<String> gatewayId;
  /// The password of the Gateway SMB User.
  late final pulumi.Output<String> password;
  /// The username of the Gateway SMB User.
  late final pulumi.Output<String> username;

  /// Creates a new [GatewaySmbUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewaySmbUser]. {@macro pulumi_cloudstoragegateway_gateway_smb_user_gateway_smb_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewaySmbUser(
    String name, {
    GatewaySmbUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudstoragegateway/gatewaySmbUser:GatewaySmbUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    gatewayId = registerOutput<String>('gatewayId');
    password = registerOutput<String>('password');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [GatewaySmbUser] resource's state with the given [name] and [id].
  static GatewaySmbUser get(
    String name,
    pulumi.Input<String> id, {
    GatewaySmbUserState? state,
  }) {
    return GatewaySmbUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewaySmbUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudstoragegateway/gatewaySmbUser:GatewaySmbUser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    gatewayId = registerOutput<String>('gatewayId');
    password = registerOutput<String>('password');
    username = registerOutput<String>('username');
  }
}
