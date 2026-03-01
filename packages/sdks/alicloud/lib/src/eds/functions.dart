import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ad_connector_directories_args.dart';
import 'get_ad_connector_directories_result.dart';
import 'get_ad_connector_office_sites_args.dart';
import 'get_ad_connector_office_sites_result.dart';
import 'get_bundles_args.dart';
import 'get_bundles_result.dart';
import 'get_commands_args.dart';
import 'get_commands_result.dart';
import 'get_custom_properties_args.dart';
import 'get_custom_properties_result.dart';
import 'get_desktop_types_args.dart';
import 'get_desktop_types_result.dart';
import 'get_desktops_args.dart';
import 'get_desktops_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_nas_file_systems_args.dart';
import 'get_nas_file_systems_result.dart';
import 'get_network_packages_args.dart';
import 'get_network_packages_result.dart';
import 'get_policy_groups_args.dart';
import 'get_policy_groups_result.dart';
import 'get_ram_directories_args.dart';
import 'get_ram_directories_result.dart';
import 'get_simple_office_sites_args.dart';
import 'get_simple_office_sites_result.dart';
import 'get_snapshots_args.dart';
import 'get_snapshots_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Ecd Ad Connector Directories of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.174.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.eds.getAdConnectorDirectories({
///     ids: ["example_id"],
/// });
/// export const ecdAdConnectorDirectoryId1 = ids.then(ids => ids.directories?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eds.get_ad_connector_directories(ids=["example_id"])
/// pulumi.export("ecdAdConnectorDirectoryId1", ids.directories[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Eds.GetAdConnectorDirectories.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdAdConnectorDirectoryId1"] = ids.Apply(getAdConnectorDirectoriesResult => getAdConnectorDirectoriesResult.Directories[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eds.GetAdConnectorDirectories(ctx, &eds.GetAdConnectorDirectoriesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdAdConnectorDirectoryId1", ids.Directories[0].Id)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetAdConnectorDirectoriesArgs;
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
///         final var ids = EdsFunctions.getAdConnectorDirectories(GetAdConnectorDirectoriesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ecdAdConnectorDirectoryId1", ids.directories()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getAdConnectorDirectories
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   ecdAdConnectorDirectoryId1: ${ids.directories[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_ad_connector_directories_get_ad_connector_directories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdConnectorDirectoriesResult> getAdConnectorDirectories(
  GetAdConnectorDirectoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getAdConnectorDirectories:getAdConnectorDirectories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdConnectorDirectoriesResult.fromMap(result);
}

/// This data source provides the Ecd Ad Connector Office Sites of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.176.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.eds.getAdConnectorOfficeSites({});
/// export const ecdAdConnectorOfficeSiteId1 = ids.then(ids => ids.sites?.[0]?.id);
/// const nameRegex = alicloud.eds.getAdConnectorOfficeSites({
///     nameRegex: "^my-AdConnectorOfficeSite",
/// });
/// export const ecdAdConnectorOfficeSiteId2 = nameRegex.then(nameRegex => nameRegex.sites?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eds.get_ad_connector_office_sites()
/// pulumi.export("ecdAdConnectorOfficeSiteId1", ids.sites[0].id)
/// name_regex = alicloud.eds.get_ad_connector_office_sites(name_regex="^my-AdConnectorOfficeSite")
/// pulumi.export("ecdAdConnectorOfficeSiteId2", name_regex.sites[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Eds.GetAdConnectorOfficeSites.Invoke();
///
///     var nameRegex = AliCloud.Eds.GetAdConnectorOfficeSites.Invoke(new()
///     {
///         NameRegex = "^my-AdConnectorOfficeSite",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdAdConnectorOfficeSiteId1"] = ids.Apply(getAdConnectorOfficeSitesResult => getAdConnectorOfficeSitesResult.Sites[0]?.Id),
///         ["ecdAdConnectorOfficeSiteId2"] = nameRegex.Apply(getAdConnectorOfficeSitesResult => getAdConnectorOfficeSitesResult.Sites[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eds.GetAdConnectorOfficeSites(ctx, &eds.GetAdConnectorOfficeSitesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdAdConnectorOfficeSiteId1", ids.Sites[0].Id)
/// 		nameRegex, err := eds.GetAdConnectorOfficeSites(ctx, &eds.GetAdConnectorOfficeSitesArgs{
/// 			NameRegex: pulumi.StringRef("^my-AdConnectorOfficeSite"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdAdConnectorOfficeSiteId2", nameRegex.Sites[0].Id)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetAdConnectorOfficeSitesArgs;
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
///         final var ids = EdsFunctions.getAdConnectorOfficeSites(GetAdConnectorOfficeSitesArgs.builder()
///             .build());
///
///         ctx.export("ecdAdConnectorOfficeSiteId1", ids.sites()[0].id());
///         final var nameRegex = EdsFunctions.getAdConnectorOfficeSites(GetAdConnectorOfficeSitesArgs.builder()
///             .nameRegex("^my-AdConnectorOfficeSite")
///             .build());
///
///         ctx.export("ecdAdConnectorOfficeSiteId2", nameRegex.sites()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getAdConnectorOfficeSites
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eds:getAdConnectorOfficeSites
///       arguments:
///         nameRegex: ^my-AdConnectorOfficeSite
/// outputs:
///   ecdAdConnectorOfficeSiteId1: ${ids.sites[0].id}
///   ecdAdConnectorOfficeSiteId2: ${nameRegex.sites[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_ad_connector_office_sites_get_ad_connector_office_sites_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdConnectorOfficeSitesResult> getAdConnectorOfficeSites(
  GetAdConnectorOfficeSitesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getAdConnectorOfficeSites:getAdConnectorOfficeSites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdConnectorOfficeSitesResult.fromMap(result);
}

/// This data source provides the Ecd bundles of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.143.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.eds.getBundles({
///     bundleType: "SYSTEM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.get_bundles(bundle_type="SYSTEM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Eds.GetBundles.Invoke(new()
///     {
///         BundleType = "SYSTEM",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eds.GetBundles(ctx, &eds.GetBundlesArgs{
/// 			BundleType: pulumi.StringRef("SYSTEM"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetBundlesArgs;
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
///         final var default = EdsFunctions.getBundles(GetBundlesArgs.builder()
///             .bundleType("SYSTEM")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getBundles
///       arguments:
///         bundleType: SYSTEM
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_bundles_get_bundles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBundlesResult> getBundles(
  GetBundlesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getBundles:getBundles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBundlesResult.fromMap(result);
}

/// This data source provides the Ecd Commands of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.146.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultSimpleOfficeSite = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     desktopAccessType: "Internet",
///     officeSiteName: "your_office_site_name",
/// });
/// const _default = alicloud.eds.getBundles({
///     bundleType: "SYSTEM",
///     nameRegex: "windows",
/// });
/// const defaultEcdPolicyGroup = new alicloud.eds.EcdPolicyGroup("default", {
///     policyGroupName: "your_policy_group_name",
///     clipboard: "readwrite",
///     localDrive: "read",
///     authorizeAccessPolicyRules: [{
///         description: "example_value",
///         cidrIp: "1.2.3.4/24",
///     }],
///     authorizeSecurityPolicyRules: [{
///         type: "inflow",
///         policy: "accept",
///         description: "example_value",
///         portRange: "80/80",
///         ipProtocol: "TCP",
///         priority: "1",
///         cidrIp: "0.0.0.0/0",
///     }],
/// });
/// const defaultDesktop = new alicloud.eds.Desktop("default", {
///     officeSiteId: defaultSimpleOfficeSite.id,
///     policyGroupId: defaultEcdPolicyGroup.id,
///     bundleId: _default.then(_default => _default.bundles?.[0]?.id),
///     desktopName: name,
/// });
/// const defaultCommand = new alicloud.eds.Command("default", {
///     commandContent: "ipconfig",
///     commandType: "RunPowerShellScript",
///     desktopId: defaultDesktop.id,
/// });
/// const ids = alicloud.eds.getCommands({});
/// export const ecdCommandId1 = ids.then(ids => ids.commands?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_simple_office_site = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     desktop_access_type="Internet",
///     office_site_name="your_office_site_name")
/// default = alicloud.eds.get_bundles(bundle_type="SYSTEM",
///     name_regex="windows")
/// default_ecd_policy_group = alicloud.eds.EcdPolicyGroup("default",
///     policy_group_name="your_policy_group_name",
///     clipboard="readwrite",
///     local_drive="read",
///     authorize_access_policy_rules=[{
///         "description": "example_value",
///         "cidr_ip": "1.2.3.4/24",
///     }],
///     authorize_security_policy_rules=[{
///         "type": "inflow",
///         "policy": "accept",
///         "description": "example_value",
///         "port_range": "80/80",
///         "ip_protocol": "TCP",
///         "priority": "1",
///         "cidr_ip": "0.0.0.0/0",
///     }])
/// default_desktop = alicloud.eds.Desktop("default",
///     office_site_id=default_simple_office_site.id,
///     policy_group_id=default_ecd_policy_group.id,
///     bundle_id=default.bundles[0].id,
///     desktop_name=name)
/// default_command = alicloud.eds.Command("default",
///     command_content="ipconfig",
///     command_type="RunPowerShellScript",
///     desktop_id=default_desktop.id)
/// ids = alicloud.eds.get_commands()
/// pulumi.export("ecdCommandId1", ids.commands[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSimpleOfficeSite = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         DesktopAccessType = "Internet",
///         OfficeSiteName = "your_office_site_name",
///     });
///
///     var @default = AliCloud.Eds.GetBundles.Invoke(new()
///     {
///         BundleType = "SYSTEM",
///         NameRegex = "windows",
///     });
///
///     var defaultEcdPolicyGroup = new AliCloud.Eds.EcdPolicyGroup("default", new()
///     {
///         PolicyGroupName = "your_policy_group_name",
///         Clipboard = "readwrite",
///         LocalDrive = "read",
///         AuthorizeAccessPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs
///             {
///                 Description = "example_value",
///                 CidrIp = "1.2.3.4/24",
///             },
///         },
///         AuthorizeSecurityPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs
///             {
///                 Type = "inflow",
///                 Policy = "accept",
///                 Description = "example_value",
///                 PortRange = "80/80",
///                 IpProtocol = "TCP",
///                 Priority = "1",
///                 CidrIp = "0.0.0.0/0",
///             },
///         },
///     });
///
///     var defaultDesktop = new AliCloud.Eds.Desktop("default", new()
///     {
///         OfficeSiteId = defaultSimpleOfficeSite.Id,
///         PolicyGroupId = defaultEcdPolicyGroup.Id,
///         BundleId = @default.Apply(@default => @default.Apply(getBundlesResult => getBundlesResult.Bundles[0]?.Id)),
///         DesktopName = name,
///     });
///
///     var defaultCommand = new AliCloud.Eds.Command("default", new()
///     {
///         CommandContent = "ipconfig",
///         CommandType = "RunPowerShellScript",
///         DesktopId = defaultDesktop.Id,
///     });
///
///     var ids = AliCloud.Eds.GetCommands.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdCommandId1"] = ids.Apply(getCommandsResult => getCommandsResult.Commands[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultSimpleOfficeSite, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:         pulumi.String("172.16.0.0/12"),
/// 			DesktopAccessType: pulumi.String("Internet"),
/// 			OfficeSiteName:    pulumi.String("your_office_site_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := eds.GetBundles(ctx, &eds.GetBundlesArgs{
/// 			BundleType: pulumi.StringRef("SYSTEM"),
/// 			NameRegex:  pulumi.StringRef("windows"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcdPolicyGroup, err := eds.NewEcdPolicyGroup(ctx, "default", &eds.EcdPolicyGroupArgs{
/// 			PolicyGroupName: pulumi.String("your_policy_group_name"),
/// 			Clipboard:       pulumi.String("readwrite"),
/// 			LocalDrive:      pulumi.String("read"),
/// 			AuthorizeAccessPolicyRules: eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs{
/// 					Description: pulumi.String("example_value"),
/// 					CidrIp:      pulumi.String("1.2.3.4/24"),
/// 				},
/// 			},
/// 			AuthorizeSecurityPolicyRules: eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs{
/// 					Type:        pulumi.String("inflow"),
/// 					Policy:      pulumi.String("accept"),
/// 					Description: pulumi.String("example_value"),
/// 					PortRange:   pulumi.String("80/80"),
/// 					IpProtocol:  pulumi.String("TCP"),
/// 					Priority:    pulumi.String("1"),
/// 					CidrIp:      pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDesktop, err := eds.NewDesktop(ctx, "default", &eds.DesktopArgs{
/// 			OfficeSiteId:  defaultSimpleOfficeSite.ID(),
/// 			PolicyGroupId: defaultEcdPolicyGroup.ID(),
/// 			BundleId:      pulumi.String(_default.Bundles[0].Id),
/// 			DesktopName:   pulumi.Any(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewCommand(ctx, "default", &eds.CommandArgs{
/// 			CommandContent: pulumi.String("ipconfig"),
/// 			CommandType:    pulumi.String("RunPowerShellScript"),
/// 			DesktopId:      defaultDesktop.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := eds.GetCommands(ctx, &eds.GetCommandsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdCommandId1", ids.Commands[0].Id)
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
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetBundlesArgs;
/// import com.pulumi.alicloud.eds.EcdPolicyGroup;
/// import com.pulumi.alicloud.eds.EcdPolicyGroupArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.Desktop;
/// import com.pulumi.alicloud.eds.DesktopArgs;
/// import com.pulumi.alicloud.eds.Command;
/// import com.pulumi.alicloud.eds.CommandArgs;
/// import com.pulumi.alicloud.eds.inputs.GetCommandsArgs;
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
///         var defaultSimpleOfficeSite = new SimpleOfficeSite("defaultSimpleOfficeSite", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .desktopAccessType("Internet")
///             .officeSiteName("your_office_site_name")
///             .build());
///
///         final var default = EdsFunctions.getBundles(GetBundlesArgs.builder()
///             .bundleType("SYSTEM")
///             .nameRegex("windows")
///             .build());
///
///         var defaultEcdPolicyGroup = new EcdPolicyGroup("defaultEcdPolicyGroup", EcdPolicyGroupArgs.builder()
///             .policyGroupName("your_policy_group_name")
///             .clipboard("readwrite")
///             .localDrive("read")
///             .authorizeAccessPolicyRules(EcdPolicyGroupAuthorizeAccessPolicyRuleArgs.builder()
///                 .description("example_value")
///                 .cidrIp("1.2.3.4/24")
///                 .build())
///             .authorizeSecurityPolicyRules(EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs.builder()
///                 .type("inflow")
///                 .policy("accept")
///                 .description("example_value")
///                 .portRange("80/80")
///                 .ipProtocol("TCP")
///                 .priority("1")
///                 .cidrIp("0.0.0.0/0")
///                 .build())
///             .build());
///
///         var defaultDesktop = new Desktop("defaultDesktop", DesktopArgs.builder()
///             .officeSiteId(defaultSimpleOfficeSite.id())
///             .policyGroupId(defaultEcdPolicyGroup.id())
///             .bundleId(default_.bundles()[0].id())
///             .desktopName(name)
///             .build());
///
///         var defaultCommand = new Command("defaultCommand", CommandArgs.builder()
///             .commandContent("ipconfig")
///             .commandType("RunPowerShellScript")
///             .desktopId(defaultDesktop.id())
///             .build());
///
///         final var ids = EdsFunctions.getCommands(GetCommandsArgs.builder()
///             .build());
///
///         ctx.export("ecdCommandId1", ids.commands()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSimpleOfficeSite:
///     type: alicloud:eds:SimpleOfficeSite
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///       desktopAccessType: Internet
///       officeSiteName: your_office_site_name
///   defaultEcdPolicyGroup:
///     type: alicloud:eds:EcdPolicyGroup
///     name: default
///     properties:
///       policyGroupName: your_policy_group_name
///       clipboard: readwrite
///       localDrive: read
///       authorizeAccessPolicyRules:
///         - description: example_value
///           cidrIp: 1.2.3.4/24
///       authorizeSecurityPolicyRules:
///         - type: inflow
///           policy: accept
///           description: example_value
///           portRange: 80/80
///           ipProtocol: TCP
///           priority: '1'
///           cidrIp: 0.0.0.0/0
///   defaultDesktop:
///     type: alicloud:eds:Desktop
///     name: default
///     properties:
///       officeSiteId: ${defaultSimpleOfficeSite.id}
///       policyGroupId: ${defaultEcdPolicyGroup.id}
///       bundleId: ${default.bundles[0].id}
///       desktopName: ${name}
///   defaultCommand:
///     type: alicloud:eds:Command
///     name: default
///     properties:
///       commandContent: ipconfig
///       commandType: RunPowerShellScript
///       desktopId: ${defaultDesktop.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getBundles
///       arguments:
///         bundleType: SYSTEM
///         nameRegex: windows
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getCommands
///       arguments: {}
/// outputs:
///   ecdCommandId1: ${ids.commands[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_commands_get_commands_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommandsResult> getCommands(
  GetCommandsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getCommands:getCommands',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommandsResult.fromMap(result);
}

