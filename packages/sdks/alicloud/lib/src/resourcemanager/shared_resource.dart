import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_resource_args.dart';
import 'shared_resource_state.dart';

/// Provides a Resource Manager Shared Resource resource.
///
///
///
/// For information about Resource Manager Shared Resource and how to use it, see [What is Shared Resource](https://www.alibabacloud.com/help/en/resource-management/latest/api-resourcesharing-2020-01-10-associateresourceshare).
///
/// &gt; **NOTE:** Available since v1.111.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: `${name}-${defaultInteger.result}`,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "192.168.0.0/16",
///     vpcId: defaultNetwork.id,
///     vswitchName: `${name}-${defaultInteger.result}`,
/// });
/// const defaultResourceShare = new alicloud.resourcemanager.ResourceShare("default", {resourceShareName: `${name}-${defaultInteger.result}`});
/// const defaultSharedResource = new alicloud.resourcemanager.SharedResource("default", {
///     resourceShareId: defaultResourceShare.id,
///     resourceId: defaultSwitch.id,
///     resourceType: "VSwitch",
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=f"{name}-{default_integer['result']}",
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     zone_id=default.zones[0].id,
///     cidr_block="192.168.0.0/16",
///     vpc_id=default_network.id,
///     vswitch_name=f"{name}-{default_integer['result']}")
/// default_resource_share = alicloud.resourcemanager.ResourceShare("default", resource_share_name=f"{name}-{default_integer['result']}")
/// default_shared_resource = alicloud.resourcemanager.SharedResource("default",
///     resource_share_id=default_resource_share.id,
///     resource_id=default_switch.id,
///     resource_type="VSwitch")
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "192.168.0.0/16",
///         VpcId = defaultNetwork.Id,
///         VswitchName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultResourceShare = new AliCloud.ResourceManager.ResourceShare("default", new()
///     {
///         ResourceShareName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultSharedResource = new AliCloud.ResourceManager.SharedResource("default", new()
///     {
///         ResourceShareId = defaultResourceShare.Id,
///         ResourceId = defaultSwitch.Id,
///         ResourceType = "VSwitch",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
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
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock:   pulumi.String("192.168.0.0/16"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultResourceShare, err := resourcemanager.NewResourceShare(ctx, "default", &resourcemanager.ResourceShareArgs{
/// 			ResourceShareName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewSharedResource(ctx, "default", &resourcemanager.SharedResourceArgs{
/// 			ResourceShareId: defaultResourceShare.ID(),
/// 			ResourceId:      defaultSwitch.ID(),
/// 			ResourceType:    pulumi.String("VSwitch"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourceShare;
/// import com.pulumi.alicloud.resourcemanager.ResourceShareArgs;
/// import com.pulumi.alicloud.resourcemanager.SharedResource;
/// import com.pulumi.alicloud.resourcemanager.SharedResourceArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("192.168.0.0/16")
///             .vpcId(defaultNetwork.id())
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultResourceShare = new ResourceShare("defaultResourceShare", ResourceShareArgs.builder()
///             .resourceShareName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultSharedResource = new SharedResource("defaultSharedResource", SharedResourceArgs.builder()
///             .resourceShareId(defaultResourceShare.id())
///             .resourceId(defaultSwitch.id())
///             .resourceType("VSwitch")
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
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 192.168.0.0/16
///       vpcId: ${defaultNetwork.id}
///       vswitchName: ${name}-${defaultInteger.result}
///   defaultResourceShare:
///     type: alicloud:resourcemanager:ResourceShare
///     name: default
///     properties:
///       resourceShareName: ${name}-${defaultInteger.result}
///   defaultSharedResource:
///     type: alicloud:resourcemanager:SharedResource
///     name: default
///     properties:
///       resourceShareId: ${defaultResourceShare.id}
///       resourceId: ${defaultSwitch.id}
///       resourceType: VSwitch
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Shared Resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/sharedResource:SharedResource example <resource_share_id>:<resource_id>:<resource_type>
/// ```
class SharedResource extends pulumi.CustomResource {
  /// The time when the shared resource was associated with the resource share.
  late final pulumi.Output<String> createTime;

  /// The name of a permission. If you do not configure this parameter, the system automatically associates the default permission for the specified resource type with the resource share.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> permissionName;

  /// Associated resource ARN.
  ///
  /// &gt; **NOTE:**  This parameter is not available when the association type 'AssociationType' is the resource consumer 'Target'.
  late final pulumi.Output<String> resourceArn;

  /// The ID of the shared resource.
  late final pulumi.Output<String> resourceId;

  /// The ID of the resource share.
  late final pulumi.Output<String> resourceShareId;

  /// The type of the shared resource.
  late final pulumi.Output<String> resourceType;

  /// The association status.
  late final pulumi.Output<String> status;

  /// Creates a new [SharedResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedResource]. {@macro pulumi_resourcemanager_shared_resource_shared_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedResource(
    String name, {
    SharedResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/sharedResource:SharedResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    permissionName = registerOutput<String?>('permissionName');
    resourceArn = registerOutput<String>('resourceArn');
    resourceId = registerOutput<String>('resourceId');
    resourceShareId = registerOutput<String>('resourceShareId');
    resourceType = registerOutput<String>('resourceType');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [SharedResource] resource's state with the given [name] and [id].
  static SharedResource get(
    String name,
    pulumi.Input<String> id, {
    SharedResourceState? state,
  }) {
    return SharedResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/sharedResource:SharedResource',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    permissionName = registerOutput<String?>('permissionName');
    resourceArn = registerOutput<String>('resourceArn');
    resourceId = registerOutput<String>('resourceId');
    resourceShareId = registerOutput<String>('resourceShareId');
    resourceType = registerOutput<String>('resourceType');
    status = registerOutput<String>('status');
  }
}
