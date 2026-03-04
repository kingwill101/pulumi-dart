import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Provides a ECD Snapshot resource.
///
/// For information about ECD Snapshot and how to use it, see [What is Snapshot](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createsnapshot).
///
/// &gt; **NOTE:** Available since v1.169.0.
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
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultSimpleOfficeSite = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     enableAdminAccess: true,
///     desktopAccessType: "Internet",
///     officeSiteName: `${name}-${defaultInteger.result}`,
/// });
/// const defaultEcdPolicyGroup = new alicloud.eds.EcdPolicyGroup("default", {
///     policyGroupName: name,
///     clipboard: "read",
///     localDrive: "read",
///     usbRedirect: "off",
///     watermark: "off",
///     authorizeAccessPolicyRules: [{
///         description: name,
///         cidrIp: "1.2.3.45/24",
///     }],
///     authorizeSecurityPolicyRules: [{
///         type: "inflow",
///         policy: "accept",
///         description: name,
///         portRange: "80/80",
///         ipProtocol: "TCP",
///         priority: "1",
///         cidrIp: "1.2.3.4/24",
///     }],
/// });
/// const _default = alicloud.eds.getBundles({
///     bundleType: "SYSTEM",
/// });
/// const defaultDesktop = new alicloud.eds.Desktop("default", {
///     officeSiteId: defaultSimpleOfficeSite.id,
///     policyGroupId: defaultEcdPolicyGroup.id,
///     bundleId: _default.then(_default => _default.bundles?.[1]?.id),
///     desktopName: name,
/// });
/// const defaultSnapshot = new alicloud.eds.Snapshot("default", {
///     description: name,
///     desktopId: defaultDesktop.id,
///     snapshotName: name,
///     sourceDiskType: "SYSTEM",
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
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_simple_office_site = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     enable_admin_access=True,
///     desktop_access_type="Internet",
///     office_site_name=f"{name}-{default_integer['result']}")
/// default_ecd_policy_group = alicloud.eds.EcdPolicyGroup("default",
///     policy_group_name=name,
///     clipboard="read",
///     local_drive="read",
///     usb_redirect="off",
///     watermark="off",
///     authorize_access_policy_rules=[{
///         "description": name,
///         "cidr_ip": "1.2.3.45/24",
///     }],
///     authorize_security_policy_rules=[{
///         "type": "inflow",
///         "policy": "accept",
///         "description": name,
///         "port_range": "80/80",
///         "ip_protocol": "TCP",
///         "priority": "1",
///         "cidr_ip": "1.2.3.4/24",
///     }])
/// default = alicloud.eds.get_bundles(bundle_type="SYSTEM")
/// default_desktop = alicloud.eds.Desktop("default",
///     office_site_id=default_simple_office_site.id,
///     policy_group_id=default_ecd_policy_group.id,
///     bundle_id=default.bundles[1].id,
///     desktop_name=name)
/// default_snapshot = alicloud.eds.Snapshot("default",
///     description=name,
///     desktop_id=default_desktop.id,
///     snapshot_name=name,
///     source_disk_type="SYSTEM")
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultSimpleOfficeSite = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         EnableAdminAccess = true,
///         DesktopAccessType = "Internet",
///         OfficeSiteName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultEcdPolicyGroup = new AliCloud.Eds.EcdPolicyGroup("default", new()
///     {
///         PolicyGroupName = name,
///         Clipboard = "read",
///         LocalDrive = "read",
///         UsbRedirect = "off",
///         Watermark = "off",
///         AuthorizeAccessPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs
///             {
///                 Description = name,
///                 CidrIp = "1.2.3.45/24",
///             },
///         },
///         AuthorizeSecurityPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs
///             {
///                 Type = "inflow",
///                 Policy = "accept",
///                 Description = name,
///                 PortRange = "80/80",
///                 IpProtocol = "TCP",
///                 Priority = "1",
///                 CidrIp = "1.2.3.4/24",
///             },
///         },
///     });
///
///     var @default = AliCloud.Eds.GetBundles.Invoke(new()
///     {
///         BundleType = "SYSTEM",
///     });
///
///     var defaultDesktop = new AliCloud.Eds.Desktop("default", new()
///     {
///         OfficeSiteId = defaultSimpleOfficeSite.Id,
///         PolicyGroupId = defaultEcdPolicyGroup.Id,
///         BundleId = @default.Apply(@default => @default.Apply(getBundlesResult => getBundlesResult.Bundles[1]?.Id)),
///         DesktopName = name,
///     });
///
///     var defaultSnapshot = new AliCloud.Eds.Snapshot("default", new()
///     {
///         Description = name,
///         DesktopId = defaultDesktop.Id,
///         SnapshotName = name,
///         SourceDiskType = "SYSTEM",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSimpleOfficeSite, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:         pulumi.String("172.16.0.0/12"),
/// 			EnableAdminAccess: pulumi.Bool(true),
/// 			DesktopAccessType: pulumi.String("Internet"),
/// 			OfficeSiteName:    pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcdPolicyGroup, err := eds.NewEcdPolicyGroup(ctx, "default", &eds.EcdPolicyGroupArgs{
/// 			PolicyGroupName: pulumi.String(name),
/// 			Clipboard:       pulumi.String("read"),
/// 			LocalDrive:      pulumi.String("read"),
/// 			UsbRedirect:     pulumi.String("off"),
/// 			Watermark:       pulumi.String("off"),
/// 			AuthorizeAccessPolicyRules: eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs{
/// 					Description: pulumi.String(name),
/// 					CidrIp:      pulumi.String("1.2.3.45/24"),
/// 				},
/// 			},
/// 			AuthorizeSecurityPolicyRules: eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs{
/// 					Type:        pulumi.String("inflow"),
/// 					Policy:      pulumi.String("accept"),
/// 					Description: pulumi.String(name),
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
/// 		_default, err := eds.GetBundles(ctx, &eds.GetBundlesArgs{
/// 			BundleType: pulumi.StringRef("SYSTEM"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDesktop, err := eds.NewDesktop(ctx, "default", &eds.DesktopArgs{
/// 			OfficeSiteId:  defaultSimpleOfficeSite.ID(),
/// 			PolicyGroupId: defaultEcdPolicyGroup.ID(),
/// 			BundleId:      pulumi.String(_default.Bundles[1].Id),
/// 			DesktopName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewSnapshot(ctx, "default", &eds.SnapshotArgs{
/// 			Description:    pulumi.String(name),
/// 			DesktopId:      defaultDesktop.ID(),
/// 			SnapshotName:   pulumi.String(name),
/// 			SourceDiskType: pulumi.String("SYSTEM"),
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
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.EcdPolicyGroup;
/// import com.pulumi.alicloud.eds.EcdPolicyGroupArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetBundlesArgs;
/// import com.pulumi.alicloud.eds.Desktop;
/// import com.pulumi.alicloud.eds.DesktopArgs;
/// import com.pulumi.alicloud.eds.Snapshot;
/// import com.pulumi.alicloud.eds.SnapshotArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultSimpleOfficeSite = new SimpleOfficeSite("defaultSimpleOfficeSite", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .enableAdminAccess(true)
///             .desktopAccessType("Internet")
///             .officeSiteName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultEcdPolicyGroup = new EcdPolicyGroup("defaultEcdPolicyGroup", EcdPolicyGroupArgs.builder()
///             .policyGroupName(name)
///             .clipboard("read")
///             .localDrive("read")
///             .usbRedirect("off")
///             .watermark("off")
///             .authorizeAccessPolicyRules(EcdPolicyGroupAuthorizeAccessPolicyRuleArgs.builder()
///                 .description(name)
///                 .cidrIp("1.2.3.45/24")
///                 .build())
///             .authorizeSecurityPolicyRules(EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs.builder()
///                 .type("inflow")
///                 .policy("accept")
///                 .description(name)
///                 .portRange("80/80")
///                 .ipProtocol("TCP")
///                 .priority("1")
///                 .cidrIp("1.2.3.4/24")
///                 .build())
///             .build());
///
///         final var default = EdsFunctions.getBundles(GetBundlesArgs.builder()
///             .bundleType("SYSTEM")
///             .build());
///
///         var defaultDesktop = new Desktop("defaultDesktop", DesktopArgs.builder()
///             .officeSiteId(defaultSimpleOfficeSite.id())
///             .policyGroupId(defaultEcdPolicyGroup.id())
///             .bundleId(default_.bundles()[1].id())
///             .desktopName(name)
///             .build());
///
///         var defaultSnapshot = new Snapshot("defaultSnapshot", SnapshotArgs.builder()
///             .description(name)
///             .desktopId(defaultDesktop.id())
///             .snapshotName(name)
///             .sourceDiskType("SYSTEM")
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
///   defaultSimpleOfficeSite:
///     type: alicloud:eds:SimpleOfficeSite
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///       enableAdminAccess: true
///       desktopAccessType: Internet
///       officeSiteName: ${name}-${defaultInteger.result}
///   defaultEcdPolicyGroup:
///     type: alicloud:eds:EcdPolicyGroup
///     name: default
///     properties:
///       policyGroupName: ${name}
///       clipboard: read
///       localDrive: read
///       usbRedirect: off
///       watermark: off
///       authorizeAccessPolicyRules:
///         - description: ${name}
///           cidrIp: 1.2.3.45/24
///       authorizeSecurityPolicyRules:
///         - type: inflow
///           policy: accept
///           description: ${name}
///           portRange: 80/80
///           ipProtocol: TCP
///           priority: '1'
///           cidrIp: 1.2.3.4/24
///   defaultDesktop:
///     type: alicloud:eds:Desktop
///     name: default
///     properties:
///       officeSiteId: ${defaultSimpleOfficeSite.id}
///       policyGroupId: ${defaultEcdPolicyGroup.id}
///       bundleId: ${default.bundles[1].id}
///       desktopName: ${name}
///   defaultSnapshot:
///     type: alicloud:eds:Snapshot
///     name: default
///     properties:
///       description: ${name}
///       desktopId: ${defaultDesktop.id}
///       snapshotName: ${name}
///       sourceDiskType: SYSTEM
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getBundles
///       arguments:
///         bundleType: SYSTEM
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/snapshot:Snapshot example <id>
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The description of the Snapshot.
  late final pulumi.Output<String?> description;

  /// The ID of the Desktop.
  late final pulumi.Output<String> desktopId;

  /// The name of the Snapshot.
  late final pulumi.Output<String> snapshotName;

  /// The type of the disk for which to create a snapshot. Valid values: `SYSTEM`, `DATA`.
  late final pulumi.Output<String> sourceDiskType;

  /// The status of the snapshot.
  late final pulumi.Output<String> status;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_eds_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eds/snapshot:Snapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    desktopId = registerOutput<String>('desktopId');
    snapshotName = registerOutput<String>('snapshotName');
    sourceDiskType = registerOutput<String>('sourceDiskType');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eds/snapshot:Snapshot',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    desktopId = registerOutput<String>('desktopId');
    snapshotName = registerOutput<String>('snapshotName');
    sourceDiskType = registerOutput<String>('sourceDiskType');
    status = registerOutput<String>('status');
  }
}