/// This data source provides the Ecd Custom Properties of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.176.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.eds.getCustomProperties({
///     ids: ["example_id"],
/// });
/// export const ecdCustomPropertyId1 = ids.then(ids => ids.properties?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eds.get_custom_properties(ids=["example_id"])
/// pulumi.export("ecdCustomPropertyId1", ids.properties[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Eds.GetCustomProperties.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdCustomPropertyId1"] = ids.Apply(getCustomPropertiesResult => getCustomPropertiesResult.Properties[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eds.GetCustomProperties(ctx, &eds.GetCustomPropertiesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdCustomPropertyId1", ids.Properties[0].Id)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetCustomPropertiesArgs;
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
///         final var ids = EdsFunctions.getCustomProperties(GetCustomPropertiesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ecdCustomPropertyId1", ids.properties()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getCustomProperties
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   ecdCustomPropertyId1: ${ids.properties[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_custom_properties_get_custom_properties_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomPropertiesResult> getCustomProperties(
  GetCustomPropertiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getCustomProperties:getCustomProperties',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomPropertiesResult.fromMap(result);
}

/// This data source provides the Ecd Desktop Types of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.170.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.eds.getDesktopTypes({
///     instanceTypeFamily: "eds.hf",
/// });
/// export const ecdDesktopTypeId1 = ids.then(ids => ids.types?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eds.get_desktop_types(instance_type_family="eds.hf")
/// pulumi.export("ecdDesktopTypeId1", ids.types[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Eds.GetDesktopTypes.Invoke(new()
///     {
///         InstanceTypeFamily = "eds.hf",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdDesktopTypeId1"] = ids.Apply(getDesktopTypesResult => getDesktopTypesResult.Types[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eds.GetDesktopTypes(ctx, &eds.GetDesktopTypesArgs{
/// 			InstanceTypeFamily: pulumi.StringRef("eds.hf"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdDesktopTypeId1", ids.Types[0].Id)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetDesktopTypesArgs;
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
///         final var ids = EdsFunctions.getDesktopTypes(GetDesktopTypesArgs.builder()
///             .instanceTypeFamily("eds.hf")
///             .build());
///
///         ctx.export("ecdDesktopTypeId1", ids.types()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getDesktopTypes
///       arguments:
///         instanceTypeFamily: eds.hf
/// outputs:
///   ecdDesktopTypeId1: ${ids.types[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_desktop_types_get_desktop_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDesktopTypesResult> getDesktopTypes(
  GetDesktopTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getDesktopTypes:getDesktopTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDesktopTypesResult.fromMap(result);
}

/// This data source provides the Ecd Desktops of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.144.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultSimpleOfficeSite = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     desktopAccessType: "Internet",
///     officeSiteName: "your_office_site_name",
/// });
/// const _default = alicloud.eds.getBundles({
///     bundleType: "SYSTEM",
/// });
/// const defaultEcdPolicyGroup = new alicloud.eds.EcdPolicyGroup("default", {
///     policyGroupName: "your_policy_group_name",
///     clipboard: "readwrite",
///     localDrive: "read",
///     authorizeAccessPolicyRules: [{
///         description: "example_value",
///         cidrIp: "1.2.3.4/24",
///     }],
///     authorizeSecurityPolicyRules: [{
///         type: "inflow",
///         policy: "accept",
///         description: "example_value",
///         portRange: "80/80",
///         ipProtocol: "TCP",
///         priority: "1",
///         cidrIp: "0.0.0.0/0",
///     }],
/// });
/// const defaultUser = new alicloud.eds.User("default", {
///     endUserId: "your_end_user_id",
///     email: "your_email",
///     phone: "your_phone",
///     password: "your_password",
/// });
/// const defaultDesktop = new alicloud.eds.Desktop("default", {
///     officeSiteId: defaultSimpleOfficeSite.id,
///     policyGroupId: defaultEcdPolicyGroup.id,
///     bundleId: _default.then(_default => _default.bundles?.[0]?.id),
///     desktopName: "your_desktop_name",
///     endUserIds: [defaultUser.id],
/// });
/// const ids = alicloud.eds.getDesktopsOutput({
///     ids: [defaultDesktop.id],
/// });
/// export const ecdDesktopId1 = ids.apply(ids => ids.desktops?.[0]?.id);
/// const nameRegex = defaultDesktop.desktopName.apply(desktopName => alicloud.eds.getDesktopsOutput({
///     nameRegex: desktopName,
/// }));
/// export const ecdDesktopId2 = nameRegex.apply(nameRegex => nameRegex.desktops?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_simple_office_site = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     desktop_access_type="Internet",
///     office_site_name="your_office_site_name")
/// default = alicloud.eds.get_bundles(bundle_type="SYSTEM")
/// default_ecd_policy_group = alicloud.eds.EcdPolicyGroup("default",
///     policy_group_name="your_policy_group_name",
///     clipboard="readwrite",
///     local_drive="read",
///     authorize_access_policy_rules=[{
///         "description": "example_value",
///         "cidr_ip": "1.2.3.4/24",
///     }],
///     authorize_security_policy_rules=[{
///         "type": "inflow",
///         "policy": "accept",
///         "description": "example_value",
///         "port_range": "80/80",
///         "ip_protocol": "TCP",
///         "priority": "1",
///         "cidr_ip": "0.0.0.0/0",
///     }])
/// default_user = alicloud.eds.User("default",
///     end_user_id="your_end_user_id",
///     email="your_email",
///     phone="your_phone",
///     password="your_password")
/// default_desktop = alicloud.eds.Desktop("default",
///     office_site_id=default_simple_office_site.id,
///     policy_group_id=default_ecd_policy_group.id,
///     bundle_id=default.bundles[0].id,
///     desktop_name="your_desktop_name",
///     end_user_ids=[default_user.id])
/// ids = alicloud.eds.get_desktops_output(ids=[default_desktop.id])
/// pulumi.export("ecdDesktopId1", ids.desktops[0].id)
/// name_regex = default_desktop.desktop_name.apply(lambda desktop_name: alicloud.eds.get_desktops_output(name_regex=desktop_name))
/// pulumi.export("ecdDesktopId2", name_regex.desktops[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSimpleOfficeSite = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         DesktopAccessType = "Internet",
///         OfficeSiteName = "your_office_site_name",
///     });
///
///     var @default = AliCloud.Eds.GetBundles.Invoke(new()
///     {
///         BundleType = "SYSTEM",
///     });
///
///     var defaultEcdPolicyGroup = new AliCloud.Eds.EcdPolicyGroup("default", new()
///     {
///         PolicyGroupName = "your_policy_group_name",
///         Clipboard = "readwrite",
///         LocalDrive = "read",
///         AuthorizeAccessPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs
///             {
///                 Description = "example_value",
///                 CidrIp = "1.2.3.4/24",
///             },
///         },
///         AuthorizeSecurityPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs
///             {
///                 Type = "inflow",
///                 Policy = "accept",
///                 Description = "example_value",
///                 PortRange = "80/80",
///                 IpProtocol = "TCP",
///                 Priority = "1",
///                 CidrIp = "0.0.0.0/0",
///             },
///         },
///     });
///
///     var defaultUser = new AliCloud.Eds.User("default", new()
///     {
///         EndUserId = "your_end_user_id",
///         Email = "your_email",
///         Phone = "your_phone",
///         Password = "your_password",
///     });
///
///     var defaultDesktop = new AliCloud.Eds.Desktop("default", new()
///     {
///         OfficeSiteId = defaultSimpleOfficeSite.Id,
///         PolicyGroupId = defaultEcdPolicyGroup.Id,
///         BundleId = @default.Apply(@default => @default.Apply(getBundlesResult => getBundlesResult.Bundles[0]?.Id)),
///         DesktopName = "your_desktop_name",
///         EndUserIds = new[]
///         {
///             defaultUser.Id,
///         },
///     });
///
///     var ids = AliCloud.Eds.GetDesktops.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDesktop.Id,
///         },
///     });
///
///     var nameRegex = AliCloud.Eds.GetDesktops.Invoke(new()
///     {
///         NameRegex = defaultDesktop.DesktopName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdDesktopId1"] = ids.Apply(getDesktopsResult => getDesktopsResult.Desktops[0]?.Id),
///         ["ecdDesktopId2"] = nameRegex.Apply(getDesktopsResult => getDesktopsResult.Desktops[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultSimpleOfficeSite, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:         pulumi.String("172.16.0.0/12"),
/// 			DesktopAccessType: pulumi.String("Internet"),
/// 			OfficeSiteName:    pulumi.String("your_office_site_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := eds.GetBundles(ctx, &eds.GetBundlesArgs{
/// 			BundleType: pulumi.StringRef("SYSTEM"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcdPolicyGroup, err := eds.NewEcdPolicyGroup(ctx, "default", &eds.EcdPolicyGroupArgs{
/// 			PolicyGroupName: pulumi.String("your_policy_group_name"),
/// 			Clipboard:       pulumi.String("readwrite"),
/// 			LocalDrive:      pulumi.String("read"),
/// 			AuthorizeAccessPolicyRules: eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs{
/// 					Description: pulumi.String("example_value"),
/// 					CidrIp:      pulumi.String("1.2.3.4/24"),
/// 				},
/// 			},
/// 			AuthorizeSecurityPolicyRules: eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs{
/// 					Type:        pulumi.String("inflow"),
/// 					Policy:      pulumi.String("accept"),
/// 					Description: pulumi.String("example_value"),
/// 					PortRange:   pulumi.String("80/80"),
/// 					IpProtocol:  pulumi.String("TCP"),
/// 					Priority:    pulumi.String("1"),
/// 					CidrIp:      pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUser, err := eds.NewUser(ctx, "default", &eds.UserArgs{
/// 			EndUserId: pulumi.String("your_end_user_id"),
/// 			Email:     pulumi.String("your_email"),
/// 			Phone:     pulumi.String("your_phone"),
/// 			Password:  pulumi.String("your_password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDesktop, err := eds.NewDesktop(ctx, "default", &eds.DesktopArgs{
/// 			OfficeSiteId:  defaultSimpleOfficeSite.ID(),
/// 			PolicyGroupId: defaultEcdPolicyGroup.ID(),
/// 			BundleId:      pulumi.String(_default.Bundles[0].Id),
/// 			DesktopName:   pulumi.String("your_desktop_name"),
/// 			EndUserIds: pulumi.StringArray{
/// 				defaultUser.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := eds.GetDesktopsOutput(ctx, eds.GetDesktopsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultDesktop.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ecdDesktopId1", ids.ApplyT(func(ids eds.GetDesktopsResult) (*string, error) {
/// 			return &ids.Desktops[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		nameRegex := defaultDesktop.DesktopName.ApplyT(func(desktopName *string) (eds.GetDesktopsResult, error) {
/// 			return eds.GetDesktopsResult(interface{}(eds.GetDesktops(ctx, &eds.GetDesktopsArgs{
/// 				NameRegex: pulumi.StringRef(pulumi.StringRef(desktopName)),
/// 			}, nil))), nil
/// 		}).(eds.GetDesktopsResultOutput)
/// 		ctx.Export("ecdDesktopId2", nameRegex.ApplyT(func(nameRegex eds.GetDesktopsResult) (*string, error) {
/// 			return &nameRegex.Desktops[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetBundlesArgs;
/// import com.pulumi.alicloud.eds.EcdPolicyGroup;
/// import com.pulumi.alicloud.eds.EcdPolicyGroupArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.User;
/// import com.pulumi.alicloud.eds.UserArgs;
/// import com.pulumi.alicloud.eds.Desktop;
/// import com.pulumi.alicloud.eds.DesktopArgs;
/// import com.pulumi.alicloud.eds.inputs.GetDesktopsArgs;
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
///         var defaultSimpleOfficeSite = new SimpleOfficeSite("defaultSimpleOfficeSite", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .desktopAccessType("Internet")
///             .officeSiteName("your_office_site_name")
///             .build());
///
///         final var default = EdsFunctions.getBundles(GetBundlesArgs.builder()
///             .bundleType("SYSTEM")
///             .build());
///
///         var defaultEcdPolicyGroup = new EcdPolicyGroup("defaultEcdPolicyGroup", EcdPolicyGroupArgs.builder()
///             .policyGroupName("your_policy_group_name")
///             .clipboard("readwrite")
///             .localDrive("read")
///             .authorizeAccessPolicyRules(EcdPolicyGroupAuthorizeAccessPolicyRuleArgs.builder()
///                 .description("example_value")
///                 .cidrIp("1.2.3.4/24")
///                 .build())
///             .authorizeSecurityPolicyRules(EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs.builder()
///                 .type("inflow")
///                 .policy("accept")
///                 .description("example_value")
///                 .portRange("80/80")
///                 .ipProtocol("TCP")
///                 .priority("1")
///                 .cidrIp("0.0.0.0/0")
///                 .build())
///             .build());
///
///         var defaultUser = new User("defaultUser", UserArgs.builder()
///             .endUserId("your_end_user_id")
///             .email("your_email")
///             .phone("your_phone")
///             .password("your_password")
///             .build());
///
///         var defaultDesktop = new Desktop("defaultDesktop", DesktopArgs.builder()
///             .officeSiteId(defaultSimpleOfficeSite.id())
///             .policyGroupId(defaultEcdPolicyGroup.id())
///             .bundleId(default_.bundles()[0].id())
///             .desktopName("your_desktop_name")
///             .endUserIds(defaultUser.id())
///             .build());
///
///         final var ids = EdsFunctions.getDesktops(GetDesktopsArgs.builder()
///             .ids(defaultDesktop.id())
///             .build());
///
///         ctx.export("ecdDesktopId1", ids.applyValue(_ids -> _ids.desktops()[0].id()));
///         final var nameRegex = defaultDesktop.desktopName().applyValue(_desktopName -> EdsFunctions.getDesktops(GetDesktopsArgs.builder()
///             .nameRegex(_desktopName)
///             .build()));
///
///         ctx.export("ecdDesktopId2", nameRegex.applyValue(_nameRegex -> _nameRegex.desktops()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSimpleOfficeSite:
///     type: alicloud:eds:SimpleOfficeSite
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///       desktopAccessType: Internet
///       officeSiteName: your_office_site_name
///   defaultEcdPolicyGroup:
///     type: alicloud:eds:EcdPolicyGroup
///     name: default
///     properties:
///       policyGroupName: your_policy_group_name
///       clipboard: readwrite
///       localDrive: read
///       authorizeAccessPolicyRules:
///         - description: example_value
///           cidrIp: 1.2.3.4/24
///       authorizeSecurityPolicyRules:
///         - type: inflow
///           policy: accept
///           description: example_value
///           portRange: 80/80
///           ipProtocol: TCP
///           priority: '1'
///           cidrIp: 0.0.0.0/0
///   defaultDesktop:
///     type: alicloud:eds:Desktop
///     name: default
///     properties:
///       officeSiteId: ${defaultSimpleOfficeSite.id}
///       policyGroupId: ${defaultEcdPolicyGroup.id}
///       bundleId: ${default.bundles[0].id}
///       desktopName: your_desktop_name
///       endUserIds:
///         - ${defaultUser.id}
///   defaultUser:
///     type: alicloud:eds:User
///     name: default
///     properties:
///       endUserId: your_end_user_id
///       email: your_email
///       phone: your_phone
///       password: your_password
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getBundles
///       arguments:
///         bundleType: SYSTEM
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getDesktops
///       arguments:
///         ids:
///           - ${defaultDesktop.id}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eds:getDesktops
///       arguments:
///         nameRegex: ${defaultDesktop.desktopName}
/// outputs:
///   ecdDesktopId1: ${ids.desktops[0].id}
///   ecdDesktopId2: ${nameRegex.desktops[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_desktops_get_desktops_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDesktopsResult> getDesktops(
  GetDesktopsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getDesktops:getDesktops',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDesktopsResult.fromMap(result);
}

