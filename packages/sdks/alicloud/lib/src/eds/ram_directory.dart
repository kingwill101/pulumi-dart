import 'package:pulumi/pulumi.dart' as pulumi;
import 'ram_directory_args.dart';
import 'ram_directory_state.dart';

/// Provides a ECD Ram Directory resource.
///
/// For information about ECD Ram Directory and how to use it, see [What is Ram Directory](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createramdirectory).
///
/// > **NOTE:** Available since v1.174.0.
///
/// > **DEPRECATED:** This resource has been deprecated from version `1.239.0`.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.eds.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     vswitchName: name,
/// });
/// const defaultRamDirectory = new alicloud.eds.RamDirectory("default", {
///     desktopAccessType: "INTERNET",
///     enableAdminAccess: true,
///     ramDirectoryName: name,
///     vswitchIds: [defaultSwitch.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.eds.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.ids[0],
///     vswitch_name=name)
/// default_ram_directory = alicloud.eds.RamDirectory("default",
///     desktop_access_type="INTERNET",
///     enable_admin_access=True,
///     ram_directory_name=name,
///     vswitch_ids=[default_switch.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.Eds.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         VswitchName = name,
///     });
///
///     var defaultRamDirectory = new AliCloud.Eds.RamDirectory("default", new()
///     {
///         DesktopAccessType = "INTERNET",
///         EnableAdminAccess = true,
///         RamDirectoryName = name,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := eds.GetZones(ctx, &eds.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Ids[0]),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewRamDirectory(ctx, "default", &eds.RamDirectoryArgs{
/// 			DesktopAccessType: pulumi.String("INTERNET"),
/// 			EnableAdminAccess: pulumi.Bool(true),
/// 			RamDirectoryName:  pulumi.String(name),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.eds.RamDirectory;
/// import com.pulumi.alicloud.eds.RamDirectoryArgs;
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
///         final var default = EdsFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.ids()[0])
///             .vswitchName(name)
///             .build());
///
///         var defaultRamDirectory = new RamDirectory("defaultRamDirectory", RamDirectoryArgs.builder()
///             .desktopAccessType("INTERNET")
///             .enableAdminAccess(true)
///             .ramDirectoryName(name)
///             .vswitchIds(defaultSwitch.id())
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
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.ids[0]}
///       vswitchName: ${name}
///   defaultRamDirectory:
///     type: alicloud:eds:RamDirectory
///     name: default
///     properties:
///       desktopAccessType: INTERNET
///       enableAdminAccess: true
///       ramDirectoryName: ${name}
///       vswitchIds:
///         - ${defaultSwitch.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Ram Directory can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/ramDirectory:RamDirectory example <id>
/// ```
class RamDirectory extends pulumi.CustomResource {
  /// The desktop access type. Valid values: `VPC`, `INTERNET`, `ANY`.
  late final pulumi.Output<String> desktopAccessType;
  /// Whether to enable public network access.
  late final pulumi.Output<bool> enableAdminAccess;
  /// Whether to grant local administrator rights to users who use cloud desktops.
  late final pulumi.Output<bool> enableInternetAccess;
  /// The name of the directory. The name must be 2 to 255 characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> ramDirectoryName;
  /// The status of directory.
  late final pulumi.Output<String> status;
  /// List of VSwitch IDs in the directory.
  late final pulumi.Output<List<String>> vswitchIds;

  /// Creates a new [RamDirectory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RamDirectory]. {@macro pulumi_eds_ram_directory_ram_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RamDirectory(
    String name, {
    RamDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/ramDirectory:RamDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desktopAccessType = registerOutput<String>('desktopAccessType');
    this.enableAdminAccess = registerOutput<bool>('enableAdminAccess');
    this.enableInternetAccess = registerOutput<bool>('enableInternetAccess');
    this.ramDirectoryName = registerOutput<String>('ramDirectoryName');
    this.status = registerOutput<String>('status');
    this.vswitchIds = registerOutput<List<String>>('vswitchIds');
  }

  /// Gets an existing [RamDirectory] resource's state with the given [name] and [id].
  static RamDirectory get(
    String name,
    pulumi.Input<String> id, {
    RamDirectoryState? state,
  }) {
    return RamDirectory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RamDirectory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/ramDirectory:RamDirectory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desktopAccessType = registerOutput<String>('desktopAccessType');
    this.enableAdminAccess = registerOutput<bool>('enableAdminAccess');
    this.enableInternetAccess = registerOutput<bool>('enableInternetAccess');
    this.ramDirectoryName = registerOutput<String>('ramDirectoryName');
    this.status = registerOutput<String>('status');
    this.vswitchIds = registerOutput<List<String>>('vswitchIds');
  }
}
