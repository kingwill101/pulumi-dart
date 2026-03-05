import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_state.dart';

/// Provides a APIG Environment resource.
///
///
///
/// For information about APIG Environment and how to use it, see [What is Environment](https://next.api.aliyun.com/api/APIG/2024-03-27/CreateEnvironment).
///
/// &gt; **NOTE:** Available since v1.240.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
/// }));
/// const defaultgateway = new alicloud.apig.Gateway("defaultgateway", {
///     networkAccessConfig: {
///         type: "Intranet",
///     },
///     vswitch: {
///         vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     },
///     zoneConfig: {
///         selectOption: "Auto",
///     },
///     vpc: {
///         vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     },
///     paymentType: "PayAsYouGo",
///     gatewayName: std.format({
///         input: "%s2",
///         args: [name],
///     }).then(invoke => invoke.result),
///     spec: "apigw.small.x1",
///     logConfig: {
///         sls: {},
///     },
/// });
/// const defaultEnvironment = new alicloud.apig.Environment("default", {
///     description: name,
///     environmentName: name,
///     gatewayId: defaultgateway.id,
///     resourceGroupId: _default.then(_default => _default.ids?.[1]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0])
/// defaultgateway = alicloud.apig.Gateway("defaultgateway",
///     network_access_config={
///         "type": "Intranet",
///     },
///     vswitch={
///         "vswitch_id": default_get_switches.ids[0],
///     },
///     zone_config={
///         "select_option": "Auto",
///     },
///     vpc={
///         "vpc_id": default_get_networks.ids[0],
///     },
///     payment_type="PayAsYouGo",
///     gateway_name=std.format(input="%s2",
///         args=[name]).result,
///     spec="apigw.small.x1",
///     log_config={
///         "sls": {},
///     })
/// default_environment = alicloud.apig.Environment("default",
///     description=name,
///     environment_name=name,
///     gateway_id=defaultgateway.id,
///     resource_group_id=default.ids[1])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultgateway = new AliCloud.Apig.Gateway("defaultgateway", new()
///     {
///         NetworkAccessConfig = new AliCloud.Apig.Inputs.GatewayNetworkAccessConfigArgs
///         {
///             Type = "Intranet",
///         },
///         Vswitch = new AliCloud.Apig.Inputs.GatewayVswitchArgs
///         {
///             VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         },
///         ZoneConfig = new AliCloud.Apig.Inputs.GatewayZoneConfigArgs
///         {
///             SelectOption = "Auto",
///         },
///         Vpc = new AliCloud.Apig.Inputs.GatewayVpcArgs
///         {
///             VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         },
///         PaymentType = "PayAsYouGo",
///         GatewayName = Std.Format.Invoke(new()
///         {
///             Input = "%s2",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         Spec = "apigw.small.x1",
///         LogConfig = new AliCloud.Apig.Inputs.GatewayLogConfigArgs
///         {
///             Sls = null,
///         },
///     });
///
///     var defaultEnvironment = new AliCloud.Apig.Environment("default", new()
///     {
///         Description = name,
///         EnvironmentName = name,
///         GatewayId = defaultgateway.Id,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[1])),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apig"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
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
/// 			VpcId: pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultgateway, err := apig.NewGateway(ctx, "defaultgateway", &apig.GatewayArgs{
/// 			NetworkAccessConfig: &apig.GatewayNetworkAccessConfigArgs{
/// 				Type: pulumi.String("Intranet"),
/// 			},
/// 			Vswitch: &apig.GatewayVswitchArgs{
/// 				VswitchId: pulumi.String(defaultGetSwitches.Ids[0]),
/// 			},
/// 			ZoneConfig: &apig.GatewayZoneConfigArgs{
/// 				SelectOption: pulumi.String("Auto"),
/// 			},
/// 			Vpc: &apig.GatewayVpcArgs{
/// 				VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
/// 			},
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 			GatewayName: pulumi.String(invokeFormat.Result),
/// 			Spec:        pulumi.String("apigw.small.x1"),
/// 			LogConfig: &apig.GatewayLogConfigArgs{
/// 				Sls: &apig.GatewayLogConfigSlsArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apig.NewEnvironment(ctx, "default", &apig.EnvironmentArgs{
/// 			Description:     pulumi.String(name),
/// 			EnvironmentName: pulumi.String(name),
/// 			GatewayId:       defaultgateway.ID(),
/// 			ResourceGroupId: pulumi.String(_default.Ids[1]),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.apig.Gateway;
/// import com.pulumi.alicloud.apig.GatewayArgs;
/// import com.pulumi.alicloud.apig.inputs.GatewayNetworkAccessConfigArgs;
/// import com.pulumi.alicloud.apig.inputs.GatewayVswitchArgs;
/// import com.pulumi.alicloud.apig.inputs.GatewayZoneConfigArgs;
/// import com.pulumi.alicloud.apig.inputs.GatewayVpcArgs;
/// import com.pulumi.alicloud.apig.inputs.GatewayLogConfigArgs;
/// import com.pulumi.alicloud.apig.inputs.GatewayLogConfigSlsArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.apig.Environment;
/// import com.pulumi.alicloud.apig.EnvironmentArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .build());
///
///         var defaultgateway = new Gateway("defaultgateway", GatewayArgs.builder()
///             .networkAccessConfig(GatewayNetworkAccessConfigArgs.builder()
///                 .type("Intranet")
///                 .build())
///             .vswitch(GatewayVswitchArgs.builder()
///                 .vswitchId(defaultGetSwitches.ids()[0])
///                 .build())
///             .zoneConfig(GatewayZoneConfigArgs.builder()
///                 .selectOption("Auto")
///                 .build())
///             .vpc(GatewayVpcArgs.builder()
///                 .vpcId(defaultGetNetworks.ids()[0])
///                 .build())
///             .paymentType("PayAsYouGo")
///             .gatewayName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2")
///                 .args(name)
///                 .build()).result())
///             .spec("apigw.small.x1")
///             .logConfig(GatewayLogConfigArgs.builder()
///                 .sls(GatewayLogConfigSlsArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var defaultEnvironment = new Environment("defaultEnvironment", EnvironmentArgs.builder()
///             .description(name)
///             .environmentName(name)
///             .gatewayId(defaultgateway.id())
///             .resourceGroupId(default_.ids()[1])
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
///   defaultgateway:
///     type: alicloud:apig:Gateway
///     properties:
///       networkAccessConfig:
///         type: Intranet
///       vswitch:
///         vswitchId: ${defaultGetSwitches.ids[0]}
///       zoneConfig:
///         selectOption: Auto
///       vpc:
///         vpcId: ${defaultGetNetworks.ids[0]}
///       paymentType: PayAsYouGo
///       gatewayName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2'
///             args:
///               - ${name}
///           return: result
///       spec: apigw.small.x1
///       logConfig:
///         sls: {}
///   defaultEnvironment:
///     type: alicloud:apig:Environment
///     name: default
///     properties:
///       description: ${name}
///       environmentName: ${name}
///       gatewayId: ${defaultgateway.id}
///       resourceGroupId: ${default.ids[1]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// APIG Environment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apig/environment:Environment example <id>
/// ```
class Environment extends pulumi.CustomResource {
  /// Description
  late final pulumi.Output<String?> description;
  /// The name of the resource
  late final pulumi.Output<String> environmentName;
  /// Gateway id
  late final pulumi.Output<String> gatewayId;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_apig_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apig/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    environmentName = registerOutput<String>('environmentName');
    gatewayId = registerOutput<String>('gatewayId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apig/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    environmentName = registerOutput<String>('environmentName');
    gatewayId = registerOutput<String>('gatewayId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
  }
}