/// This data source provides the Ecd Images of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.146.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultSimpleOfficeSite = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     desktopAccessType: "Internet",
///     officeSiteName: "your_simple_office_site_name",
/// });
/// const _default = alicloud.eds.getBundles({
///     bundleType: "SYSTEM",
/// });
/// const defaultEcdPolicyGroup = new alicloud.eds.EcdPolicyGroup("default", {
///     policyGroupName: "your_policy_group_name",
///     clipboard: "readwrite",
///     localDrive: "read",
///     authorizeAccessPolicyRules: [{
///         description: "example_value",
///         cidrIp: "1.2.3.4/24",
///     }],
///     authorizeSecurityPolicyRules: [{
///         type: "inflow",
///         policy: "accept",
///         description: "example_value",
///         portRange: "80/80",
///         ipProtocol: "TCP",
///         priority: "1",
///         cidrIp: "0.0.0.0/0",
///     }],
/// });
/// const defaultDesktop = new alicloud.eds.Desktop("default", {
///     officeSiteId: defaultSimpleOfficeSite.id,
///     policyGroupId: defaultEcdPolicyGroup.id,
///     bundleId: _default.then(_default => _default.bundles?.[1]?.id),
///     desktopName: "your_desktop_name",
/// });
/// const defaultImage = new alicloud.eds.Image("default", {
///     imageName: "your_image_name",
///     desktopId: defaultDesktop.id,
///     description: "example_value",
/// });
/// const ids = alicloud.eds.getImagesOutput({
///     ids: [defaultImage.id],
/// });
/// export const ecdImageId1 = ids.apply(ids => ids.images?.[0]?.id);
/// const nameRegex = defaultImage.imageName.apply(imageName => alicloud.eds.getImagesOutput({
///     nameRegex: imageName,
/// }));
/// export const ecdImageId2 = nameRegex.apply(nameRegex => nameRegex.images?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_simple_office_site = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     desktop_access_type="Internet",
///     office_site_name="your_simple_office_site_name")
/// default = alicloud.eds.get_bundles(bundle_type="SYSTEM")
/// default_ecd_policy_group = alicloud.eds.EcdPolicyGroup("default",
///     policy_group_name="your_policy_group_name",
///     clipboard="readwrite",
///     local_drive="read",
///     authorize_access_policy_rules=[{
///         "description": "example_value",
///         "cidr_ip": "1.2.3.4/24",
///     }],
///     authorize_security_policy_rules=[{
///         "type": "inflow",
///         "policy": "accept",
///         "description": "example_value",
///         "port_range": "80/80",
///         "ip_protocol": "TCP",
///         "priority": "1",
///         "cidr_ip": "0.0.0.0/0",
///     }])
/// default_desktop = alicloud.eds.Desktop("default",
///     office_site_id=default_simple_office_site.id,
///     policy_group_id=default_ecd_policy_group.id,
///     bundle_id=default.bundles[1].id,
///     desktop_name="your_desktop_name")
/// default_image = alicloud.eds.Image("default",
///     image_name="your_image_name",
///     desktop_id=default_desktop.id,
///     description="example_value")
/// ids = alicloud.eds.get_images_output(ids=[default_image.id])
/// pulumi.export("ecdImageId1", ids.images[0].id)
/// name_regex = default_image.image_name.apply(lambda image_name: alicloud.eds.get_images_output(name_regex=image_name))
/// pulumi.export("ecdImageId2", name_regex.images[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSimpleOfficeSite = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         DesktopAccessType = "Internet",
///         OfficeSiteName = "your_simple_office_site_name",
///     });
///
///     var @default = AliCloud.Eds.GetBundles.Invoke(new()
///     {
///         BundleType = "SYSTEM",
///     });
///
///     var defaultEcdPolicyGroup = new AliCloud.Eds.EcdPolicyGroup("default", new()
///     {
///         PolicyGroupName = "your_policy_group_name",
///         Clipboard = "readwrite",
///         LocalDrive = "read",
///         AuthorizeAccessPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs
///             {
///                 Description = "example_value",
///                 CidrIp = "1.2.3.4/24",
///             },
///         },
///         AuthorizeSecurityPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs
///             {
///                 Type = "inflow",
///                 Policy = "accept",
///                 Description = "example_value",
///                 PortRange = "80/80",
///                 IpProtocol = "TCP",
///                 Priority = "1",
///                 CidrIp = "0.0.0.0/0",
///             },
///         },
///     });
///
///     var defaultDesktop = new AliCloud.Eds.Desktop("default", new()
///     {
///         OfficeSiteId = defaultSimpleOfficeSite.Id,
///         PolicyGroupId = defaultEcdPolicyGroup.Id,
///         BundleId = @default.Apply(@default => @default.Apply(getBundlesResult => getBundlesResult.Bundles[1]?.Id)),
///         DesktopName = "your_desktop_name",
///     });
///
///     var defaultImage = new AliCloud.Eds.Image("default", new()
///     {
///         ImageName = "your_image_name",
///         DesktopId = defaultDesktop.Id,
///         Description = "example_value",
///     });
///
///     var ids = AliCloud.Eds.GetImages.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultImage.Id,
///         },
///     });
///
///     var nameRegex = AliCloud.Eds.GetImages.Invoke(new()
///     {
///         NameRegex = defaultImage.ImageName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdImageId1"] = ids.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         ["ecdImageId2"] = nameRegex.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultSimpleOfficeSite, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:         pulumi.String("172.16.0.0/12"),
/// 			DesktopAccessType: pulumi.String("Internet"),
/// 			OfficeSiteName:    pulumi.String("your_simple_office_site_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := eds.GetBundles(ctx, &eds.GetBundlesArgs{
/// 			BundleType: pulumi.StringRef("SYSTEM"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcdPolicyGroup, err := eds.NewEcdPolicyGroup(ctx, "default", &eds.EcdPolicyGroupArgs{
/// 			PolicyGroupName: pulumi.String("your_policy_group_name"),
/// 			Clipboard:       pulumi.String("readwrite"),
/// 			LocalDrive:      pulumi.String("read"),
/// 			AuthorizeAccessPolicyRules: eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs{
/// 					Description: pulumi.String("example_value"),
/// 					CidrIp:      pulumi.String("1.2.3.4/24"),
/// 				},
/// 			},
/// 			AuthorizeSecurityPolicyRules: eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs{
/// 					Type:        pulumi.String("inflow"),
/// 					Policy:      pulumi.String("accept"),
/// 					Description: pulumi.String("example_value"),
/// 					PortRange:   pulumi.String("80/80"),
/// 					IpProtocol:  pulumi.String("TCP"),
/// 					Priority:    pulumi.String("1"),
/// 					CidrIp:      pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDesktop, err := eds.NewDesktop(ctx, "default", &eds.DesktopArgs{
/// 			OfficeSiteId:  defaultSimpleOfficeSite.ID(),
/// 			PolicyGroupId: defaultEcdPolicyGroup.ID(),
/// 			BundleId:      pulumi.String(_default.Bundles[1].Id),
/// 			DesktopName:   pulumi.String("your_desktop_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultImage, err := eds.NewImage(ctx, "default", &eds.ImageArgs{
/// 			ImageName:   pulumi.String("your_image_name"),
/// 			DesktopId:   defaultDesktop.ID(),
/// 			Description: pulumi.String("example_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := eds.GetImagesOutput(ctx, eds.GetImagesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultImage.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ecdImageId1", ids.ApplyT(func(ids eds.GetImagesResult) (*string, error) {
/// 			return &ids.Images[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		nameRegex := defaultImage.ImageName.ApplyT(func(imageName *string) (eds.GetImagesResult, error) {
/// 			return eds.GetImagesResult(interface{}(eds.GetImages(ctx, &eds.GetImagesArgs{
/// 				NameRegex: pulumi.StringRef(pulumi.StringRef(imageName)),
/// 			}, nil))), nil
/// 		}).(eds.GetImagesResultOutput)
/// 		ctx.Export("ecdImageId2", nameRegex.ApplyT(func(nameRegex eds.GetImagesResult) (*string, error) {
/// 			return &nameRegex.Images[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetBundlesArgs;
/// import com.pulumi.alicloud.eds.EcdPolicyGroup;
/// import com.pulumi.alicloud.eds.EcdPolicyGroupArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.Desktop;
/// import com.pulumi.alicloud.eds.DesktopArgs;
/// import com.pulumi.alicloud.eds.Image;
/// import com.pulumi.alicloud.eds.ImageArgs;
/// import com.pulumi.alicloud.eds.inputs.GetImagesArgs;
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
///         var defaultSimpleOfficeSite = new SimpleOfficeSite("defaultSimpleOfficeSite", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .desktopAccessType("Internet")
///             .officeSiteName("your_simple_office_site_name")
///             .build());
///
///         final var default = EdsFunctions.getBundles(GetBundlesArgs.builder()
///             .bundleType("SYSTEM")
///             .build());
///
///         var defaultEcdPolicyGroup = new EcdPolicyGroup("defaultEcdPolicyGroup", EcdPolicyGroupArgs.builder()
///             .policyGroupName("your_policy_group_name")
///             .clipboard("readwrite")
///             .localDrive("read")
///             .authorizeAccessPolicyRules(EcdPolicyGroupAuthorizeAccessPolicyRuleArgs.builder()
///                 .description("example_value")
///                 .cidrIp("1.2.3.4/24")
///                 .build())
///             .authorizeSecurityPolicyRules(EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs.builder()
///                 .type("inflow")
///                 .policy("accept")
///                 .description("example_value")
///                 .portRange("80/80")
///                 .ipProtocol("TCP")
///                 .priority("1")
///                 .cidrIp("0.0.0.0/0")
///                 .build())
///             .build());
///
///         var defaultDesktop = new Desktop("defaultDesktop", DesktopArgs.builder()
///             .officeSiteId(defaultSimpleOfficeSite.id())
///             .policyGroupId(defaultEcdPolicyGroup.id())
///             .bundleId(default_.bundles()[1].id())
///             .desktopName("your_desktop_name")
///             .build());
///
///         var defaultImage = new Image("defaultImage", ImageArgs.builder()
///             .imageName("your_image_name")
///             .desktopId(defaultDesktop.id())
///             .description("example_value")
///             .build());
///
///         final var ids = EdsFunctions.getImages(GetImagesArgs.builder()
///             .ids(defaultImage.id())
///             .build());
///
///         ctx.export("ecdImageId1", ids.applyValue(_ids -> _ids.images()[0].id()));
///         final var nameRegex = defaultImage.imageName().applyValue(_imageName -> EdsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex(_imageName)
///             .build()));
///
///         ctx.export("ecdImageId2", nameRegex.applyValue(_nameRegex -> _nameRegex.images()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSimpleOfficeSite:
///     type: alicloud:eds:SimpleOfficeSite
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///       desktopAccessType: Internet
///       officeSiteName: your_simple_office_site_name
///   defaultEcdPolicyGroup:
///     type: alicloud:eds:EcdPolicyGroup
///     name: default
///     properties:
///       policyGroupName: your_policy_group_name
///       clipboard: readwrite
///       localDrive: read
///       authorizeAccessPolicyRules:
///         - description: example_value
///           cidrIp: 1.2.3.4/24
///       authorizeSecurityPolicyRules:
///         - type: inflow
///           policy: accept
///           description: example_value
///           portRange: 80/80
///           ipProtocol: TCP
///           priority: '1'
///           cidrIp: 0.0.0.0/0
///   defaultDesktop:
///     type: alicloud:eds:Desktop
///     name: default
///     properties:
///       officeSiteId: ${defaultSimpleOfficeSite.id}
///       policyGroupId: ${defaultEcdPolicyGroup.id}
///       bundleId: ${default.bundles[1].id}
///       desktopName: your_desktop_name
///   defaultImage:
///     type: alicloud:eds:Image
///     name: default
///     properties:
///       imageName: your_image_name
///       desktopId: ${defaultDesktop.id}
///       description: example_value
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getBundles
///       arguments:
///         bundleType: SYSTEM
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getImages
///       arguments:
///         ids:
///           - ${defaultImage.id}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eds:getImages
///       arguments:
///         nameRegex: ${defaultImage.imageName}
/// outputs:
///   ecdImageId1: ${ids.images[0].id}
///   ecdImageId2: ${nameRegex.images[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// This data source provides the Ecd Nas File Systems of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.141.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     desktopAccessType: "Internet",
///     officeSiteName: "your_office_site_name",
///     enableInternetAccess: false,
/// });
/// const defaultNasFileSystem = new alicloud.eds.NasFileSystem("default", {
///     description: "your_description",
///     officeSiteId: _default.id,
///     nasFileSystemName: "your_nas_file_system_name",
/// });
/// const ids = alicloud.eds.getNasFileSystems({});
/// export const ecdNasFileSystemId1 = ids.then(ids => ids.systems?.[0]?.id);
/// const nameRegex = defaultNasFileSystem.nasFileSystemName.apply(nasFileSystemName => alicloud.eds.getNasFileSystemsOutput({
///     nameRegex: nasFileSystemName,
/// }));
/// export const ecdNasFileSystemId2 = nameRegex.apply(nameRegex => nameRegex.systems?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     desktop_access_type="Internet",
///     office_site_name="your_office_site_name",
///     enable_internet_access=False)
/// default_nas_file_system = alicloud.eds.NasFileSystem("default",
///     description="your_description",
///     office_site_id=default.id,
///     nas_file_system_name="your_nas_file_system_name")
/// ids = alicloud.eds.get_nas_file_systems()
/// pulumi.export("ecdNasFileSystemId1", ids.systems[0].id)
/// name_regex = default_nas_file_system.nas_file_system_name.apply(lambda nas_file_system_name: alicloud.eds.get_nas_file_systems_output(name_regex=nas_file_system_name))
/// pulumi.export("ecdNasFileSystemId2", name_regex.systems[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         DesktopAccessType = "Internet",
///         OfficeSiteName = "your_office_site_name",
///         EnableInternetAccess = false,
///     });
///
///     var defaultNasFileSystem = new AliCloud.Eds.NasFileSystem("default", new()
///     {
///         Description = "your_description",
///         OfficeSiteId = @default.Id,
///         NasFileSystemName = "your_nas_file_system_name",
///     });
///
///     var ids = AliCloud.Eds.GetNasFileSystems.Invoke();
///
///     var nameRegex = AliCloud.Eds.GetNasFileSystems.Invoke(new()
///     {
///         NameRegex = defaultNasFileSystem.NasFileSystemName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdNasFileSystemId1"] = ids.Apply(getNasFileSystemsResult => getNasFileSystemsResult.Systems[0]?.Id),
///         ["ecdNasFileSystemId2"] = nameRegex.Apply(getNasFileSystemsResult => getNasFileSystemsResult.Systems[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:            pulumi.String("172.16.0.0/12"),
/// 			DesktopAccessType:    pulumi.String("Internet"),
/// 			OfficeSiteName:       pulumi.String("your_office_site_name"),
/// 			EnableInternetAccess: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNasFileSystem, err := eds.NewNasFileSystem(ctx, "default", &eds.NasFileSystemArgs{
/// 			Description:       pulumi.String("your_description"),
/// 			OfficeSiteId:      _default.ID(),
/// 			NasFileSystemName: pulumi.String("your_nas_file_system_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := eds.GetNasFileSystems(ctx, &eds.GetNasFileSystemsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdNasFileSystemId1", ids.Systems[0].Id)
/// 		nameRegex := defaultNasFileSystem.NasFileSystemName.ApplyT(func(nasFileSystemName *string) (eds.GetNasFileSystemsResult, error) {
/// 			return eds.GetNasFileSystemsResult(interface{}(eds.GetNasFileSystems(ctx, &eds.GetNasFileSystemsArgs{
/// 				NameRegex: pulumi.StringRef(pulumi.StringRef(nasFileSystemName)),
/// 			}, nil))), nil
/// 		}).(eds.GetNasFileSystemsResultOutput)
/// 		ctx.Export("ecdNasFileSystemId2", nameRegex.ApplyT(func(nameRegex eds.GetNasFileSystemsResult) (*string, error) {
/// 			return &nameRegex.Systems[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.NasFileSystem;
/// import com.pulumi.alicloud.eds.NasFileSystemArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetNasFileSystemsArgs;
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
///         var default_ = new SimpleOfficeSite("default", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .desktopAccessType("Internet")
///             .officeSiteName("your_office_site_name")
///             .enableInternetAccess(false)
///             .build());
///
///         var defaultNasFileSystem = new NasFileSystem("defaultNasFileSystem", NasFileSystemArgs.builder()
///             .description("your_description")
///             .officeSiteId(default_.id())
///             .nasFileSystemName("your_nas_file_system_name")
///             .build());
///
///         final var ids = EdsFunctions.getNasFileSystems(GetNasFileSystemsArgs.builder()
///             .build());
///
///         ctx.export("ecdNasFileSystemId1", ids.systems()[0].id());
///         final var nameRegex = defaultNasFileSystem.nasFileSystemName().applyValue(_nasFileSystemName -> EdsFunctions.getNasFileSystems(GetNasFileSystemsArgs.builder()
///             .nameRegex(_nasFileSystemName)
///             .build()));
///
///         ctx.export("ecdNasFileSystemId2", nameRegex.applyValue(_nameRegex -> _nameRegex.systems()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:eds:SimpleOfficeSite
///     properties:
///       cidrBlock: 172.16.0.0/12
///       desktopAccessType: Internet
///       officeSiteName: your_office_site_name
///       enableInternetAccess: false
///   defaultNasFileSystem:
///     type: alicloud:eds:NasFileSystem
///     name: default
///     properties:
///       description: your_description
///       officeSiteId: ${default.id}
///       nasFileSystemName: your_nas_file_system_name
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getNasFileSystems
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eds:getNasFileSystems
///       arguments:
///         nameRegex: ${defaultNasFileSystem.nasFileSystemName}
/// outputs:
///   ecdNasFileSystemId1: ${ids.systems[0].id}
///   ecdNasFileSystemId2: ${nameRegex.systems[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_nas_file_systems_get_nas_file_systems_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNasFileSystemsResult> getNasFileSystems(
  GetNasFileSystemsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getNasFileSystems:getNasFileSystems',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasFileSystemsResult.fromMap(result);
}

