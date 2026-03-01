import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_permission_args.dart';
import 'user_permission_permission.dart';
import 'user_permission_state.dart';

/// Provides a Service Mesh UserPermission resource.
///
/// For information about Service Mesh User Permission and how to use it, see [What is User Permission](https://www.alibabacloud.com/help/en/alibaba-cloud-service-mesh/latest/api-servicemesh-2020-01-11-grantuserpermissions).
///
/// > **NOTE:** Available since v1.174.0.
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
/// const name = config.get("name") || "tfexample";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.servicemesh.getVersions({
///     edition: "Default",
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, defaultGetZones]).then(([defaultGetNetworks, defaultGetZones]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: defaultGetZones.zones?.[0]?.id,
/// }));
/// const defaultUser = new alicloud.ram.User("default", {name: name});
/// const default1 = new alicloud.servicemesh.ServiceMesh("default1", {
///     serviceMeshName: `${name}-${defaultInteger.result}`,
///     edition: "Default",
///     clusterSpec: "standard",
///     version: _default.then(_default => _default.versions?.[0]?.version),
///     network: {
///         vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///         vswitcheLists: [defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0])],
///     },
///     loadBalancer: {
///         pilotPublicEip: false,
///         apiServerPublicEip: false,
///     },
/// });
/// const defaultUserPermission = new alicloud.servicemesh.UserPermission("default", {
///     subAccountUserId: defaultUser.id,
///     permissions: [{
///         roleName: "istio-ops",
///         serviceMeshId: default1.id,
///         roleType: "custom",
///         isCustom: true,
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
///     name = "tfexample"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.servicemesh.get_versions(edition="Default")
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default_get_zones.zones[0].id)
/// default_user = alicloud.ram.User("default", name=name)
/// default1 = alicloud.servicemesh.ServiceMesh("default1",
///     service_mesh_name=f"{name}-{default_integer['result']}",
///     edition="Default",
///     cluster_spec="standard",
///     version=default.versions[0].version,
///     network={
///         "vpc_id": default_get_networks.ids[0],
///         "vswitche_lists": [default_get_switches.ids[0]],
///     },
///     load_balancer={
///         "pilot_public_eip": False,
///         "api_server_public_eip": False,
///     })
/// default_user_permission = alicloud.servicemesh.UserPermission("default",
///     sub_account_user_id=default_user.id,
///     permissions=[{
///         "role_name": "istio-ops",
///         "service_mesh_id": default1.id,
///         "role_type": "custom",
///         "is_custom": True,
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
///     var name = config.Get("name") ?? "tfexample";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.ServiceMesh.GetVersions.Invoke(new()
///     {
///         Edition = "Default",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultUser = new AliCloud.Ram.User("default", new()
///     {
///         Name = name,
///     });
///
///     var default1 = new AliCloud.ServiceMesh.ServiceMesh("default1", new()
///     {
///         ServiceMeshName = $"{name}-{defaultInteger.Result}",
///         Edition = "Default",
///         ClusterSpec = "standard",
///         Version = @default.Apply(@default => @default.Apply(getVersionsResult => getVersionsResult.Versions[0]?.Version)),
///         Network = new AliCloud.ServiceMesh.Inputs.ServiceMeshNetworkArgs
///         {
///             VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///             VswitcheLists = new[]
///             {
///                 defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///             },
///         },
///         LoadBalancer = new AliCloud.ServiceMesh.Inputs.ServiceMeshLoadBalancerArgs
///         {
///             PilotPublicEip = false,
///             ApiServerPublicEip = false,
///         },
///     });
///
///     var defaultUserPermission = new AliCloud.ServiceMesh.UserPermission("default", new()
///     {
///         SubAccountUserId = defaultUser.Id,
///         Permissions = new[]
///         {
///             new AliCloud.ServiceMesh.Inputs.UserPermissionPermissionArgs
///             {
///                 RoleName = "istio-ops",
///                 ServiceMeshId = default1.Id,
///                 RoleType = "custom",
///                 IsCustom = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicemesh"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := servicemesh.GetVersions(ctx, &servicemesh.GetVersionsArgs{
/// 			Edition: pulumi.StringRef("Default"),
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
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(defaultGetZones.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUser, err := ram.NewUser(ctx, "default", &ram.UserArgs{
/// 			Name: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default1, err := servicemesh.NewServiceMesh(ctx, "default1", &servicemesh.ServiceMeshArgs{
/// 			ServiceMeshName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Edition:         pulumi.String("Default"),
/// 			ClusterSpec:     pulumi.String("standard"),
/// 			Version:         pulumi.String(_default.Versions[0].Version),
/// 			Network: &servicemesh.ServiceMeshNetworkArgs{
/// 				VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
/// 				VswitcheLists: []*string{
/// 					defaultGetSwitches.Ids[0],
/// 				},
/// 			},
/// 			LoadBalancer: &servicemesh.ServiceMeshLoadBalancerArgs{
/// 				PilotPublicEip:     pulumi.Bool(false),
/// 				ApiServerPublicEip: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicemesh.NewUserPermission(ctx, "default", &servicemesh.UserPermissionArgs{
/// 			SubAccountUserId: defaultUser.ID(),
/// 			Permissions: servicemesh.UserPermissionPermissionArray{
/// 				&servicemesh.UserPermissionPermissionArgs{
/// 					RoleName:      pulumi.String("istio-ops"),
/// 					ServiceMeshId: default1.ID(),
/// 					RoleType:      pulumi.String("custom"),
/// 					IsCustom:      pulumi.Bool(true),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.servicemesh.ServicemeshFunctions;
/// import com.pulumi.alicloud.servicemesh.inputs.GetVersionsArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.servicemesh.ServiceMesh;
/// import com.pulumi.alicloud.servicemesh.ServiceMeshArgs;
/// import com.pulumi.alicloud.servicemesh.inputs.ServiceMeshNetworkArgs;
/// import com.pulumi.alicloud.servicemesh.inputs.ServiceMeshLoadBalancerArgs;
/// import com.pulumi.alicloud.servicemesh.UserPermission;
/// import com.pulumi.alicloud.servicemesh.UserPermissionArgs;
/// import com.pulumi.alicloud.servicemesh.inputs.UserPermissionPermissionArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = ServicemeshFunctions.getVersions(GetVersionsArgs.builder()
///             .edition("Default")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultUser = new User("defaultUser", UserArgs.builder()
///             .name(name)
///             .build());
///
///         var default1 = new ServiceMesh("default1", ServiceMeshArgs.builder()
///             .serviceMeshName(String.format("%s-%s", name,defaultInteger.result()))
///             .edition("Default")
///             .clusterSpec("standard")
///             .version(default_.versions()[0].version())
///             .network(ServiceMeshNetworkArgs.builder()
///                 .vpcId(defaultGetNetworks.ids()[0])
///                 .vswitcheLists(List.of(defaultGetSwitches.ids()[0]))
///                 .build())
///             .loadBalancer(ServiceMeshLoadBalancerArgs.builder()
///                 .pilotPublicEip(false)
///                 .apiServerPublicEip(false)
///                 .build())
///             .build());
///
///         var defaultUserPermission = new UserPermission("defaultUserPermission", UserPermissionArgs.builder()
///             .subAccountUserId(defaultUser.id())
///             .permissions(UserPermissionPermissionArgs.builder()
///                 .roleName("istio-ops")
///                 .serviceMeshId(default1.id())
///                 .roleType("custom")
///                 .isCustom(true)
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
///     default: tfexample
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultUser:
///     type: alicloud:ram:User
///     name: default
///     properties:
///       name: ${name}
///   default1:
///     type: alicloud:servicemesh:ServiceMesh
///     properties:
///       serviceMeshName: ${name}-${defaultInteger.result}
///       edition: Default
///       clusterSpec: standard
///       version: ${default.versions[0].version}
///       network:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         vswitcheLists:
///           - ${defaultGetSwitches.ids[0]}
///       loadBalancer:
///         pilotPublicEip: false
///         apiServerPublicEip: false
///   defaultUserPermission:
///     type: alicloud:servicemesh:UserPermission
///     name: default
///     properties:
///       subAccountUserId: ${defaultUser.id}
///       permissions:
///         - roleName: istio-ops
///           serviceMeshId: ${default1.id}
///           roleType: custom
///           isCustom: true
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicemesh:getVersions
///       arguments:
///         edition: Default
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${defaultGetZones.zones[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Mesh User Permission can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicemesh/userPermission:UserPermission example <id>
/// ```
class UserPermission extends pulumi.CustomResource {
  /// List of permissions. **Warning:** The list requires the full amount of permission information to be passed. Adding permissions means adding items to the list, and deleting them or inputting nothing means removing items. See `permissions` below.
  late final pulumi.Output<List<UserPermissionPermission>> permissions;
  /// The configuration of the Load Balancer. See the following `Block load_balancer`.
  late final pulumi.Output<String> subAccountUserId;

  /// Creates a new [UserPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPermission]. {@macro pulumi_servicemesh_user_permission_user_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPermission(
    String name, {
    UserPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicemesh/userPermission:UserPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.permissions = registerOutput<List<UserPermissionPermission>>('permissions');
    this.subAccountUserId = registerOutput<String>('subAccountUserId');
  }

  /// Gets an existing [UserPermission] resource's state with the given [name] and [id].
  static UserPermission get(
    String name,
    pulumi.Input<String> id, {
    UserPermissionState? state,
  }) {
    return UserPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserPermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicemesh/userPermission:UserPermission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.permissions = registerOutput<List<UserPermissionPermission>>('permissions');
    this.subAccountUserId = registerOutput<String>('subAccountUserId');
  }
}
