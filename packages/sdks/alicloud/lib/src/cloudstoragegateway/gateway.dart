import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'gateway_state.dart';

/// Provides a Cloud Storage Gateway Gateway resource.
///
/// For information about Cloud Storage Gateway Gateway and how to use it, see [What is Gateway](https://www.alibabacloud.com/help/en/csg/developer-reference/api-mnz46x).
///
/// &gt; **NOTE:** Available since v1.132.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultStorageBundle = new alicloud.cloudstoragegateway.StorageBundle("default", {storageBundleName: `${name}-${defaultInteger.result}`});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: `${name}-${defaultInteger.result}`,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: `${name}-${defaultInteger.result}`,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultGateway = new alicloud.cloudstoragegateway.Gateway("default", {
///     storageBundleId: defaultStorageBundle.id,
///     type: "File",
///     location: "Cloud",
///     gatewayName: name,
///     gatewayClass: "Standard",
///     vswitchId: defaultSwitch.id,
///     publicNetworkBandwidth: 50,
///     paymentType: "PayAsYouGo",
///     description: name,
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
///     name = "terraform-example"
/// default = alicloud.get_zones()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_storage_bundle = alicloud.cloudstoragegateway.StorageBundle("default", storage_bundle_name=f"{name}-{default_integer['result']}")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=f"{name}-{default_integer['result']}",
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=f"{name}-{default_integer['result']}",
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.zones[0].id)
/// default_gateway = alicloud.cloudstoragegateway.Gateway("default",
///     storage_bundle_id=default_storage_bundle.id,
///     type="File",
///     location="Cloud",
///     gateway_name=name,
///     gateway_class="Standard",
///     vswitch_id=default_switch.id,
///     public_network_bandwidth=50,
///     payment_type="PayAsYouGo",
///     description=name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultStorageBundle = new AliCloud.CloudStorageGateway.StorageBundle("default", new()
///     {
///         StorageBundleName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = $"{name}-{defaultInteger.Result}",
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = $"{name}-{defaultInteger.Result}",
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.192.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultGateway = new AliCloud.CloudStorageGateway.Gateway("default", new()
///     {
///         StorageBundleId = defaultStorageBundle.Id,
///         Type = "File",
///         Location = "Cloud",
///         GatewayName = name,
///         GatewayClass = "Standard",
///         VswitchId = defaultSwitch.Id,
///         PublicNetworkBandwidth = 50,
///         PaymentType = "PayAsYouGo",
///         Description = name,
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStorageBundle, err := cloudstoragegateway.NewStorageBundle(ctx, "default", &cloudstoragegateway.StorageBundleArgs{
/// 			StorageBundleName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("192.168.192.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudstoragegateway.NewGateway(ctx, "default", &cloudstoragegateway.GatewayArgs{
/// 			StorageBundleId:        defaultStorageBundle.ID(),
/// 			Type:                   pulumi.String("File"),
/// 			Location:               pulumi.String("Cloud"),
/// 			GatewayName:            pulumi.String(name),
/// 			GatewayClass:           pulumi.String("Standard"),
/// 			VswitchId:              defaultSwitch.ID(),
/// 			PublicNetworkBandwidth: pulumi.Int(50),
/// 			PaymentType:            pulumi.String("PayAsYouGo"),
/// 			Description:            pulumi.String(name),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundle;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundleArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.Gateway;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayArgs;
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
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultStorageBundle = new StorageBundle("defaultStorageBundle", StorageBundleArgs.builder()
///             .storageBundleName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.192.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .storageBundleId(defaultStorageBundle.id())
///             .type("File")
///             .location("Cloud")
///             .gatewayName(name)
///             .gatewayClass("Standard")
///             .vswitchId(defaultSwitch.id())
///             .publicNetworkBandwidth(50)
///             .paymentType("PayAsYouGo")
///             .description(name)
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultStorageBundle:
///     type: alicloud:cloudstoragegateway:StorageBundle
///     name: default
///     properties:
///       storageBundleName: ${name}-${defaultInteger.result}
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}-${defaultInteger.result}
///       cidrBlock: 192.168.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}-${defaultInteger.result}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 192.168.192.0/24
///       zoneId: ${default.zones[0].id}
///   defaultGateway:
///     type: alicloud:cloudstoragegateway:Gateway
///     name: default
///     properties:
///       storageBundleId: ${defaultStorageBundle.id}
///       type: File
///       location: Cloud
///       gatewayName: ${name}
///       gatewayClass: Standard
///       vswitchId: ${defaultSwitch.id}
///       publicNetworkBandwidth: 50
///       paymentType: PayAsYouGo
///       description: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Storage Gateway Gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudstoragegateway/gateway:Gateway example <id>
/// ```
class Gateway extends pulumi.CustomResource {
  /// The description of the gateway.
  late final pulumi.Output<String?> description;

  /// The specification of the gateway. Valid values: `Basic`, `Standard`, `Enhanced`, `Advanced`. **NOTE:** If `location` is set to `Cloud`, `gateway_class` is required. Otherwise, `gateway_class` will be ignored. If `payment_type` is set to `Subscription`, `gateway_class` cannot be modified.
  late final pulumi.Output<String?> gatewayClass;

  /// The name of the gateway. The name must be `1` to `60` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String> gatewayName;

  /// The location of the gateway. Valid values: `Cloud`, `On_Premise`.
  late final pulumi.Output<String> location;
  late final pulumi.Output<String?> paymentType;

  /// The public bandwidth of the gateway. Default value: `5`. Valid values: `5` to `200`. **NOTE:** `public_network_bandwidth` is only valid when `location` is `Cloud`. If `payment_type` is set to `Subscription`, `public_network_bandwidth` cannot be modified.
  late final pulumi.Output<int> publicNetworkBandwidth;

  /// The detailed reason why you want to delete the gateway.
  late final pulumi.Output<String?> reasonDetail;

  /// The type of the reason why you want to delete the gateway.
  late final pulumi.Output<String?> reasonType;

  /// Specifies whether to release the gateway after the subscription expires. Valid values:
  late final pulumi.Output<bool?> releaseAfterExpiration;

  /// The status of the Gateway.
  late final pulumi.Output<String> status;

  /// The ID of the gateway cluster.
  late final pulumi.Output<String> storageBundleId;

  /// The type of the gateway. Valid values: `File`, `Iscsi`.
  late final pulumi.Output<String> type;

  /// The ID of the VSwitch. **NOTE:** If `location` is set to `Cloud`, `vswitch_id` is required. Otherwise, `vswitch_id` will be ignored.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_cloudstoragegateway_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudstoragegateway/gateway:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    gatewayClass = registerOutput<String?>('gatewayClass');
    gatewayName = registerOutput<String>('gatewayName');
    location = registerOutput<String>('location');
    paymentType = registerOutput<String?>('paymentType');
    publicNetworkBandwidth = registerOutput<int>('publicNetworkBandwidth');
    reasonDetail = registerOutput<String?>('reasonDetail');
    reasonType = registerOutput<String?>('reasonType');
    releaseAfterExpiration = registerOutput<bool?>('releaseAfterExpiration');
    status = registerOutput<String>('status');
    storageBundleId = registerOutput<String>('storageBundleId');
    type = registerOutput<String>('type');
    vswitchId = registerOutput<String?>('vswitchId');
  }

  /// Gets an existing [Gateway] resource's state with the given [name] and [id].
  static Gateway get(
    String name,
    pulumi.Input<String> id, {
    GatewayState? state,
  }) {
    return Gateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Gateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudstoragegateway/gateway:Gateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    gatewayClass = registerOutput<String?>('gatewayClass');
    gatewayName = registerOutput<String>('gatewayName');
    location = registerOutput<String>('location');
    paymentType = registerOutput<String?>('paymentType');
    publicNetworkBandwidth = registerOutput<int>('publicNetworkBandwidth');
    reasonDetail = registerOutput<String?>('reasonDetail');
    reasonType = registerOutput<String?>('reasonType');
    releaseAfterExpiration = registerOutput<bool?>('releaseAfterExpiration');
    status = registerOutput<String>('status');
    storageBundleId = registerOutput<String>('storageBundleId');
    type = registerOutput<String>('type');
    vswitchId = registerOutput<String?>('vswitchId');
  }
}