/// This data source provides the Ecd Network Packages of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultSimpleOfficeSite = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     desktopAccessType: "Internet",
///     officeSiteName: "example_value",
/// });
/// const defaultNetworkPackage = new alicloud.eds.NetworkPackage("default", {
///     bandwidth: 10,
///     officeSiteId: defaultSimpleOfficeSite.id,
/// });
/// const _default = alicloud.eds.getNetworkPackagesOutput({
///     ids: [defaultNetworkPackage.id],
/// });
/// export const ecdNetworkPackageId1 = _default.apply(_default => _default.packages?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_simple_office_site = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     desktop_access_type="Internet",
///     office_site_name="example_value")
/// default_network_package = alicloud.eds.NetworkPackage("default",
///     bandwidth=10,
///     office_site_id=default_simple_office_site.id)
/// default = alicloud.eds.get_network_packages_output(ids=[default_network_package.id])
/// pulumi.export("ecdNetworkPackageId1", default.packages[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSimpleOfficeSite = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         DesktopAccessType = "Internet",
///         OfficeSiteName = "example_value",
///     });
///
///     var defaultNetworkPackage = new AliCloud.Eds.NetworkPackage("default", new()
///     {
///         Bandwidth = 10,
///         OfficeSiteId = defaultSimpleOfficeSite.Id,
///     });
///
///     var @default = AliCloud.Eds.GetNetworkPackages.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultNetworkPackage.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdNetworkPackageId1"] = @default.Apply(@default => @default.Apply(getNetworkPackagesResult => getNetworkPackagesResult.Packages[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultSimpleOfficeSite, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// DesktopAccessType: pulumi.String("Internet"),
/// OfficeSiteName: pulumi.String("example_value"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetworkPackage, err := eds.NewNetworkPackage(ctx, "default", &eds.NetworkPackageArgs{
/// Bandwidth: pulumi.Int(10),
/// OfficeSiteId: defaultSimpleOfficeSite.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _default := eds.GetNetworkPackagesOutput(ctx, eds.GetNetworkPackagesOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultNetworkPackage.ID(),
/// },
/// }, nil);
/// ctx.Export("ecdNetworkPackageId1", _default.ApplyT(func(_default eds.GetNetworkPackagesResult) (*string, error) {
/// return &default.Packages[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.NetworkPackage;
/// import com.pulumi.alicloud.eds.NetworkPackageArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetNetworkPackagesArgs;
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
///         var defaultSimpleOfficeSite = new SimpleOfficeSite("defaultSimpleOfficeSite", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .desktopAccessType("Internet")
///             .officeSiteName("example_value")
///             .build());
///
///         var defaultNetworkPackage = new NetworkPackage("defaultNetworkPackage", NetworkPackageArgs.builder()
///             .bandwidth(10)
///             .officeSiteId(defaultSimpleOfficeSite.id())
///             .build());
///
///         final var default = EdsFunctions.getNetworkPackages(GetNetworkPackagesArgs.builder()
///             .ids(defaultNetworkPackage.id())
///             .build());
///
///         ctx.export("ecdNetworkPackageId1", default_.applyValue(_default_ -> _default_.packages()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSimpleOfficeSite:
///     type: alicloud:eds:SimpleOfficeSite
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///       desktopAccessType: Internet
///       officeSiteName: example_value
///   defaultNetworkPackage:
///     type: alicloud:eds:NetworkPackage
///     name: default
///     properties:
///       bandwidth: '10'
///       officeSiteId: ${defaultSimpleOfficeSite.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getNetworkPackages
///       arguments:
///         ids:
///           - ${defaultNetworkPackage.id}
/// outputs:
///   ecdNetworkPackageId1: ${default.packages[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_network_packages_get_network_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPackagesResult> getNetworkPackages(
  GetNetworkPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getNetworkPackages:getNetworkPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPackagesResult.fromMap(result);
}

/// This data source provides the Ecd Policy Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.130.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.eds.EcdPolicyGroup("default", {
///     policyGroupName: "my-policy-group",
///     clipboard: "read",
///     localDrive: "read",
///     usbRedirect: "off",
///     watermark: "off",
///     authorizeAccessPolicyRules: [{
///         description: "my-description1",
///         cidrIp: "1.2.3.45/24",
///     }],
///     authorizeSecurityPolicyRules: [{
///         type: "inflow",
///         policy: "accept",
///         description: "my-description",
///         portRange: "80/80",
///         ipProtocol: "TCP",
///         priority: "1",
///         cidrIp: "1.2.3.4/24",
///     }],
/// });
/// const nameRegex = alicloud.eds.getPolicyGroups({
///     nameRegex: "^my-policy",
/// });
/// export const ecdPolicyGroupId = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.EcdPolicyGroup("default",
///     policy_group_name="my-policy-group",
///     clipboard="read",
///     local_drive="read",
///     usb_redirect="off",
///     watermark="off",
///     authorize_access_policy_rules=[{
///         "description": "my-description1",
///         "cidr_ip": "1.2.3.45/24",
///     }],
///     authorize_security_policy_rules=[{
///         "type": "inflow",
///         "policy": "accept",
///         "description": "my-description",
///         "port_range": "80/80",
///         "ip_protocol": "TCP",
///         "priority": "1",
///         "cidr_ip": "1.2.3.4/24",
///     }])
/// name_regex = alicloud.eds.get_policy_groups(name_regex="^my-policy")
/// pulumi.export("ecdPolicyGroupId", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Eds.EcdPolicyGroup("default", new()
///     {
///         PolicyGroupName = "my-policy-group",
///         Clipboard = "read",
///         LocalDrive = "read",
///         UsbRedirect = "off",
///         Watermark = "off",
///         AuthorizeAccessPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs
///             {
///                 Description = "my-description1",
///                 CidrIp = "1.2.3.45/24",
///             },
///         },
///         AuthorizeSecurityPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs
///             {
///                 Type = "inflow",
///                 Policy = "accept",
///                 Description = "my-description",
///                 PortRange = "80/80",
///                 IpProtocol = "TCP",
///                 Priority = "1",
///                 CidrIp = "1.2.3.4/24",
///             },
///         },
///     });
///
///     var nameRegex = AliCloud.Eds.GetPolicyGroups.Invoke(new()
///     {
///         NameRegex = "^my-policy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdPolicyGroupId"] = nameRegex.Apply(getPolicyGroupsResult => getPolicyGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eds.NewEcdPolicyGroup(ctx, "default", &eds.EcdPolicyGroupArgs{
/// 			PolicyGroupName: pulumi.String("my-policy-group"),
/// 			Clipboard:       pulumi.String("read"),
/// 			LocalDrive:      pulumi.String("read"),
/// 			UsbRedirect:     pulumi.String("off"),
/// 			Watermark:       pulumi.String("off"),
/// 			AuthorizeAccessPolicyRules: eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs{
/// 					Description: pulumi.String("my-description1"),
/// 					CidrIp:      pulumi.String("1.2.3.45/24"),
/// 				},
/// 			},
/// 			AuthorizeSecurityPolicyRules: eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs{
/// 					Type:        pulumi.String("inflow"),
/// 					Policy:      pulumi.String("accept"),
/// 					Description: pulumi.String("my-description"),
/// 					PortRange:   pulumi.String("80/80"),
/// 					IpProtocol:  pulumi.String("TCP"),
/// 					Priority:    pulumi.String("1"),
/// 					CidrIp:      pulumi.String("1.2.3.4/24"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nameRegex, err := eds.GetPolicyGroups(ctx, &eds.GetPolicyGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-policy"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdPolicyGroupId", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.eds.EcdPolicyGroup;
/// import com.pulumi.alicloud.eds.EcdPolicyGroupArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetPolicyGroupsArgs;
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
///         var default_ = new EcdPolicyGroup("default", EcdPolicyGroupArgs.builder()
///             .policyGroupName("my-policy-group")
///             .clipboard("read")
///             .localDrive("read")
///             .usbRedirect("off")
///             .watermark("off")
///             .authorizeAccessPolicyRules(EcdPolicyGroupAuthorizeAccessPolicyRuleArgs.builder()
///                 .description("my-description1")
///                 .cidrIp("1.2.3.45/24")
///                 .build())
///             .authorizeSecurityPolicyRules(EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs.builder()
///                 .type("inflow")
///                 .policy("accept")
///                 .description("my-description")
///                 .portRange("80/80")
///                 .ipProtocol("TCP")
///                 .priority("1")
///                 .cidrIp("1.2.3.4/24")
///                 .build())
///             .build());
///
///         final var nameRegex = EdsFunctions.getPolicyGroups(GetPolicyGroupsArgs.builder()
///             .nameRegex("^my-policy")
///             .build());
///
///         ctx.export("ecdPolicyGroupId", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:eds:EcdPolicyGroup
///     properties:
///       policyGroupName: my-policy-group
///       clipboard: read
///       localDrive: read
///       usbRedirect: off
///       watermark: off
///       authorizeAccessPolicyRules:
///         - description: my-description1
///           cidrIp: 1.2.3.45/24
///       authorizeSecurityPolicyRules:
///         - type: inflow
///           policy: accept
///           description: my-description
///           portRange: 80/80
///           ipProtocol: TCP
///           priority: '1'
///           cidrIp: 1.2.3.4/24
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eds:getPolicyGroups
///       arguments:
///         nameRegex: ^my-policy
/// outputs:
///   ecdPolicyGroupId: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_policy_groups_get_policy_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyGroupsResult> getPolicyGroups(
  GetPolicyGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getPolicyGroups:getPolicyGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyGroupsResult.fromMap(result);
}

/// This data source provides the Ecd Ram Directories of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.174.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.eds.getRamDirectories({
///     ids: ["example_id"],
/// });
/// export const ecdRamDirectoryId1 = ids.then(ids => ids.directories?.[0]?.id);
/// const nameRegex = alicloud.eds.getRamDirectories({
///     nameRegex: "^my-RamDirectory",
/// });
/// export const ecdRamDirectoryId2 = nameRegex.then(nameRegex => nameRegex.directories?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eds.get_ram_directories(ids=["example_id"])
/// pulumi.export("ecdRamDirectoryId1", ids.directories[0].id)
/// name_regex = alicloud.eds.get_ram_directories(name_regex="^my-RamDirectory")
/// pulumi.export("ecdRamDirectoryId2", name_regex.directories[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Eds.GetRamDirectories.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Eds.GetRamDirectories.Invoke(new()
///     {
///         NameRegex = "^my-RamDirectory",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdRamDirectoryId1"] = ids.Apply(getRamDirectoriesResult => getRamDirectoriesResult.Directories[0]?.Id),
///         ["ecdRamDirectoryId2"] = nameRegex.Apply(getRamDirectoriesResult => getRamDirectoriesResult.Directories[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eds.GetRamDirectories(ctx, &eds.GetRamDirectoriesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdRamDirectoryId1", ids.Directories[0].Id)
/// 		nameRegex, err := eds.GetRamDirectories(ctx, &eds.GetRamDirectoriesArgs{
/// 			NameRegex: pulumi.StringRef("^my-RamDirectory"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdRamDirectoryId2", nameRegex.Directories[0].Id)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetRamDirectoriesArgs;
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
///         final var ids = EdsFunctions.getRamDirectories(GetRamDirectoriesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ecdRamDirectoryId1", ids.directories()[0].id());
///         final var nameRegex = EdsFunctions.getRamDirectories(GetRamDirectoriesArgs.builder()
///             .nameRegex("^my-RamDirectory")
///             .build());
///
///         ctx.export("ecdRamDirectoryId2", nameRegex.directories()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getRamDirectories
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eds:getRamDirectories
///       arguments:
///         nameRegex: ^my-RamDirectory
/// outputs:
///   ecdRamDirectoryId1: ${ids.directories[0].id}
///   ecdRamDirectoryId2: ${nameRegex.directories[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_ram_directories_get_ram_directories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRamDirectoriesResult> getRamDirectories(
  GetRamDirectoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getRamDirectories:getRamDirectories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRamDirectoriesResult.fromMap(result);
}

/// This data source provides the Ecd Simple Office Sites of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.140.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.eds.getSimpleOfficeSites({
///     ids: ["example_id"],
///     status: "REGISTERED",
/// });
/// export const desktopAccessType = _default.then(_default => _default.sites?.[0]?.desktopAccessType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.get_simple_office_sites(ids=["example_id"],
///     status="REGISTERED")
/// pulumi.export("desktopAccessType", default.sites[0].desktop_access_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Eds.GetSimpleOfficeSites.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Status = "REGISTERED",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["desktopAccessType"] = @default.Apply(@default => @default.Apply(getSimpleOfficeSitesResult => getSimpleOfficeSitesResult.Sites[0]?.DesktopAccessType)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := eds.GetSimpleOfficeSites(ctx, &eds.GetSimpleOfficeSitesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Status: pulumi.StringRef("REGISTERED"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("desktopAccessType", _default.Sites[0].DesktopAccessType)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetSimpleOfficeSitesArgs;
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
///         final var default = EdsFunctions.getSimpleOfficeSites(GetSimpleOfficeSitesArgs.builder()
///             .ids("example_id")
///             .status("REGISTERED")
///             .build());
///
///         ctx.export("desktopAccessType", default_.sites()[0].desktopAccessType());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getSimpleOfficeSites
///       arguments:
///         ids:
///           - example_id
///         status: REGISTERED
/// outputs:
///   desktopAccessType: ${default.sites[0].desktopAccessType}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_simple_office_sites_get_simple_office_sites_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSimpleOfficeSitesResult> getSimpleOfficeSites(
  GetSimpleOfficeSitesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getSimpleOfficeSites:getSimpleOfficeSites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSimpleOfficeSitesResult.fromMap(result);
}

/// This data source provides the Ecd Snapshots of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.169.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.eds.getSnapshots({});
/// export const ecdSnapshotId1 = ids.then(ids => ids.snapshots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eds.get_snapshots()
/// pulumi.export("ecdSnapshotId1", ids.snapshots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Eds.GetSnapshots.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdSnapshotId1"] = ids.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eds.GetSnapshots(ctx, &eds.GetSnapshotsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdSnapshotId1", ids.Snapshots[0].Id)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetSnapshotsArgs;
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
///         final var ids = EdsFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .build());
///
///         ctx.export("ecdSnapshotId1", ids.snapshots()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getSnapshots
///       arguments: {}
/// outputs:
///   ecdSnapshotId1: ${ids.snapshots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_snapshots_get_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotsResult> getSnapshots(
  GetSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getSnapshots:getSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotsResult.fromMap(result);
}

/// This data source provides the Elastic Desktop Service (ECD) Users of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.eds.User("default", {
///     endUserId: "example_value",
///     email: "your_email",
///     phone: "your_phone",
///     password: "your_password",
/// });
/// const ids = alicloud.eds.getUsers({});
/// export const ecdUserId1 = ids.then(ids => ids.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.User("default",
///     end_user_id="example_value",
///     email="your_email",
///     phone="your_phone",
///     password="your_password")
/// ids = alicloud.eds.get_users()
/// pulumi.export("ecdUserId1", ids.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Eds.User("default", new()
///     {
///         EndUserId = "example_value",
///         Email = "your_email",
///         Phone = "your_phone",
///         Password = "your_password",
///     });
///
///     var ids = AliCloud.Eds.GetUsers.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["ecdUserId1"] = ids.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eds.NewUser(ctx, "default", &eds.UserArgs{
/// 			EndUserId: pulumi.String("example_value"),
/// 			Email:     pulumi.String("your_email"),
/// 			Phone:     pulumi.String("your_phone"),
/// 			Password:  pulumi.String("your_password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := eds.GetUsers(ctx, &eds.GetUsersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecdUserId1", ids.Users[0].Id)
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
/// import com.pulumi.alicloud.eds.User;
/// import com.pulumi.alicloud.eds.UserArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetUsersArgs;
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
///         var default_ = new User("default", UserArgs.builder()
///             .endUserId("example_value")
///             .email("your_email")
///             .phone("your_phone")
///             .password("your_password")
///             .build());
///
///         final var ids = EdsFunctions.getUsers(GetUsersArgs.builder()
///             .build());
///
///         ctx.export("ecdUserId1", ids.users()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:eds:User
///     properties:
///       endUserId: example_value
///       email: your_email
///       phone: your_phone
///       password: your_password
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eds:getUsers
///       arguments: {}
/// outputs:
///   ecdUserId1: ${ids.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}

/// This data source provides the available zones with the Elastic Desktop Service (ECD) of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.174.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.eds.getZones({});
/// export const alicloudEcdZones = _default.then(_default => _default.zones?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.get_zones()
/// pulumi.export("alicloudEcdZones", default.zones[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Eds.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEcdZones"] = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := eds.GetZones(ctx, &eds.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudEcdZones", _default.Zones[0].ZoneId)
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetZonesArgs;
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
///         final var default = EdsFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("alicloudEcdZones", default_.zones()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getZones
///       arguments: {}
/// outputs:
///   alicloudEcdZones: ${default.zones[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eds_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eds/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
